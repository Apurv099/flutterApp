// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:dropdown_textfield/dropdown_textfield.dart';

import 'package:intl/intl.dart';

import 'drop.dart';

class BookSeat extends StatefulWidget {
  final String? seatNo;
  final SingleValueDropDownController? cnt;

  const BookSeat({super.key, this.seatNo, this.cnt});

  @override
  State<BookSeat> createState() => _BookSeatState();
}

class _BookSeatState extends State<BookSeat> {
  var location;
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
    DropDownValueModel(name: "MUMVIKHROLI1", value: "MUMVIKHROLI1"),
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
  List<DropDownValueModel> floor11 = [
    DropDownValueModel(name: "FLOOR-11", value: "a"),
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
    location = widget?.cnt?.dropDownValue?.name ?? "";

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(80),
      //   child: AppBar(
      //     excludeHeaderSemantics: true,
      //     flexibleSpace: Container(
      //       height: 42,
      //       color: Colors.white,
      //     ),
      //     // automaticallyImplyLeading: false,
      //     centerTitle: true,
      //     leading: IconButton(
      //       onPressed: () {
      //         Navigator.pop(context);
      //       },
      //       icon: Icon(Icons.arrow_back),
      //       color: Colors.white,
      //     ),
      //     backgroundColor: Color.fromARGB(255, 171, 4, 200),
      //     title: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(
      //         "BOOK SEAT",
      //         style:
      //             TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      //         // style: GoogleFonts.openSans(
      //         //     color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
      //       ),
      //     ),
      //     // bottom: PreferredSize(
      //     //   preferredSize: Size.fromHeight(20),
      //     //   child: Container(
      //     //     height: 50,
      //     //     color: Colors.white,
      //     //     child: Text("Book seat"),
      //     //   ),
      //     // ),
      //   ),
      // ),
      body: Column(
        children: [
          Container(
            height: 33,
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/back.jpeg"),
                    fit: BoxFit.fill)),
            margin: EdgeInsets.only(bottom: 10),
            width: MediaQuery.of(context).size.width,
            height: 52,
            // color: Color.fromARGB(210, 124, 0, 169),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.23,
                ),
                Text(
                  "BOOK SEAT",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        // color: Colors.white,
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
                                          backgroundColor: Colors.white,
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
                              if (location != "MUMVIKHROLI1")
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        "Cubicle: MUM02 01 04 A ${widget?.seatNo}", //amethysta
                                        style: TextStyle(
                                            wordSpacing: 0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16)),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                        "Mumbai, ILMUMBAISTP, SDB01, FLOOR-04, A Wing", //amethysta
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black87))
                                  ],
                                ),
                              if (location == "MUMVIKHROLI1")
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        "Cubicle: MUM01 01 11 A ${widget?.seatNo}", //amethysta
                                        style: TextStyle(
                                            wordSpacing: 0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16)),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                        "Mumbai, MUMVIKHROLI1, SDB01, FLOOR-11,\nA Wing", //amethysta
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black87))
                                  ],
                                )
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
                        backgroundColor: Color.fromARGB(255, 73, 42, 92),
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
                          fontSize: 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FormLabel(context, "Date"),
                          DropDownTextField(
                            // dropDownIconProperty: IconProperty(size: 20),
                            padding: EdgeInsets.zero,
                            textFieldDecoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(top: 23, bottom: 0)),
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
                            padding: EdgeInsets.zero,
                            textFieldDecoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(top: 23, bottom: 0)),
                            initialValue: "Mumbai",
                            dropdownRadius: 0,
                            // dropdownColor: const Color.fromARGB(255, 255, 255, 255),
                            clearOption: false,
                            dropDownList: city,
                            onChanged: (val) {},
                          ),
                          FormLabel(context, "DC"),
                          DropDownTextField(
                            padding: EdgeInsets.zero,
                            textFieldDecoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(top: 23, bottom: 0)),
                            initialValue: location,
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
                                  activeColor: Colors.purple,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
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
                                  activeColor: Colors.purple,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
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
                                  activeColor: Colors.purple,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
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
                            padding: EdgeInsets.zero,
                            textFieldDecoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(top: 23, bottom: 0)),
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
                                        padding: EdgeInsets.zero,
                                        textFieldDecoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                top: 23, bottom: 0)),
                                        initialValue: location == "MUMVIKHROLI1"
                                            ? "FLOOR-11"
                                            : "FLOOR-4",
                                        dropdownRadius: 0,
                                        // dropdownColor: const Color.fromARGB(255, 255, 255, 255),
                                        clearOption: false,
                                        dropDownList: location == "MUMVIKHROLI1"
                                            ? floor11
                                            : floor,
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
                                        padding: EdgeInsets.zero,
                                        textFieldDecoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                top: 23, bottom: 0)),
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
                    // style: ButtonStyle(
                    //     backgroundColor: MaterialStateProperty.all<Color?>(
                    //         Colors.blueGrey[700])),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        backgroundColor: Colors.blueGrey[700]),
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
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          backgroundColor: Colors.blueGrey[700]),
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
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          backgroundColor: Colors.black87),
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
