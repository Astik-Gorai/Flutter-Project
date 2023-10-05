import 'package:flutter/material.dart';

class CustomDropDownClass extends StatelessWidget {
  List<String> values;
  double width;

  CustomDropDownClass({required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      width: width,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        value: values.first, // For
        onChanged: (_) {},
        items: values.map(
          (e) {
            return DropdownMenuItem(
              child: Text(e),
              value: e,
            );
          },
        ).toList(),
        underline: Container(), // For Not Displaying the underline
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
