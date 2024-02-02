import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;

  final bool loading;
  final VoidCallback ontap;
  const Button(
      {super.key,
      required this.title,
      this.loading = false,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: InkWell(
        onTap: ontap,
        child: Container(
            height: 55,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.95),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            )),
      ),
    );
  }
}
