import 'package:flutter/material.dart';

class GasPage extends StatelessWidget {
  const GasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/gas_background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            const Text(
              "GAS",
              style: TextStyle(
                fontSize: 25,
                color: Colors.red,
              ),
            ),
            const Text(
              "실시간 사용량",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
          ),
          Image.asset('assets/images/gas_page_icon.png', width: 50, height: 50),
          const Text(
            "2.63㎥",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
