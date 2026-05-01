import 'package:flutter/material.dart';

import '../../../../../constants/text_strings.dart';
class DashboardSearchBox extends StatelessWidget {
  const DashboardSearchBox({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(left: BorderSide(width: 4,color: Colors.yellowAccent.withOpacity(0.3)),),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            tDashboardSearch,
            style: txtTheme.bodyLarge?.apply(
                color: Colors.blueAccent.withOpacity(0.7)
            ),
          ),
          Icon(Icons.mic, size: 20,)
        ],
      ),
    );
  }
}