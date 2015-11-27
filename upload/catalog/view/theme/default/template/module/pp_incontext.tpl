<div class="panel panel-default">
<div class="panel-body" style="text-align: right;">
	<a id="t1" href="<?php echo $payment_url;?>" >
		<img class="paypal-button-hidden" src="https://www.paypal.com/en_US/i/btn/btn_xpressCheckout.gif" alt="Check out with PayPal" />
	</a>
</div>
</div>
<script>
        window.paypalCheckoutReady = function() {
            paypal.checkout.setup('XXX', {
            	environment: 'sandbox',
                button: ['t1','t2']
            });
        }
		
		
    </script>
</body>

<script>

$( window ).load(function() {
  $('.panel-default').on("click",function(){
	$('#collapse-checkout-confirm .pull-right a').attr('href',document.location.pathname+"?route=payment/pp_express/checkout");
	$('#collapse-checkout-confirm .pull-right a').attr('class','');
	$('#collapse-checkout-confirm .pull-right a').attr('id','t2');
	$('#collapse-checkout-confirm .pull-right a').text('');
	$('#collapse-checkout-confirm .pull-right a').prepend('<img class="paypal-button-hidden" src="https://www.paypal.com/en_US/i/btn/btn_xpressCheckout.gif" alt="Check out with PayPal" /><div class="append_js"></div>');
		$('#button-payment-method').on("click",function(){
			window.setTimeout( includejs, 1000 );
		});
		function includejs() {
			var s = document.createElement("script");
			s.type = "text/javascript";
			s.src = "catalog/view/javascript/checkout.js";
			if($('.append_js').html() === '') {
				$("#collapse-checkout-confirm .pull-right .append_js").append(s);
			}	
		}
	
 });
});

</script>
<script type="text/javascript" src="catalog/view/javascript/checkout.js"></script>