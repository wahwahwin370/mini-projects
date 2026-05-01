import 'package:ecommerce_app/common/widgets/custom_shape/containers/circular_container.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key, required this.text, required this.selected, this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
          label: isColor ? const SizedBox() :  Text(text),
          selected: selected,
          onSelected: onSelected,
          labelStyle: TextStyle(color: selected ? TColors.white : null),
          avatar: isColor ? TCircularContainer(width: 50, height: 50, backgroundColor: THelperFunctions.getColor(text)!) :null,
           labelPadding:  isColor ? const EdgeInsets.all(0) :null,
          padding: isColor ? const EdgeInsets.all(0) :null,
          shape:  isColor ? const CircleBorder() :null,
          //selectedColor: Colors.green,
          backgroundColor: isColor  ? THelperFunctions.getColor(text)! : null,
      
          selectedColor: isColor ? THelperFunctions.getColor(text)! : TColors.primaryColor,
          elevation: 0,  // Remove chip elevation
          pressElevation: 0,  // Remove press elevation (ripple effect)
      
          // Set this to fully disable any default ripple or hover effects
          disabledColor: isColor ? THelperFunctions.getColor(text)! : TColors.light,
      ),
    );
  }
}