import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String icon;
  final String text;

  const MyButton({
    Key? key,
    required this.icon,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Color(0xFFF3F3F3),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 25,
                  spreadRadius: 5
              )]
          ),
          child: Center(
            child: Image.asset(icon),
          ),
        ),
        SizedBox(height: 12),
        Text(
          text,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700
          ),
        )
      ],
    );
  }
}
