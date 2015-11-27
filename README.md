########################################
#         PayPal Incontext        		#
#         INSTALL INSTRUCTIONS     	  #
#   							                    #
#        								              #
########################################

Prerequisite: ENABLE PAYPAL EXPRESS CHECKOUT MODULE BEFORE ENABLING THIS MODULE.

1. Upload the CONTENTS of the 'upload' folder to your Opencart directory!

2. Login to Opencart, go to Extensions -> Modules -> PayPal Express Checkout Incontext Button- > "Install"

3. This module will use the API credentials that is set in PayPal Express Checkout module.

4. Your Done! 
             
             
             Currently there is an existing issue with the PayPal Express checkout module(that comes by default) only in 2.1.0.1
             https://github.com/opencart/opencart/issues/3626#issuecomment-157746044
             
             To overcome this, you will need to update opencart-2.1.0.1\upload\catalog\controller\payment\pp_express.php
             
             Sadly, there is no vqmod supported for 2.1.0.1
             https://github.com/vqmod/vqmod/wiki/Installing-vQmod-on-OpenCart
