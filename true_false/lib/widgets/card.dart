import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final Color color;
  final FaIcon icon;
  final Function()? onTap;
  const CardWidget(
      {super.key,
      required this.title,
      required this.color,
      this.onTap,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.14,
        width: MediaQuery.of(context).size.width * 0.4,
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              SizedBox(
                height: 12,
              ),
              Center(
                  child: Text(title,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 249, 249),
                          fontSize: 18))),
            ],
          ),
          color: color,
        ),
      ),
    );
  }
}
