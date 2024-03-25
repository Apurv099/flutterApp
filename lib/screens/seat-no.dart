// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:infy_me/screens/home.dart';

import 'drop.dart';

class SeatNumber extends StatefulWidget {
  const SeatNumber({super.key});

  @override
  State<SeatNumber> createState() => _SeatNumberState();
}

class _SeatNumberState extends State<SeatNumber> {
  TextEditingController fieldControl = TextEditingController();
  SingleValueDropDownController _cnt = SingleValueDropDownController();
  List<DropDownValueModel> dc = [
    DropDownValueModel(name: "MUMVIKHROLI1", value: "MUMVIKHROLI1"),
    DropDownValueModel(name: "ILMUMBAISTP", value: "ILMUMBAISTP")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
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
                DropDownTextField(
                  controller: _cnt,
                  padding: EdgeInsets.zero,
                  textFieldDecoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 23, bottom: 0)),
                  dropdownRadius: 0,
                  // dropdownColor: const Color.fromARGB(255, 255, 255, 255),
                  clearOption: false,
                  dropDownList: dc,
                  onChanged: (val) {
                    _cnt.dropDownValue = val;
                    print(_cnt);
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen(
                                    seatNo: fieldControl?.text ?? "396",
                                    cnt: _cnt,
                                  )));
                    },
                    child: Text("Next"))
              ],
            ),
          ),
        ));
  }
}
