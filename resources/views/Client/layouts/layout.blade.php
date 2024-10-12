<!DOCTYPE html>
<html style="overflow-x: hidden;" lang="{{ lang() }}">
    <head>
        @include('Client.layouts.css')
    </head>
    <style>
    body{
               padding-right: auto !important;

    }
      .padding-div{
          padding-top:79px;
      }
      @media only screen and (max-width: 991px) {
      .padding-div{
          padding-top:68px;
      }
            .padding-div{
          padding-top:60px;
      }
}
      @media only screen and (max-width: 500px) {

            .padding-div{
          padding-top:58px;
      }
      
      
      .product_card p, .product_card .product_title{
          font-size: 15px;
      }
      
      
}
    </style>
    <body style="overflow-x: hidden;direction:{{ lang('en') ? 'ltr' : 'rtl' }}">

        <div class="loading-screen  position-fixed top-0 start-0 end-0 bottom-0 bg-black justify-content-center align-items-center">
            <i class="fa fa-spinner fa-spin fa-5x"></i>
        </div>

        @include('Client.layouts.header')
        <div class="padding-div" ></div>
        @yield('content')
        @include('Client.layouts.footer')
        @include('Client.layouts.js')

    </body>
</html>