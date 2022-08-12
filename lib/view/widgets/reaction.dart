import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stuntech/view/reactions.dart';

class Reactions extends StatelessWidget {
  const Reactions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const ReactionPage());
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Row(
              children:  [
                Image.asset(
                  'assets/images/smile.png',
                  height: 30,
                  width: 30,
                  fit: BoxFit.cover,
                ),
                // Text(
                //   '😄',
                //   style: TextStyle(
                //     fontSize: 25,
                //     fontWeight: FontWeight.w500,
                //   ),
                // ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
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
              children:  [
                // Text(
                //   '🙂',
                //   style: TextStyle(
                //     fontSize: 25,
                //     fontWeight: FontWeight.w500,
                //   ),
                // ),
                Image.asset(
                  'assets/images/happy.png',
                  height: 30,
                  width: 30,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  '999+',
                  style: const TextStyle(
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
              children:  [
                // Text(
                //   '😔',
                //   style: TextStyle(
                //     fontSize: 25,
                //     fontWeight: FontWeight.w500,
                //   ),
                // ),
                Image.asset(
                  'assets/images/sad.png',
                  height: 30,
                  width: 30,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  '999 +',
                  style: const TextStyle(
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
    );
  }
}
