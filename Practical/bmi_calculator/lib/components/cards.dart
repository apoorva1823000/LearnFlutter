import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {super.key,
      required this.color,
      required this.icons,
      required this.width,
      required this.shadowColor,
      required this.cardChild,
      required this.onPress});
  final Color color;
  final Icon icons;
  final double width;
  final Color shadowColor;
  final Widget cardChild;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Card(
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 30,
        color: Colors.transparent,
        shadowColor: shadowColor,
        child: Container(
          height: 200.0,
          width: width,
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
          ),
          child: Center(
            child: cardChild,
          ),
        ),
      ),
    );
  }
}

class GenderIconContent extends StatelessWidget {
  const GenderIconContent(
      {super.key, required this.gender, required this.genderIcon});
  final String gender;
  final IconData genderIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80.0,
          color: Colors.white,
        ),
        const SizedBox(
          height: 25.0,
        ),
        Text(
          gender,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        )
      ],
    );
  }
}

class ButtonBody extends StatelessWidget {
  const ButtonBody(
      {super.key,
      required this.textBody,
      required this.startColor,
      required this.endColor});
  final String textBody;
  final Color startColor;
  final Color endColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            startColor,
            endColor,
          ],
        ),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      child: Center(
        child: Text(
          textBody,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
