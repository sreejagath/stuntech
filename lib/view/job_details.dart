import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stuntech/constants/color.dart';
import 'package:stuntech/view/reactions.dart';

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
            GestureDetector(
              onTap: () {
                Get.to(()=> const Reactions());
              },
              child: Padding(
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
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 20,
                  color: const Color(0xFFEEAB40).withOpacity(0.1),
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Business establishment overview',
                            style: TextStyle(
                              fontSize: 12,
                              color: black,
                              fontFamily: GoogleFonts.notoSans().fontFamily,
                              fontWeight: FontWeight.w500,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Text(
                              '''We operate about 80 long-term care facilities in the Chubu, Kanto, and Kansai regions, mainly in the Tokai region. We provide "free relocation" long-term care services that take advantage of our strengths in the three major metropolitan areas. In addition to practicing care tailored to each user, a support body that allows families to leave it with peace of mind.''',
                              style: TextStyle(
                                fontSize: 12,
                                color: black,
                                fontFamily: GoogleFonts.notoSans().fontFamily,
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text('Job description',
                            style: TextStyle(
                              fontSize: 12,
                              color: black,
                              fontFamily: GoogleFonts.notoSans().fontFamily,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('''General long-term care work in group homes
・ Meal assis
・ Bathing assis
・ Support for cleaning, washing, recreation, etc.
'''),
                            ]),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.1),
              thickness: 1,
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(children: [
                  Row(
                    children: [
                      Text('Caregiving items',
                          style: TextStyle(
                            fontSize: 12,
                            color: black,
                            fontFamily: GoogleFonts.notoSans().fontFamily,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 50,
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CareGivingItem(
                          title: 'Cleaning',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(
                          title: 'Oral Care',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(
                          title: 'Recreation',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(
                          title: 'Recreation',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(
                          title: 'Recreation',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(
                          title: 'Recreation',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(
                          title: 'Recreation',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(
                          title: 'Recreation',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Flow of the day',
                          style: TextStyle(
                            fontSize: 12,
                            color: black,
                            fontFamily: GoogleFonts.notoSans().fontFamily,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: const Text(
                                '''・ Guidance of rehabilitation equipment
・ Document work
・ Pick-up (using Sienta for small AT cars)
 * No bathing or meal assistance 

 (The flow of the day)
 Around 8:00 Departure from the office to pick up the user
 8: 45-11: 50 Morning session
 11: 50 ~ 13: 00 Sending and welcoming you in the afternoon
 13: 00-16: 05 Afternoon
 16: 05 ～ Sending and cleaning up the office (* Floor cleaning is Roomba)'''),
                          ),
                        ]),
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('treatment',
                          style: TextStyle(
                            fontSize: 12,
                            color: black,
                            fontFamily: GoogleFonts.notoSans().fontFamily,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Application conditions Qualifications',
                          style: TextStyle(
                            fontSize: 12,
                            color: black,
                            fontFamily: GoogleFonts.notoSans().fontFamily,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Belongings',
                              style: TextStyle(
                                fontSize: 12,
                                color: black,
                                fontFamily: GoogleFonts.notoSans().fontFamily,
                                fontWeight: FontWeight.bold,
                              ))
                        ])
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(children: const [
                    Text('''・Ballpoint pen
 ·  Notepad
 ·  Hand towel
・ Pharmaceutical dictionary
・ Bathing assistance clothes
・ Change of clothes
 ·  clear file''')
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  const ExpansionTile(
                      title: Text('Working condition notification')),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('how to access',
                          style: TextStyle(
                            fontSize: 12,
                            color: black,
                            fontFamily: GoogleFonts.notoSans().fontFamily,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                    alignment: Alignment.center,
                    child: const Text('Map',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Text(
                            'Sapporo City, Hokkaido XXXX Ward XXX Article XX Chome XX No. XX',
                            style: TextStyle(
                              fontSize: 12,
                              color: black,
                              fontFamily: GoogleFonts.notoSans().fontFamily,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Text('''・ Walk “XX” minutes from “XXXXXX” station
・ "XX" minutes by car from "XXXXXX"
・ From “XXXXXX” to “XX” minutes by motorcycle''',
                            style: TextStyle(
                              fontSize: 12,
                              color: black,
                              fontFamily: GoogleFonts.notoSans().fontFamily,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Office contact no.',
                          style: TextStyle(
                            fontSize: 12,
                            color: black,
                            fontFamily: GoogleFonts.notoSans().fontFamily,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('000 000 000 0',
                              style: TextStyle(
                                fontSize: 12,
                                color: black,
                                fontFamily: GoogleFonts.notoSans().fontFamily,
                                fontWeight: FontWeight.w500,
                              ))
                        ])
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('transportation',
                          style: TextStyle(
                            fontSize: 12,
                            color: black,
                            fontFamily: GoogleFonts.notoSans().fontFamily,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 50,
                    child: ListView(
                      shrinkWrap: true,
                      physics: const AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CareGivingItem(
                          title: 'On foot',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(
                          title: 'bicycle',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(
                          title: 'Car',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(
                          title: 'Bike',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Notes',
                          style: TextStyle(
                            fontSize: 12,
                            color: black,
                            fontFamily: GoogleFonts.notoSans().fontFamily,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Text(
                        '''
Flashy hairstyles such as blonde hair are not permitted by regulation. 

 As a countermeasure against infection of the new corona, please refrain from applying for those who meet the following guidelines.・ Those who have fever or cough
・ People who have similar symptoms, such as those living together
・ Those who are recognized as close contacts
・ Those who have traveled within the past 14 days''',
                        style: TextStyle(
                          fontFamily: GoogleFonts.notoSans().fontFamily,
                          fontSize: 12,
                        ),
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Employment Information',
                          style: TextStyle(
                            fontSize: 12,
                            color: black,
                            fontFamily: GoogleFonts.notoSans().fontFamily,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                    alignment: Alignment.center,

                  )
                ])),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
      bottomSheet: BottomAppBar(
          child: SizedBox(
        height: 60,
        child: Row(
          children: [
            SizedBox(
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

class CareGivingItem extends StatelessWidget {
  const CareGivingItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 20,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFEEAB40).withOpacity(0.1),
        ),
        child: Text(title,
            style: TextStyle(
              color: mainText,
              fontSize: 12,
              fontFamily: GoogleFonts.notoSans().fontFamily,
              fontWeight: FontWeight.w500,
            )));
  }
}
