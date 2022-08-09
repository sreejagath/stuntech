import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stuntech/constants/color.dart';

class JobDetails extends StatelessWidget {
  const JobDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: double.infinity,
                  color: Colors.blue,
                  child: Image.network(
                    'https://www.anbusrisaihomenursing.com/Assets/img/service_banner/home_nursing_service.webp',
                    fit: BoxFit.cover,
                  )),
              Positioned(
                left: 10,
                bottom: 10,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Until Today',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    '[Sapporo, Hokkaido] Nursing care business in a short stay (mainly bathing assistance), please!',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: GoogleFonts.notoSans().fontFamily,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '6,000 yen',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: GoogleFonts.notoSans().fontFamily,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        color: const Color(0xFFEEAB40).withOpacity(0.1),
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'Paid nursing home for elderly',
                          style: TextStyle(
                            fontSize: 10,
                            color: mainText,
                            fontFamily: GoogleFonts.notoSans().fontFamily,
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
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
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
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Residential pay nursing home Himawari Club',
                        style: TextStyle(
                          fontSize: 12,
                          color: const Color(0xFF303030).withOpacity(0.45),
                          fontFamily: GoogleFonts.notoSans().fontFamily,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Row(
                    children: const [
                      Text(
                        '😄',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '999',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: const [
                      Text(
                        '🙂',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '999+',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: const [
                      Text(
                        '😔',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '999',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_forward_ios, color: Colors.grey)
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: BottomAppBar(
          child: Container(
        height: 60,
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
              child: const Icon(
                Icons.favorite_border,
                color: Color.fromARGB(255, 121, 121, 121),
                size: 35,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 40,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color(0xFFFAAA14),
              ),
              alignment: Alignment.center,
              child: Text(
                'Apply',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontFamily: GoogleFonts.notoSans().fontFamily,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
