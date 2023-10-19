import 'package:cookies_ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Premium extends StatelessWidget {
  const Premium({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.crown,
          color: orange,
          size: 16,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          "PREMIUM",
          style: TextStyle(
            color: orange,
            fontSize: 16
          ),
        ),
      ],
    );
  }
}