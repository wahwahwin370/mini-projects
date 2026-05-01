import 'package:flutter/material.dart';
class ForgetPasswordButtonWidget extends StatelessWidget {
  const ForgetPasswordButtonWidget({
    super.key,
    required this.btnIcon,
    required this.title,
    required this.subTitle,
    required this.onTap
  });

  final IconData btnIcon;
  final String title, subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(10.0),
            color: Colors.grey.shade200
        ),
        child: Row(
          children: [
            Icon(btnIcon, size: 50,color: Colors.blueAccent,),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.headlineSmall,),
                Text(subTitle, style: Theme.of(context).textTheme.bodyMedium,),
              ],
            )
          ],
        ),
      ),
    );
  }
}