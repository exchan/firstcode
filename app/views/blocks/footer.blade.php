</div>
</div>
</div>
<div class="footer">
<div class="row rowfooter m-auto">
    <div class="col-md-4">
            <h2 class="title">News</h2>
          <ul>
 <li>{{ HTML::link('page/all-trades', trans('News'), array('class' => Request::is('page/all-trades')?'active':'')) }}</li>
                  </ul>
    </div>
<div class="col-md-4">
        <h2 class="title">Data</h2>
        <ul>
            <li>{{ HTML::link('page/all-trades', trans('Order Book'), array('class' => Request::is('page/all-trades')?'active':'')) }}</li>
            <li>{{ HTML::link('page/api', trans('user_texts.api'), array('class' => Request::is('page/api')?'active':'')) }}</li>
        </ul>
</div>
<div class="col-md-4">
        <h2 class="title">About</h2>
        <ul>

            <li>{{ HTML::link('post/cookie-statement-2', trans('Cookie Statement'), array('class' => Request::is('post/cookie-statement-2')?'active':'')) }}</li>
            <li>{{ HTML::link('page/fees', trans('Fee Schedule'), array('class' => Request::is('page/fees')?'active':'')) }}</li>
        </ul>
</div> 
</div>

<div class="text-center">Copyright GlobeCryptoMarkets &copy; 2017. All Rights Reserved.</div>
</div>
 