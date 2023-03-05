import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mosobolaje/utils/appStyle.dart';

class ProfileInfo extends StatelessWidget {
   final String firstText;
  final String secondText;
  const ProfileInfo({super.key, required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: Styles.bgColor,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:  [
              Text(
                firstText,
                style: const TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.start,
              ),
              const Gap(10),
              Text(
                secondText,
                style: const TextStyle(
                  fontSize: 15,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          const Icon(Icons.check_circle)
        ],
      ),
    );
  }
}
