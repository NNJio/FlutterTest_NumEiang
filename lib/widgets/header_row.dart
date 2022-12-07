import 'package:flutter/material.dart';

class HeaderRow extends StatelessWidget {
  const HeaderRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.filter_list,
          size: 35,
          color: Colors.red.shade900,
        ),
        Text(
          'Num Eiang',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.red.shade900,
          ),
        ),
        Icon(
          Icons.notifications_active_outlined,
          size: 30,
          color: Colors.red.shade900,
        ),
      ],
    );
  }
}