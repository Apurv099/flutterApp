// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:infy_me/screens/home.dart';

class SeatNumber extends StatefulWidget {
  const SeatNumber({super.key});

  @override
  State<SeatNumber> createState() => _SeatNumberState();
}

class _SeatNumberState extends State<SeatNumber> {
  TextEditingController fieldControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              Text("Enter Seat"),
              TextFormField(
                controller: fieldControl,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(3)
                ],
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter 3 digits"),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreen(
                                  seatNo: fieldControl?.text ?? "396",
                                )));
                  },
                  child: Text("Next"))
            ],
          ),
        ));
  }
}
