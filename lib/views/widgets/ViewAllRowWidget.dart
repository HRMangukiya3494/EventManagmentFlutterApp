import 'package:flutter/material.dart';

class ViewAllRowWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const ViewAllRowWidget({
    required this.title,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: h * 0.024,
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: onTap,
          child: Text(
            "View All",
            style: TextStyle(
              color: Color(0xff00B6AA),
              fontWeight: FontWeight.bold,
              fontSize: h * 0.016,
            ),
          ),
        ),
      ],
    );
  }
}