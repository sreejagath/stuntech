import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        Container(
          height: MediaQuery.of(context).size.height * 0.9,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ReviewData();
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
            Emojis(),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('Youshi Kabayashi'),
                Spacer(),
                Text('YYYY/MM/DD'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Text('''Reviews of the working workers are displayed here.\n You can check.'''))
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
