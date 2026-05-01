import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../custom_shape/containers/rounded_container.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? TColors.dark : TColors.white,
      padding: EdgeInsets.only(top: TSizes.sm, bottom: TSizes.sm, right: TSizes.sm, left: TSizes.sm),
      child: Row(
        children: [
          //text field
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Have a promo code ? Enter here",
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none
              ),
            ),
          ),
          //button
          SizedBox(
              width: 80,
              child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: dark ? TColors.white.withOpacity(0.5) :TColors.dark.withOpacity(0.5),
                      backgroundColor: TColors.grey.withOpacity(0.2),
                      side: BorderSide(color: TColors.grey.withOpacity(0.1))
                  ),
                  child: Text('Apply'))
          ),
        ],
      ),

    );
  }
}