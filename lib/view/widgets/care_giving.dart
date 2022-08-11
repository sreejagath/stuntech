
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stuntech/constants/color.dart';

class CareGivingItem extends StatelessWidget {
  const CareGivingItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            //height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xFFEEAB40).withOpacity(0.1),
            ),
            child: Text(title,
                style: TextStyle(
                  color: mainText,
                  fontSize: 12,
                  fontFamily: GoogleFonts.notoSans().fontFamily,
                  fontWeight: FontWeight.w600,
                ))),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
