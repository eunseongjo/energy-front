import 'package:flutter/material.dart';
import '../api_service/electricity_service.dart';
import '../model/electric_dto.dart';

class ElectricityPage extends StatelessWidget {
  const ElectricityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/electric_background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "ELECTRICITY",
            style: TextStyle(
              fontSize: 25,
              color: Colors.green,
            ),
          ),
          const Text(
            "실시간 사용량",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          Image.asset('assets/images/electric_page_icon.png', width: 50, height: 50),
          const Text(
            "₩23,356",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}