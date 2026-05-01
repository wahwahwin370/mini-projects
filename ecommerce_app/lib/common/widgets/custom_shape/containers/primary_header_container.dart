import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget( //*** call clip path //first section
      child: Container(
        color: TColors.primaryColor,
        padding:  const EdgeInsets.only(bottom: 0),
        //  i need to fix this height ( need to remove it)
        child: Stack(
          children: [ // circle shape
            Positioned(top: -150, right:-250,child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),)),
            Positioned(top: 100, right:-300,child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),)),
            child
          ],
        ),
      ),
    );
  }
}
