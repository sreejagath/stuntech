
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
          width: MediaQuery.of(context).size.width * 0.65,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      '5月 31日（水）08 : 00 ~ 17 : 00（休憩60分）',
                      //'May 31st (Wednesday) 08: 00 ~ 17: 00 (break 60 minutes)',
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
                      '北海道札幌市東雲町3丁目916番地17号',
                      //'3-916-17 Shinonome-cho, Sapporo-shi, Hokkaido',
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
                      '交通費 300円',
                      //'Transp. Costs ¥ 300',
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
        const Spacer(),
        Container(
          width: MediaQuery.of(context).size.width * 0.23,
          decoration: BoxDecoration(
            borderRadius:
                const BorderRadius.all(Radius.circular(5)),
            border: Border.all(
              color: const Color(0xFFFAAA14),
            ),
          ),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                    '募集人数 3人',
                //'Recruitment number 3 people',
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
