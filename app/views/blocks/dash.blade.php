<div class="dashhead"><img src="{{ asset('assets/img/btc.png') }}" border="0" height="50px" style="display: inline-block;" /> <h2>BTC Markets</h2></div>
<ul class="market dnl-nav">
<div class="nav-scroll">

<li class="title"><span class="name">COIN</span><span class="price">PRICE</span><span class="change">CHANGE</span></li>
@foreach($btc_markets as $btc_market)
<?php
	$total_btc = isset($btc_datainfo[$btc_market->id]['total'])? $btc_datainfo[$btc_market->id]['total']:0;
	$curr_price = isset($btc_datainfo[$btc_market->id][0]['price'])? $btc_datainfo[$btc_market->id][0]['price']:0;
	$pre_price = isset($btc_datainfo[$btc_market->id][1]['price'])? $btc_datainfo[$btc_market->id][1]['price']:0;
	$change = ($pre_price!=0)? sprintf('%.2f',(($curr_price-$pre_price)/$pre_price)*100):100;
	//echo "Cur: ".$curr_price." -- Pre: ".$pre_price;
	//if($change>0) $change = '+'.$change;
?>
<li><a href="{{{ URL::to('/market/') }}}/{{$btc_market->id}}" id="volume-{{$btc_market->id}}" title="Vol: {{sprintf('%.8f',$total_btc)}} BTC" alt="Vol: {{sprintf('%.8f',$total_btc)}} BTC"><span class="name"><img src="{{ asset('assets/img') }}/{{$btc_market->type}}.png" height="20px" />  {{$btc_market->type}}</span>
	<span class="price" yesterdayPrice="{{sprintf('%.8f',$pre_price)}}" id="spanPrice-{{$btc_market->id}}">{{sprintf('%.8f',$curr_price)}}</span>
	@if($change>=0)
	<span class="change up" id="spanChange-{{$btc_market->id}}">+{{$change}}%</span>
	@else
	<span class="change down" id="spanChange-{{$btc_market->id}}">{{$change}}%</span>
	@endif</a>
	</li>
@endforeach
</div>
</ul>

<div class="dashhead"><img src="{{ asset('assets/img/ltc.png') }}" border="0" height="50px" style="display: inline-block;" /> <h2>LTC Markets</h2></div>
<ul class="market dnl-nav">
<div class="nav-scroll">

<li class="title"><span class="name">COIN</span><span class="price">PRICE</span><span class="change">CHANGE</span></li>
	@foreach($ltc_markets as $ltc_market)
	<?php
		$total_ltc = isset($ltc_datainfo[$ltc_market->id]['total'])? $ltc_datainfo[$ltc_market->id]['total']:0;
		$curr_price = isset($ltc_datainfo[$ltc_market->id][0]['price'])? $ltc_datainfo[$ltc_market->id][0]['price']:0;
		$pre_price = isset($ltc_datainfo[$ltc_market->id][1]['price'])? $ltc_datainfo[$ltc_market->id][1]['price']:0;
		$change = ($pre_price!=0)? sprintf('%.2f',(($curr_price-$pre_price)/$pre_price)*100):0;
	?>
	<li><a href="{{{ URL::to('/market/') }}}/{{$ltc_market->id}}" id="volume-{{$ltc_market->id}}" title="Vol: {{sprintf('%.8f',$total_ltc)}} LTC" alt="Vol: {{sprintf('%.8f',$total_ltc)}} LTC"><span class="name"><img src="{{ asset('assets/img') }}/{{$ltc_market->type}}.png" height="20px" />  {{$ltc_market->type}}</span>
		<span class="price" yesterdayPrice="{{sprintf('%.8f',$pre_price)}}" id="spanPrice-{{$ltc_market->id}}">{{sprintf('%.8f',$curr_price)}}</span>
		@if($change>=0)
		<span class="change up" id="spanChange-{{$ltc_market->id}}">+{{$change}}%</span>
		@else
		<span class="change down" id="spanChange-{{$ltc_market->id}}">{{$change}}%</span>
		@endif</a>
		</li>
	@endforeach
</div>
</ul>

<div class="dashhead"><img src="{{ asset('assets/img/DOGE.png') }}" border="0" height="50px" style="display: inline-block;" /> <h2>DOGE Markets</h2></div>
<ul class="market dnl-nav">
<div class="nav-scroll">

<li class="title"><span class="name">COIN</span><span class="price">PRICE</span><span class="change">CHANGE</span></li>
	@foreach($doge_markets as $doge_market)
	<?php
		$total_doge = isset($doge_datainfo[$doge_market->id]['total'])? $doge_datainfo[$doge_market->id]['total']:0;
		$curr_price = isset($doge_datainfo[$doge_market->id][0]['price'])? $doge_datainfo[$doge_market->id][0]['price']:0;
		$pre_price = isset($doge_datainfo[$doge_market->id][1]['price'])? $doge_datainfo[$doge_market->id][1]['price']:0;
		$change = ($pre_price!=0)? sprintf('%.2f',(($curr_price-$pre_price)/$pre_price)*100):0;
	?>
	<li><a href="{{{ URL::to('/market/') }}}/{{$doge_market->id}}" id="volume-{{$doge_market->id}}" title="Vol: {{sprintf('%.8f',$total_doge)}} DOGE" alt="Vol: {{sprintf('%.8f',$total_doge)}} DOGE"><span class="name"><img src="{{ asset('assets/img') }}/{{$doge_market->type}}.png" height="20px" />  {{$doge_market->type}}</span>
		<span class="price" yesterdayPrice="{{sprintf('%.8f',$pre_price)}}" id="spanPrice-{{$doge_market->id}}">{{sprintf('%.8f',$curr_price)}}</span>
		@if($change>=0)
		<span class="change up" id="spanChange-{{$doge_market->id}}">+{{$change}}%</span>
		@else
		<span class="change down" id="spanChange-{{$doge_market->id}}">{{$change}}%</span>
		@endif</a>
		</li>     
	@endforeach
</div>
</ul>

<?php
$number_btc = isset($statistic_btc->number_trade)? $statistic_btc->number_trade:0;
$volumn_btc = (isset($statistic_btc->total) && !empty($statistic_btc->total))? sprintf('%.8f',$statistic_btc->total):0;
$number_ltc = isset($statistic_ltc->number_trade)? sprintf('%.8f',$statistic_ltc->number_trade):0;
$volumn_ltc = (isset($statistic_ltc->total) && !empty($statistic_ltc->total))? sprintf('%.8f',$statistic_ltc->total):0;
$number_doge = isset($statistic_doge->number_trade)? sprintf('%.8f',$statistic_doge->number_trade):0;
$volumn_doge = (isset($statistic_doge->total) && !empty($statistic_doge->total))? sprintf('%.8f',$statistic_doge->total):0;
?>
<div class="dashhead"><h2 style="padding-left:5px;"><i class="fa fa-bar-chart"></i> 24 Hour Stats</h2></div>
<ul class="market stats" style="color: #FFF;">
<li>BTC Volume<span class="change">{{$volumn_btc}} BTC</span></li>
<li>LTC Volume<span class="change">{{$volumn_ltc}} LTC</span></li>
<li>DOGE Volume<span class="change">{{$volumn_doge}} DOGE</span></li>
<li>Number of Trades<span class="change">{{$number_doge+$number_ltc+$number_btc}}</span></li>
</ul>

<br><br>
<div class='chat'>
<script id="cid0020000172881401345" data-cfasync="false" async src="//st.chatango.com/js/gz/emb.js" style="width: 302px;height: 471px;">{"handle":"globecryptomarket","arch":"js","styles":{"a":"0084ef","b":100,"c":"FFFFFF","d":"FFFFFF","k":"0084ef","l":"0084ef","m":"0084ef","n":"FFFFFF","p":"10","q":"0084ef","r":100,"fwtickm":1}}</script>
</div>
<div class="nav-scroll">
<div class='twitter'>
<a class="twitter-timeline" href="https://twitter.com/globe_markets?ref_src=twsrc%5Etfw">Tweets by globe_markets</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script> 
</div>
</div>

