import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashCardWidget extends StatelessWidget {
  final Color color;
  final FaIcon icon;
  final TextButton button;
  final Function()? onTap;
  const SplashCardWidget(
      {super.key,
      required this.color,
      this.onTap,
      required this.icon,
      required this.button});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.20,
        width: MediaQuery.of(context).size.width * 0.4,
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          color: color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 14,
              ),
              icon,
              Center(child: TextButton(onPressed: () {}, child: button))
            ],
          ),
        ),
      ),
    );
  }
}
