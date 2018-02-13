<?php

class IndexController extends BaseController {

  /*
  |--------------------------------------------------------------------------
  | Default Index Controller
  |--------------------------------------------------------------------------
  |
  | You may wish to use controllers instead of, or in addition to, Closure
  | based routes. That's great! Here is an example controller method to
  | get you started. To route to this controller, just add the route:
  |
  |	Route::get('/', 'IndexController@index');
  |
  */


  public function index($market_id=''){
    $setting = new Setting;
    $wallet = new Wallet();
    $m = Market::where('active',1)->orderBy('id')->first();
    if($market_id == ''){
      $market_id = $setting->getSetting('default_market',$m->id);
    }
    Session::put('market_id', $market_id);
    $market_default = Market::find($market_id);
    if(!isset($market_default->active) || $market_default->active==0){
      //$setting->setSetting('default_market',$m->id);
      return Redirect::to('market/'.$m->id);
    }
    $wallet_from = $market_default->wallet_from;
    $wallet_to = $market_default->wallet_to;
    $from = strtoupper($wallet->getType($wallet_from));
    $to = strtoupper($wallet->getType($wallet_to));
    //get limit amount
    $limit_day = WalletTimeLimitTrade::select('limit_amount')->where('wallet_id',$wallet_to)->where('time_limit','per day')->first();
    if(isset($limit_day))$data['limit_day'] = $limit_day->limit_amount;
    else $data['limit_day'] = 10000000;
    $limit_week = WalletTimeLimitTrade::select('limit_amount')->where('wallet_id',$wallet_to)->where('time_limit','per week')->first();
    if(isset($limit_week))$data['limit_week'] = $limit_week->limit_amount;
    else $data['limit_week'] = 10000000;
    //get amount : day

    $user = Confide::user();
    if(isset($user)){
      $uid = $user->id;
      $select = "SELECT sum(t.to_value) as sumamount from orders t, market m where m.id=t.market_id and m.wallet_to=".$wallet_to." and t.user_id=".$uid." and t.created_at='".date("Y-m-d")."'";
      $selectsum = DB::select($select);
      $sumamount = $selectsum[0]->sumamount;
      $data['amount_sum_day'] = $sumamount;
    }
    if(!isset($data['amount_sum_day'])) $data['amount_sum_day'] = 0;
    //echo 'aaaaaaaaaaa:'; print_r($data['amount_sum_day']);
    //get name of wallet
    $wallet1=Wallet::where('id',$wallet_from)->first();
    $wallet2=Wallet::where('id',$wallet_to)->first();
    $data['market_from']=$wallet1->name;
    $data['market_to']=$wallet2->name;

    $data['coinmain'] = $from;
    $data['coinsecond'] = $to;
    //get balance
    $balance = new Balance();
    $data['balance_coinmain'] = sprintf('%.8f',$balance->getBalance($wallet_from,0));
    $data['balance_coinsecond'] = sprintf('%.8f',$balance->getBalance($wallet_to,0));

    //get Sell Lowest
    $data['sell_lowest'] = sprintf('%.8f',0);
    $data['buy_highest'] = sprintf('%.8f',0);
    $order = new Order();

    $sell_lowest = $order->getSellLowest($market_id);
    $buy_highest = $order->getBuyHighest($market_id);
    if(isset($sell_lowest->price)) $data['sell_lowest'] = sprintf('%.8f',$sell_lowest->price);
    if(isset($buy_highest->price)) $data['buy_highest'] = sprintf('%.8f',$buy_highest->price);

    //fee_buy, fee_sell
    $fee_trade = new FeeTrade();
    $fee = $fee_trade->getFeeTrade($market_id);
    $data['fee_buy'] = $fee['fee_buy'];
    $data['fee_sell'] = $fee['fee_sell'];

    //get list orders
    $num_transaction_display = $setting->getSetting('num_transaction_display',0);
    $list_sell_orders = $order->getOrders($market_id,'sell',$num_transaction_display);
    $list_buy_orders = $order->getOrders($market_id,'buy',$num_transaction_display);
    $data['sell_orders'] = $list_sell_orders;
    $data['buy_orders'] = $list_buy_orders;

    //get all history
    $trade_history =Trade::where('market_id', '=', $market_id)->orderBy('created_at', 'desc')->take($num_transaction_display)->get();
    $data['trade_history'] = $trade_history;
    $data['market_id']=$market_id;

    $current_orders_user = $order->getCurrentOrdersUser($market_id);
    if($current_orders_user){
      $data['current_orders_user'] = $current_orders_user;
    }

    $trade = new Trade();
    $datachart = $trade->getDatasChart($market_id,'6 hour');
    $news = Post::where('type','news')->take(5)->orderby('created_at','desc')->get();
    $data['news'] = $news;

    //price
    $data_price = $trade->getBlockPrice($market_id);
    $data["get_prices"] = $data_price['get_prices'];
    $data['lastest_price'] = $data_price['lastest_price'];

    //limit trade amount
    $limit_trade = WalletLimitTrade::where('wallet_id',$wallet_from)->first();

    if($limit_trade) $data['limit_trade']=$limit_trade->toArray();
    else $data['limit_trade']=array('min_amount'=>0.0001,'max_amount'=>10000000);

    //get data for block statistic
    $btc_wallet = Wallet::where('type','BTC')->first();
    $ltc_wallet = Wallet::where('type','LTC')->first();
    $doge_wallet = Wallet::where('type','DOGE')->first();
    $btc_markets = array();
    $ltc_markets = array();
    $doge_markets = array();

    //btc market on sidebar left
    $all_market_btc = array();
    if(isset($btc_wallet->id)){
      $btc_markets = Market::leftJoin('wallets', 'market.wallet_from', '=', 'wallets.id')
                      ->select('market.*', 'wallets.name', 'wallets.type')->where('wallet_to',$btc_wallet->id)->orderby('wallets.type')->get();
          $btc_datainfo = array();
          foreach ($btc_markets as$value) {
            $all_market_btc[]=$value->id;
            $btc_datainfo[$value->id] = Trade::where('market_id',$value->id)->orderby('created_at','desc')->take(2)->get()->toArray();
         //      	$total_btc = DB::table('trade_history')->select(DB::raw('SUM( amount * price ) AS total'))
        //                  ->where('market_id', '=', $value->id)->first();
        //              //echo "<pre>total_btc: "; print_r($total_btc); echo "</pre>";
        //              //echo "<pre>getQueryLog: ".dd(DB::getQueryLog())."</pre>";
        // if(isset($total_btc->total))
        // 	$ltc_datainfo[$value->id]['total'] = $total_btc->total;
        $select="SELECT SUM( amount * price ) AS total FROM trade_history Where `market_id`='".$value->id."' GROUP BY market_id";
        $total_btc = DB::select($select);
        if(isset($total_btc[0]))
          $btc_datainfo[$value->id]['total'] = $total_btc[0]->total;
        else $btc_datainfo[$value->id]['total'] = 0;
          }

          $data['btc_datainfo']=$btc_datainfo;
    }

    //ltc market on sidebar left
    $all_market_ltc = array();
    if(isset($ltc_wallet->id)){
      $ltc_markets = Market::leftJoin('wallets', 'market.wallet_from', '=', 'wallets.id')
                      ->select('market.*', 'wallets.name', 'wallets.type')->where('wallet_to',$ltc_wallet->id)->orderby('wallets.type')->get();
          $ltc_datainfo = array();
          foreach ($ltc_markets as$value) {
            $all_market_ltc[]=$value->id;
            $ltc_datainfo[$value->id] = Trade::where('market_id',$value->id)->orderby('created_at','desc')->take(2)->get()->toArray();
        // $total_ltc = DB::table('trade_history')->select(DB::raw('SUM( amount * price ) AS total'))
        //                  ->where('market_id', '=', $value->id)->first();
        // if(isset($total_ltc->total))
        // 	$ltc_datainfo[$value->id]['total'] = $total_ltc->total;
        $select="SELECT SUM( amount * price ) AS total FROM trade_history Where `market_id`='".$value->id."' GROUP BY market_id";
        $total_ltc = DB::select($select);
        if(isset($total_ltc[0]))
          $ltc_datainfo[$value->id]['total'] = $total_ltc[0]->total;
        else $ltc_datainfo[$value->id]['total'] = 0;
          }
          $data['ltc_datainfo']=$ltc_datainfo;
      }

//doge market on sidebar left
    $all_market_doge = array();
    if(isset($doge_wallet->id)){
      $doge_markets = Market::leftJoin('wallets', 'market.wallet_from', '=', 'wallets.id')
                      ->select('market.*', 'wallets.name', 'wallets.type')->where('wallet_to',$doge_wallet->id)->orderby('wallets.type')->get();
          $doge_datainfo = array();
          foreach ($doge_markets as$value) {
            $all_market_doge[]=$value->id;
            $doge_datainfo[$value->id] = Trade::where('market_id',$value->id)->orderby('created_at','desc')->take(2)->get()->toArray();
        // $total_doge = DB::table('trade_history')->select(DB::raw('SUM( amount * price ) AS total'))
        //                  ->where('market_id', '=', $value->id)->first();
        // if(isset($total_doge->total))
        // 	$doge_datainfo[$value->id]['total'] = $total_doge->total;
        $select="SELECT SUM( amount * price ) AS total FROM trade_history Where `market_id`='".$value->id."' GROUP BY market_id";
        $total_doge = DB::select($select);
        if(isset($total_doge[0]))
          $doge_datainfo[$value->id]['total'] = $total_doge[0]->total;
        else $doge_datainfo[$value->id]['total'] = 0;
          }
          $data['doge_datainfo']=$doge_datainfo;
      }

      $data['btc_markets']=$btc_markets;
      $data['ltc_markets']=$ltc_markets;
      $data['doge_markets']=$doge_markets;

    $date = date( "Y-m-d H:i:s", strtotime( " -24 hour" ));
    //echo "+24 hours: ".$date;

    if(!empty($all_market_btc)){
      $data['statistic_btc']=DB::table('trade_history')->select(DB::raw('COUNT(*) as number_trade,SUM( amount * price ) AS total'))->where('created_at', '>=', $date)->whereIn('market_id', $all_market_btc)->first();
    }
    if(!empty($all_market_ltc)){
      $data['statistic_ltc']=DB::table('trade_history')->select(DB::raw('COUNT(*) as number_trade,SUM( amount * price ) AS total'))->where('created_at', '>=', $date)->whereIn('market_id', $all_market_ltc)->first();
    }
    
    if(!empty($all_market_doge)){
      $data['statistic_doge']=DB::table('trade_history')->select(DB::raw('COUNT(*) as number_trade,SUM( amount * price ) AS total'))->where('created_at', '>=', $date)->whereIn('market_id', $all_market_doge)->first();
    }

    $data['wallets']=Wallet::orderby('type')->get();
    return View::make('index',$data);
  }
}
?>
