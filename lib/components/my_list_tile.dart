import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String icon;
  final String name;
  final String desc;

  const MyListTile({
    Key? key,
    required this.icon,
    required this.name,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //icon
          Container(
            height: 80,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Color(0xFFF3F3F3),
                borderRadius: BorderRadius.circular(15)
            ),
            child: Image.asset(icon),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20                          ),
              ),
              SizedBox(height: 5),
              Text(
                desc,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade600
                ),
              ),
            ],
          ),
          SizedBox(width: 15),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
