import 'package:flutter/material.dart';

class ElectricityPage extends StatelessWidget {
  const ElectricityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Colors.purple.withOpacity(0.2),
            Colors.purple.withOpacity(0.05),
          ],
          center: Alignment.topCenter,
          radius: 1.2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "이번 달 누적 요금",
            style: TextStyle(fontSize: 18, color: Colors.black54),
          ),
          const SizedBox(height: 10),
          const Text(
            "₩23,356",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _circleInfo("15.56㎥", "1,382원"),
              const SizedBox(width: 12),
              _circleInfo("35.32㎥", "7,297원"),
              const SizedBox(width: 12),
              _circleInfo("1번", "250,000원"),
            ],
          )
        ],
      ),
    );
  }

  static Widget _circleInfo(String value, String label) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.purple, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
