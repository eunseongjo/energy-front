import 'package:flutter/material.dart';

class WaterPage extends StatelessWidget {
  const WaterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/water_background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "WATER",
            style: TextStyle(
              fontSize: 25,
              color: Colors.blue,
            ),
          ),
          const Text(
            "실시간 사용량",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          Image.asset('assets/images/water_page_icon.png', width: 50, height: 50),
          Text(
            "15.56㎥",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
