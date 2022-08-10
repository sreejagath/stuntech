
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stuntech/constants/color.dart';

class JobDetail extends StatelessWidget {
  const JobDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'May 31st (Wednesday) 08: 00 ~ 17: 00 (break 60 minutes)',
                      style: TextStyle(
                        fontSize: 12,
                        color: black,
                        fontFamily:
                            GoogleFonts.notoSans().fontFamily,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      '3-916-17 Shinonome-cho, Sapporo-shi, Hokkaido',
                      style: TextStyle(
                        fontSize: 12,
                        color: black,
                        fontFamily:
                            GoogleFonts.notoSans().fontFamily,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'Transp. Costs ¥ 300',
                      style: TextStyle(
                        fontSize: 12,
                        color: black,
                        fontFamily:
                            GoogleFonts.notoSans().fontFamily,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.2,
          decoration: BoxDecoration(
            borderRadius:
                const BorderRadius.all(Radius.circular(5)),
            border: Border.all(
              color: const Color(0xFFFAAA14),
            ),
          ),
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                'Recruitment number 3 people',
                style: TextStyle(
                  fontSize: 12,
                  color: const Color(0xFFFAAA14),
                  fontFamily: GoogleFonts.notoSans().fontFamily,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ],
          ),
        )
      ],
    );
  }
}
