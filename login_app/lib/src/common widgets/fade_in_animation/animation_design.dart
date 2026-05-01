import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/common%20widgets/fade_in_animation/fade_in_animation_model.dart';

import '../../constants/image_strings.dart';
import '../../constants/sizes.dart';
import 'fade_in_animation_controller.dart';

class TFadeInAnimation extends StatelessWidget {
  TFadeInAnimation({
    super.key,
    required this.durationInMs,
    required this.child,
    required this.animate,
  });

  final controller = Get.put(FadeInAnimationController());
  final int durationInMs;
  final TAnimatePosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx( () =>
        AnimatedPositioned(
          duration: Duration(milliseconds: durationInMs),
          bottom: controller.animate.value ? animate!.bottomAfter : animate!.bottomBefore,
          left: controller.animate.value ? animate!.leftAfter : animate!.leftBefore,
          top: controller.animate.value ? animate!.topAfter : animate!.topBefore,
          right: controller.animate.value ? animate!. rightBefore: animate!.rightBefore,
          child: AnimatedOpacity(
            duration: Duration(milliseconds: durationInMs),
            opacity: controller.animate.value ? 1 : 0,
            child: child,
          ),
        ),
    );
  }
}