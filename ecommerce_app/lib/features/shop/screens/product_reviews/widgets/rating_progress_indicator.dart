import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
class TRatingProgressIndicator extends StatelessWidget {
  const TRatingProgressIndicator({
    super.key, required this.text, required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex : 2, child: Text(text, style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.end,),),
        SizedBox(width: 8,),
        Expanded(
          flex: 10,
          child: SizedBox(
            child: LinearProgressIndicator(
                value: value,
                minHeight: 11,
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation(TColors.primaryColor),
                borderRadius: BorderRadius.circular(7)
            ),
          ),
        ),
      ],
    );
  }
}