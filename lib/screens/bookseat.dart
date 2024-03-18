// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:intl/intl.dart';

class BookSeat extends StatefulWidget {
  final String? seatNo;
  const BookSeat({super.key, this.seatNo});

  @override
  State<BookSeat> createState() => _BookSeatState();
}

class _BookSeatState extends State<BookSeat> {
  List<DropDownValueModel> date = [
    DropDownValueModel(
        name: DateFormat('dd-MMM-yyyy')
            .format(DateTime.now().add(Duration(days: 1)))
            .toString(),
        value: 1),
    DropDownValueModel(
        name: DateFormat('dd-MMM-yyyy')
            .format(DateTime.now().add(Duration(days: 2)))
            .toString(),
        value: 2)
  ];
  List<DropDownValueModel> city = [
    DropDownValueModel(name: "Bhubaneshwar", value: "Bhubaneshwar"),
    DropDownValueModel(name: "Banglore", value: "Banglore"),
    DropDownValueModel(name: "Coimbatore", value: "Coimbatore"),
    DropDownValueModel(name: "Chandigarh", value: "Chandigarh"),
    DropDownValueModel(name: "Chennai", value: "Chennai"),
    DropDownValueModel(name: "Gurgaon", value: "Gurgaon"),
    DropDownValueModel(name: "Hubli", value: "Hubli"),
    DropDownValueModel(name: "Hyderabad", value: "Hyderabad"),
    DropDownValueModel(name: "Indore", value: "Indore"),
    DropDownValueModel(name: "Jaipur", value: "Jaipur"),
    DropDownValueModel(name: "Kolkata", value: "Kolkata"),
    DropDownValueModel(name: "Melbourne", value: "Melbourne"),
    DropDownValueModel(name: "Mangalore", value: "Mangalore"),
    DropDownValueModel(name: "Mohali", value: "Mohali"),
    DropDownValueModel(name: "Mumbai", value: "Mumbai"),
    DropDownValueModel(name: "Mysore", value: "Mysore"),
    DropDownValueModel(name: "Noida", value: "Noida"),
    DropDownValueModel(name: "Pune", value: "Pune"),
    DropDownValueModel(name: "Sydney", value: "Sydney"),
    DropDownValueModel(name: "Trivandrum", value: "Trivandrum"),
  ];
  List<DropDownValueModel> dc = [
    DropDownValueModel(name: "MUMVIKHROLI", value: "MUMVIKHROLI"),
    DropDownValueModel(name: "ILMUMBAISTP", value: "ILMUMBAISTP")
  ];
  List<DropDownValueModel> buildingNo = [
    DropDownValueModel(name: "SDB01", value: "SDB01"),
  ];
  List<DropDownValueModel> wing = [
    DropDownValueModel(name: "A", value: "a"),
  ];
  List<DropDownValueModel> floor = [
    DropDownValueModel(name: "FLOOR-4", value: "a"),
  ];

  int? selectedRadio = 0;

  String formatDate(String date) {
    final DateFormat format = DateFormat('dd-MMM-yyyy');
    final String formatted = format.format(DateTime.parse(date));
    return formatted;
  }

  @override
  void initState() {
    DateTime tomorrow = DateTime.now().add(Duration(days: 1));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        flexibleSpace: Opacity(
          opacity: 0.9,
          child: Container(
            height: 20,
            color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        backgroundColor: Color.fromARGB(255, 171, 4, 200),
        title: Text(
          "BOOK SEAT",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          // style: GoogleFonts.openSans(
          //     color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
        ),
        // bottom: PreferredSize(
        //   preferredSize: Size.fromHeight(20),
        //   child: Container(),
        // ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 20, 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text(
                                      DateFormat('dd-MMM-yyyy')
                                          .format(DateTime.now())
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromARGB(
                                              255, 135, 135, 135)),
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Chip(
                                          labelPadding: EdgeInsets.only(
                                              left: 17, right: 17),
                                          padding: EdgeInsets.zero,
                                          // materialTapTargetSize:
                                          //     MaterialTapTargetSize.shrinkWrap,
                                          visualDensity: VisualDensity(
                                              horizontal: -4, vertical: -4),
                                          label: Container(
                                            child: Text(
                                              "BOOKED",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: const Color.fromARGB(
                                                      255, 61, 141, 63),
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          shape: StadiumBorder(
                                              side: BorderSide(
                                                  width: 2,
                                                  color: const Color.fromARGB(
                                                      255, 61, 141, 63))),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Icon(
                                          Icons.more_vert,
                                          size: 30,
                                          color: Colors.grey,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                  "Cubicle: MUM02 01 04 A ${widget?.seatNo}", //amethysta
                                  style: TextStyle(
                                      wordSpacing: 0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16)),
                              Text(
                                  "Mumbai, ILMUMBAISTP, SDB01, FLOOR-04, A Wing", //amethysta
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black87))
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: const Color.fromARGB(255, 102, 0, 120),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Provide your DC and building preferences",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FormLabel(context, "Date"),
                          DropDownTextField(
                            initialValue: date[0].name,
                            dropdownRadius: 0,
                            dropdownColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            clearOption: false,
                            dropDownList: date,
                            onChanged: (val) {},
                          ),
                          FormLabel(context, "City"),
                          DropDownTextField(
                            initialValue: "Mumbai",
                            dropdownRadius: 0,
                            // dropdownColor: const Color.fromARGB(255, 255, 255, 255),
                            clearOption: false,
                            dropDownList: city,
                            onChanged: (val) {},
                          ),
                          FormLabel(context, "DC"),
                          DropDownTextField(
                            initialValue: "ILMUMBAISTP",
                            dropdownRadius: 0,
                            // dropdownColor: const Color.fromARGB(255, 255, 255, 255),
                            clearOption: false,
                            dropDownList: dc,
                            onChanged: (val) {},
                          ),
                          FormLabel(context, "Allocation"),
                          Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: selectedRadio,
                                  onChanged: (v) {
                                    setState(() {
                                      selectedRadio = v;
                                    });
                                  }),
                              Text(
                                "Account",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                              Radio(
                                  value: 2,
                                  groupValue: selectedRadio,
                                  onChanged: (v) {
                                    setState(() {
                                      selectedRadio = v;
                                    });
                                  }),
                              Text(
                                "Unit/Subunit",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                              Radio(
                                  value: 3,
                                  groupValue: selectedRadio,
                                  onChanged: (v) {
                                    setState(() {
                                      selectedRadio = v;
                                    });
                                  }),
                              Text(
                                "General",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          FormLabel(context, "Building Number"),
                          DropDownTextField(
                            initialValue: "SDB01",
                            dropdownRadius: 0,
                            // dropdownColor: const Color.fromARGB(255, 255, 255, 255),
                            clearOption: false,
                            dropDownList: buildingNo,
                            onChanged: (val) {},
                          ),
                          Row(
                            children: [
                              Flexible(
                                flex: 48,
                                child: Container(
                                  child: Column(
                                    children: [
                                      FormLabel(context, "Floor"),
                                      DropDownTextField(
                                        initialValue: "FLOOR-4",
                                        dropdownRadius: 0,
                                        // dropdownColor: const Color.fromARGB(255, 255, 255, 255),
                                        clearOption: false,
                                        dropDownList: floor,
                                        onChanged: (val) {},
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Flexible(
                                flex: 48,
                                child: Container(
                                  child: Column(
                                    children: [
                                      FormLabel(context, "Wing"),
                                      DropDownTextField(
                                        initialValue: "A",
                                        dropdownRadius: 0,
                                        // dropdownColor: const Color.fromARGB(255, 255, 255, 255),
                                        clearOption: false,
                                        dropDownList: wing,
                                        onChanged: (val) {},
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            child: Card(
                              // margin: EdgeInsets.all(10),
                              color: Colors.white,
                              // clipBehavior: Clip.antiAlias,
                              elevation: 2,
                              child: Container(
                                padding: EdgeInsets.all(15),
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Available Seats",
                                        style: GoogleFonts.openSans(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18),
                                      ),
                                      Text(
                                        "0",
                                        style: GoogleFonts.openSans(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ]),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text("CHOOSE SEAT",
                          style: TextStyle(color: Colors.white)),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color?>(
                            Colors.blueGrey[700])),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 8, bottom: 8),
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          "GET SYSTEM ALLOCATED SEAT",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color?>(
                              Colors.blueGrey[700])),
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text("SEARCH BY CUBILE ID",
                            style: TextStyle(color: Colors.white)),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color?>(
                              Colors.black87)),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget FormLabel(BuildContext context, String title) {
  var labeldec = GoogleFonts.openSans(
      color: Colors.grey[600], fontWeight: FontWeight.normal, fontSize: 14);
  return Container(
    margin: EdgeInsets.only(top: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: labeldec,
        )
      ],
    ),
  );
}
