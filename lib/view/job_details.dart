import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stuntech/constants/color.dart';
import 'package:stuntech/view/reactions.dart';
import 'package:stuntech/view/widgets/care_giving.dart';
import 'package:stuntech/view/widgets/header.dart';
import 'package:stuntech/view/widgets/job_detail.dart';
import 'package:stuntech/view/widgets/reaction.dart';

class JobDetails extends StatefulWidget {
  const JobDetails({Key? key, required this.jobDetails}) : super(key: key);

  final jobDetails;

  @override
  State<JobDetails> createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
  Completer<GoogleMapController> _controller = Completer();
  @override
  Widget build(BuildContext context) {
    print('On home page : ${widget.jobDetails}');
    var selectItems = ['事業所概要 ', '仕事の内容', '1日の流れ', '待遇', '応募条件', '持ち物'];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: DefaultTabController(
          length: selectItems.length,
          child: Column(
            children: [
              const HeaderImage(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text(
                        '${widget.jobDetails[0].result.jobTitle}',
                        //'[Sapporo, Hokkaido] Nursing care business in a short stay (mainly bathing assistance), please!' ,
                        //'【北海道札幌市】ショートステイでの介護業      務 (主に入浴介助) お願いします！',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: GoogleFonts.notoSans().fontFamily,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          color: const Color(0xFFEEAB40).withOpacity(0.1),
                          //padding: const EdgeInsets.all(10),
                          child: Text(
                            '介護付き有料老人ホーム',
                            //'Paid nursing home for elderly',
                            style: TextStyle(
                              fontSize: 12,
                              color: mainText,
                              fontFamily: GoogleFonts.notoSans().fontFamily,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '6,000円',
                          //'6,000 yen',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: GoogleFonts.notoSans().fontFamily,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),

                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        const JobDetail(),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              '住宅型有料老人ホームひまわり倶楽部',
                              //'Residential pay nursing home Himawari Club',
                              style: TextStyle(
                                fontSize: 12,
                                color:
                                    const Color(0xFF303030).withOpacity(0.45),
                                fontFamily: GoogleFonts.notoSans().fontFamily,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Reactions(),
              ),
              const SizedBox(
                height: 10,
              ),
              // Padding(
              //     padding:
              //         const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              //     child: SizedBox(
              //       height: 20,
              //       child: Row(
              //         children: [
              //           Expanded(
              //             child: ListView.builder(
              //               scrollDirection: Axis.horizontal,
              //               itemCount: selectItems.length,
              //               itemBuilder: (context, index) {
              //                 return Row(
              //                   children: [
              //                     Text(
              //                       selectItems[index],
              //                       style: TextStyle(
              //                         fontSize: 13,
              //                         color: const Color(0xFF303030),
              //                         fontFamily:
              //                             GoogleFonts.notoSans().fontFamily,
              //                         fontWeight: FontWeight.w500,
              //                       ),
              //                     ),
              //                     const SizedBox(
              //                       width: 10,
              //                     ),
              //                   ],
              //                 );
              //               },
              //             ),
              //           ),
              //         ],
              //       ),
              //     )),
              // const SizedBox(
              //   height: 10,
              // ),

              TabBar(
                isScrollable: true,
                indicatorColor: mainText,
                labelColor: mainText,
                tabs: [
                Tab(child: Text(selectItems[0])),
                Tab(child: Text(selectItems[1])),
                Tab(child: Text(selectItems[2])),
                Tab(child: Text(selectItems[3])),
                Tab(child: Text(selectItems[4])),
                Tab(child: Text(selectItems[5])),
              ]),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('事業所概要',
                            //'Business establishment overview',
                            style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontFamily: GoogleFonts.notoSans().fontFamily,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Text(
                              '''東海地方を中心に、中部・関東・関西で約80施設の介護施設を運営しております。当社は3大都市圏で展開している強みを活かした、「住み替え自由」の介護サービスを提供しています。また、ご利用者様ひとりひとりに沿ったケアの実践だけでなく、ご家族様にも安心して預けていただけるようなサポート体''',
                              //'''We operate about 80 long-term care facilities in the Chubu, Kanto, and Kansai regions, mainly in the Tokai region. We provide "free relocation" long-term care services that take advantage of our strengths in the three major metropolitan areas. In addition to practicing care tailored to each user, a support body that allows families to leave it with peace of mind.''',
                              style: TextStyle(
                                fontSize: 14,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text('もっとみる',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontFamily: GoogleFonts.notoSans().fontFamily,
                              fontWeight: FontWeight.w500,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text('仕事の内容',
                            //'Job description',
                            style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontFamily: GoogleFonts.notoSans().fontFamily,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('''グループホームでの介護業務全般
・食事介助
・入浴介助
・掃除、洗濯、レクリエーション等の支援
''',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: black,
                                    fontFamily:
                                        GoogleFonts.notoSans().fontFamily,
                                    fontWeight: FontWeight.w500,
                                  )
//                               '''General long-term care work in group homes
// ・ Meal assis
// ・ Bathing assis
// ・ Support for cleaning, washing, recreation, etc.
// '''
                                  ),
                            ]),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.withOpacity(0.1),
                thickness: 1,
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(children: [
                    Row(
                      children: [
                        Text('介助項目',
                            //'Caregiving items',
                            style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontFamily: GoogleFonts.notoSans().fontFamily,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      children: const [
                        CareGivingItem(title: '清掃'),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(title: '口腔ケア'),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(title: 'レクリエーション'),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(title: '夜勤'),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(title: 'リネン交換'),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(title: 'バイタル測定'),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(title: '移動介助'),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(title: '対話'),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(title: '服薬管理'),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(title: '介護記録'),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text('1日の流れ',
                            style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontFamily: GoogleFonts.notoSans().fontFamily,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: Text('''・リハビリ機器の誘導
・書類業務
・送迎（AT小型車のシエンタ使用）
※入浴・食事介助なし

（一日の流れ）
8:00頃　ご利用者様をお迎えのため事業所出発
8:45～11:50　午前の部
11:50～13:00　送り・午後お方をお迎え
13:00～16:05　午後の部
16:05～　送り・事業所の片付け（※床掃除はルンバ）
17:00頃　業務終了''',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: black,
                                      fontFamily:
                                          GoogleFonts.notoSans().fontFamily,
                                      fontWeight: FontWeight.w500,
                                    ))
//                                 '''・ Guidance of rehabilitation equipment
// ・ Document work
// ・ Pick-up (using Sienta for small AT cars)
//  * No bathing or meal assistance

//  (The flow of the day)
//  Around 8:00 Departure from the office to pick up the user
//  8: 45-11: 50 Morning session
//  11: 50 ~ 13: 00 Sending and welcoming you in the afternoon
//  13: 00-16: 05 Afternoon
//  16: 05 ～ Sending and cleaning up the office (* Floor cleaning is Roomba)'''),
                                ),
                          ]),
                    ]),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text('待遇',
                            //'treatment',
                            style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontFamily: GoogleFonts.notoSans().fontFamily,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      direction: Axis.horizontal,
                      children: const [
                        CareGivingItem(title: '待遇その１'),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(title: 'サンプル待遇その２'),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(title: '待遇その３'),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(title: 'サンプル待遇その４'),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(title: '待遇その５'),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(title: '待遇その6'),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(title: '待遇その７'),
                        SizedBox(
                          width: 10,
                        ),
                        CareGivingItem(title: 'サンプル待遇その８'),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text('応募条件資格',
                            //'Application conditions Qualifications',
                            style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontFamily: GoogleFonts.notoSans().fontFamily,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Wrap(
                          direction: Axis.horizontal,
                          children: const [
                            CareGivingItem(title: '社会福祉士'),
                            SizedBox(
                              width: 10,
                            ),
                            CareGivingItem(title: '介護食士1級'),
                            SizedBox(
                              width: 10,
                            ),
                            CareGivingItem(title: '社会福祉主事'),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('持ち物',
                                //'Belongings',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: black,
                                  fontFamily: GoogleFonts.notoSans().fontFamily,
                                  fontWeight: FontWeight.bold,
                                ))
                          ])
                    ]),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(children: [
                      Text('''・ボールペン
・メモ帳
・ハンドタオル
・お薬辞典
・入浴介助の服
・着替え
・クリアファイル''',
                          style: TextStyle(
                            fontSize: 14,
                            color: black,
                            fontFamily: GoogleFonts.notoSans().fontFamily,
                            fontWeight: FontWeight.w500,
                          )
//                       '''・Ballpoint pen
//  ·  Notepad
//  ·  Hand towel
// ・ Pharmaceutical dictionary
// ・ Bathing assistance clothes
// ・ Change of clothes
//  ·  clear file''',
                          )
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    ExpansionTile(
                      title: Text('労働条件通知書',
                          style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontFamily: GoogleFonts.notoSans().fontFamily,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text('アクセス方法',
                            //'how to access',
                            style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontFamily: GoogleFonts.notoSans().fontFamily,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      clipBehavior: Clip.hardEdge,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        //color: Colors.grey
                      ),
                      alignment: Alignment.center,
                      child: const GoogleMap(
                        initialCameraPosition: CameraPosition(
                            target: LatLng(-33.870840, 151.206286), zoom: 12),
                      ),
                      // Text('Google Map',
                      //     style: TextStyle(
                      //         fontSize: 14,
                      //         color: Colors.white,
                      //         fontFamily: GoogleFonts.notoSans().fontFamily,
                      //         fontWeight: FontWeight.bold)),
                    ),
                    // Container(
                    //   height: 200,
                    //   width: MediaQuery.of(context).size.width ,
                    //   // decoration: BoxDecoration(
                    //   //     borderRadius: BorderRadius.circular(10),
                    //   //     color: Colors.grey),
                    //   //alignment: Alignment.center,
                    //   child: Image.asset('assets/images/map.png',
                    //   height: 250,
                    //   width: MediaQuery.of(context).size.width,
                    //   fit: BoxFit.cover,
                    //   ),
                    // ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Text('北海道札幌市 XXXX 区 XXX 条 XX 丁目 XX 番 XX 号',
                              //'Sapporo City, Hokkaido XXXX Ward XXX Article XX Chome XX No. XX',
                              style: TextStyle(
                                fontSize: 13,
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
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Text('''・”XXXXXX” 駅から徒歩 “XX” 分
・”XXXXXX” から車で “XX” 分
・”XXXXXX” からバイクで “XX” 分''',
//                           '''・ Walk “XX” minutes from “XXXXXX” station
// ・ "XX" minutes by car from "XXXXXX"
// ・ From “XXXXXX” to “XX” minutes by motorcycle''',
                              style: TextStyle(
                                fontSize: 13,
                                color: black,
                                fontFamily: GoogleFonts.notoSans().fontFamily,
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text('事業所連絡先番号',
                            //'Office contact no.',
                            style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontFamily: GoogleFonts.notoSans().fontFamily,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('000 000 000 0',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: black,
                                  fontFamily: GoogleFonts.notoSans().fontFamily,
                                  fontWeight: FontWeight.w500,
                                ))
                          ])
                    ]),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text('交通手段',
                            style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontFamily: GoogleFonts.notoSans().fontFamily,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: const [
                            CareGivingItem(title: '徒歩'),
                            SizedBox(
                              width: 10,
                            ),
                            CareGivingItem(title: '自転車'),
                            SizedBox(
                              width: 10,
                            ),
                            CareGivingItem(title: '車'),
                            SizedBox(
                              width: 10,
                            ),
                            CareGivingItem(title: 'バイク'),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text('注意事項',
                            style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontFamily: GoogleFonts.notoSans().fontFamily,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          '''金髪などの派手な髪型は規定上、お断りいたします。

新型コロナの感染対策といたしまして、下記の要綱に当てはまる方のご応募をお控え頂きますようよろしくお願いいたします。・発熱や咳の症状のある方
・同居人等、身近な方に同様の症状がある方
・濃厚接触者と認められた方
・過去14日以内に渡航歴がある方''',
//                         '''
// Flashy hairstyles such as blonde hair are not permitted by regulation.

//  As a countermeasure against infection of the new corona, please refrain from applying for those who meet the following guidelines.・ Those who have fever or cough
// ・ People who have similar symptoms, such as those living together
// ・ Those who are recognized as close contacts
// ・ Those who have traveled within the past 14 days''',
                          style: TextStyle(
                            fontFamily: GoogleFonts.notoSans().fontFamily,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ]),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text('採用情報',
                            style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontFamily: GoogleFonts.notoSans().fontFamily,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 450,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 10,
                                spreadRadius: 1,
                              )
                            ],
                            color: Colors.white),
                        clipBehavior: Clip.hardEdge,
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Image.asset('assets/images/card.png',
                                //'https://cdn.visitingangels.com/cgcimages/home-care-nurse-seniors-main.jpg',
                                height: 200,
                                fit: BoxFit.cover),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10.0),
                                  child: Text(
                                      '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（正規雇用 / パート）',
                                      //'Long-term care pay nursing home Himawari Club long-term care / helper recruitment (regular employment / part-time)',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: black,
                                        fontFamily:
                                            GoogleFonts.notoSans().fontFamily,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                              child: Row(
                                children: const [
                                  CareGivingItem(title: '介護付き有料老人ホーム'),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                              child: Row(
                                children: const [
                                  Text('北海道札幌市東雲町3丁目916番地17号')
                                  //'3-916-17 Shinonome-cho, Sapporo-shi, Hokkaido')
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                              child: Row(
                                children: const [
                                  Text('正職員'),
                                  //Spacer(),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('月収 25万 ~ 27万')
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    child: Text('介護付き有料老人ホームソラスト小松原',
                                        //'Paid nursing home for the elderly Solasto Komatsubara',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                          fontFamily:
                                              GoogleFonts.notoSans().fontFamily,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                  ])),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
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
                color: Color.fromARGB(99, 121, 121, 121),
                size: 35,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                print("Please Upload the Image");
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.35,
                          child: Column(children: [
                            Image.network(
                              'http://clipart-library.com/images/dc95gpLc7.png',
                              height: 100,
                              width: 100,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('The application is completed!',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: black,
                                  fontFamily: GoogleFonts.notoSans().fontFamily,
                                  fontWeight: FontWeight.bold,
                                )),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 300,
                              alignment: Alignment.center,
                              child: const Text(
                                '''Until the application result arrives from the long-term care office
 Please wait.''',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                width: 300,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFF003566),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Application',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontFamily:
                                        GoogleFonts.notoSans().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ]),
                        ),
                      );
                    });
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 40,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color(0xFFFAAA14),
                ),
                alignment: Alignment.center,
                child: Text(
                  '応募する',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontFamily: GoogleFonts.notoSans().fontFamily,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
