import 'package:flutter/material.dart';

import 'rating_progress_indicator.dart';

class TOverallProductRating extends StatelessWidget {
  const TOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,// Align items properly
      children: [
        Expanded(child: Text('4.8', style: Theme.of(context).textTheme.displayLarge,),),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              TRatingProgressIndicator(text :'5', value : 1.0),
              TRatingProgressIndicator(text :'4.8', value : 0.8),
              TRatingProgressIndicator(text :'2', value : 0.2),
              TRatingProgressIndicator(text :'3', value : 0.3),
              TRatingProgressIndicator(text :'1', value : 0.1),
            ],
          ),
        ),
      ],
    );
  }
}