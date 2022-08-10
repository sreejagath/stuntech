import 'package:flutter/material.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
    ]);
  }
}
