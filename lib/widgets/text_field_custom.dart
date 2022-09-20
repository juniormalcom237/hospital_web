import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key, this.controller, required this.label, this.iconData})
      : super(key: key);
  final TextEditingController? controller;
  final String label;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      margin: EdgeInsets.only(bottom: 30),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          label: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(label),
          ),
          hintStyle:
              TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 15),
          fillColor: Colors.white,
          disabledBorder: InputBorder.none,
          // focusedBorder: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.blue),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
