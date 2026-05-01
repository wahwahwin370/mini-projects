import 'package:ecommerce_app/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce_app/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:ecommerce_app/navigation_menu.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/cupon_widget.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../cart/widgets/cart_items.dart';
import 'widgets/billing_address_section.dart';
import 'widgets/billing_payment_section.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall,), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Items in Cart
              TCartItems(showAddRemoveButtons: false),
              SizedBox(height: TSizes.spaceBtwSections,),

              // --cupon textfield
              TCouponCode(),
              SizedBox(height: TSizes.spaceBtwSections,),


              //billing section
              TRoundedContainer(
                showBorder: true,
                padding: EdgeInsets.all(TSizes.md),
                backgroundColor: dark? TColors.black : TColors.white,
                child: Column(
                  children: [

                    //price
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems,),
                    // divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems,),
                    // payment methods
                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems,),
                    //payment address
                    TBillingAddressSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () =>
          Get.to(
              ()=> SuccessScreen(
                  image: TImages.successfullyRegisterAnimation, 
                  title: 'Payment Successful', 
                  subTitle: "Your item will be shipped soon!", 
                  onPressed: ()=> Get.offAll(()=> const NavigationMenu())
              )
          ),
          child: Text('Checkout \$256'),),
      ),
    );
  }
}


