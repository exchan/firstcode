@extends('layouts.main')
@section('title')
AllCryptoCoinMarket Voting
@stop
@section('body')

	

<div class="container">
  <div id="voting" class="content">
      <h1>Coin Voting</h1>
<p>You can vote for adding coin to our exchange here by depositing MineGoldCoin(MGC) to it's address.<br> Coin dev must provide block explorer, website or forum thread with wallet links including source code link (github preferrable).<br> We are adding 1 winner coin each 7 days. MineGoldCoin(MGC) sent to voting address are non-refundable.
To add new coin please <a href='#'><strong>Click Here</strong></a>
</p>
<h2>Round end in</h2>
<div class='countdown' data-date="2018-1-18"></div>
<br>
<strong>Last 10 Winner coins:</strong> <a href="https://globecryptomarkets.com/market/150">Agricoin(AGC)</a>
<br>
      <!-- We're always looking to add new markets for the best altcoins, and to help us with this we'd like to ask you, our users to vote on what you'd like to see offered at MintPal.<br><br>
      Below is a list of coins that we're considering adding, ordered by the most voted. Please vote for your chosen coin below, due to the recent abuse of the system by bots, only registered users with a trade history are permitted to vote for coins. Every user is limited to <strong>5 (five)</strong> votes per hour.<br><br>
      We're also accepting payment votes! We've put a lot of time and capital in to making the exchange, and we believe it's only right to let users show their confidence in new coins by allowing them to use their wallets. Each <strong>0.00010000 BTC</strong> received will count for 1 vote. All payment votes will be publicly visible, as you can see by clicking the addresses below, and will go directly to improving MintPal's infrastructure. Payment votes are automatically credited every 15 minutes after 1 network confirm.<br><br>
      Although the majority of new markets will come from the voting system, we reserve the right to add new markets outside of the system where we feel necessary. Have a new coin that isn't on the list? Please contact us at support [@] mintpal.com and we'll get the coin added.
      <br><br> -->
      <table class="table striped hovered">
          <thead>
            <tr>
                <th>{{{ trans('texts.coin_code')}}}</th>
                <th>{{{ trans('texts.coin_name')}}}</th>
                <th>Website/Bitcointalk</th>
                <th>MGC payment address</th>
                <th>Votes(1 vote = 100MGC)</th>              
            </tr>
          </thead>
          <tbody>        
              @foreach($coinvotes as $coinvote)
              <tr>
                <td>{{$coinvote->code}}</td>
                <td>{{$coinvote->name}}</td>
                <td><a href="{{$coinvote->siteinfo}}" target="_blank">{{$coinvote->siteinfo}}</td>
                <td><input id="address" style="font-weight: bold; font-size: 14px; min-width:400px;border-radius:5px;border:none;padding:5px;" value="{{$coinvote->btc_address}}" readonly></td>
                <td><span id="numvote_{{$coinvote->id}}">@if(isset($coinvote->num_vote)) {{$coinvote->num_vote}} @else 0 @endif</span> @if ( !Auth::guest() ) @endif</td>
              </tr>
              @endforeach
          </tbody>
      </table>
  </div>
</div>
@stop
@section('script.footer')
@parent
<script type="text/javascript">

(function ( $ ) {
	function pad(n) {
	    return (n < 10) ? ("0" + n) : n;
	}

	$.fn.showclock = function() {
	    
	    var currentDate=new Date();
	    var fieldDate=$(this).data('date').split('-');
	    var futureDate=new Date(fieldDate[0],fieldDate[1]-1,fieldDate[2]);
	    var seconds=futureDate.getTime() / 1000 - currentDate.getTime() / 1000;

	    if(seconds<=0 || isNaN(seconds)){
	    	this.hide();
	    	return this;
	    }

	    var days=Math.floor(seconds/86400);
	    seconds=seconds%86400;
	    
	    var hours=Math.floor(seconds/3600);
	    seconds=seconds%3600;

	    var minutes=Math.floor(seconds/60);
	    seconds=Math.floor(seconds%60);
	    
	    var html="";

	    if(days!=0){
		    html+="<div class='countdown-container days'>"
		    	html+="<span class='countdown-heading days-top'>Days</span>";
		    	html+="<span class='countdown-value days-bottom'>"+pad(days)+"</span>";
		    html+="</div>";
		}

	    html+="<div class='countdown-container hours'>"
	    	html+="<span class='countdown-heading hours-top'>Hours</span>";
	    	html+="<span class='countdown-value hours-bottom'>"+pad(hours)+"</span>";
	    html+="</div>";

	    html+="<div class='countdown-container minutes'>"
	    	html+="<span class='countdown-heading minutes-top'>Minutes</span>";
	    	html+="<span class='countdown-value minutes-bottom'>"+pad(minutes)+"</span>";
	    html+="</div>";

	    html+="<div class='countdown-container seconds'>"
	    	html+="<span class='countdown-heading seconds-top'>Seconds</span>";
	    	html+="<span class='countdown-value seconds-bottom'>"+pad(seconds)+"</span>";
	    html+="</div>";

	    this.html(html);
	};

	$.fn.countdown = function() {
		var el=$(this);
		el.showclock();
		setInterval(function(){
			el.showclock();	
		},1000);
		
	}

}(jQuery));

jQuery(document).ready(function(){
	if(jQuery(".countdown").length>0)
		jQuery(".countdown").countdown();
})




function voteNow(coinvote_id){         
      $.post('<?php echo action('VoteCoinController@doVoting')?>', {isAjax: 1, coinvote_id: coinvote_id}, function(response){
          var obj = $.parseJSON(response);
          console.log('obj: ',obj);
          if(obj.status == 'success'){
            $.Dialog({
              shadow: true,
              overlay: false,
              draggable: true,
              icon: '',
              title: 'Message',
              width: 500,
              padding: 10,
              content: 'This Window is draggable by caption.',
              sysButtons: {                 
                  btnClose: true
              },
              sysBtnCloseClick: function(e){
                  location.reload();
              },              
              onShow: function(){
                  //$.Dialog.title();
                  $.Dialog.content('<p style="color:#008B5D; font-weight:bold;text-align:center;">'+obj.message+'</p>');
              }

            });
          }else{            
            $.Dialog({
              shadow: true,
              overlay: false,
              draggable: true,
              icon: '',
              title: 'Message',
              width: 500,
              padding: 10,
              content: 'This Window is draggable by caption.',              
              onShow: function(){                  
                  $.Dialog.content('<p style="color:red; font-weight:bold;text-align:center;">'+obj.message+'</p>');
              }
              });
          }
          
      });
      return false;
}
</script>
@stop