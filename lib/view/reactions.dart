import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ReactionPage extends StatelessWidget {
  const ReactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        centerTitle: true,
        title: const Text('Reviews', style: TextStyle(color: Colors.black)),
      ),
      body: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.9,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const ReviewData();
            },
          ),
        )
      ]),
    );
  }
}

class ReviewData extends StatelessWidget {
  const ReviewData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 140,
        color: Colors.white,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Emojis(),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text('Youshi Kabayashi'),
                Spacer(),
                Text('YYYY/MM/DD'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Text('''Reviews of the working workers are displayed here.\n You can check.''', style: TextStyle(color: Colors.black, fontFamily: GoogleFonts.notoSans().fontFamily),),)
          ],
        ));
  }
}

class Emojis extends StatelessWidget {
  const Emojis({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          '😄',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          '🙂',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.yellow.withOpacity(0.5),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          '😔',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.yellow.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
