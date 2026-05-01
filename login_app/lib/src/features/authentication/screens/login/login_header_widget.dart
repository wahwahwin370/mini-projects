import 'package:flutter/material.dart';

import '../../../../common widgets/form/form_header_widget.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';
class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormHeaderWidget(
            image:tWelcomeScreenImage,
            title : tLoginTitle,
            subTitle : tLoginSubTitle
        )
      ],
    );
  }
}