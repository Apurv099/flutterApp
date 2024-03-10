// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infy_me/screens/bookseat.dart';

// import 'package:google_fonts/google_fonts.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController pageController;
  int activePage = 0;
  List<String> image = [
    "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
  ];
  List<String> freqTasks = [
    "Book Seat",
    "Apply WFH",
    "Manage Leave",
    "Average working hours",
    "Year end Evaluation Notify",
    "Apply Leave"
  ];
  List<String> mostUsed = [
    "Manage Sales",
    "Claims",
    "Account Directory",
    "Account 360",
    "Certifications",
    "Hive"
  ];

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: EdgeInsets.all(3),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.white : Colors.grey,
            shape: BoxShape.circle),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   showModalBottomSheet(context: context, builder: (BuildContext context){
    //     return ModalSheet();
    //   });
    // },);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 350,
                child: PageView.builder(
                    itemCount: image.length,
                    controller: pageController,
                    onPageChanged: (page) {
                      setState(() {
                        activePage = page;
                      });
                    },
                    itemBuilder: (BuildContext context, pagePosition) {
                      return Image.network(
                        image[pagePosition].toString(),
                        fit: BoxFit.fill,
                        // width: MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.height * 0.8,
                      );
                    }),
              ),
              Positioned(
                top: 330,
                left: MediaQuery.of(context).size.width / 2 - 30,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: indicators(image.length, activePage)),
              ),
            ]),
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              child: Column(
                children: [
                  Container(
                    height: 270,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://i.pinimg.com/474x/ba/38/39/ba3839c37b8461b4c3c4c8835c6707bf.jpg"),
                            fit: BoxFit.fill)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 20, bottom: 20),
                          child: Text(
                            "What's in store today?",
                            style: GoogleFonts.openSans(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                        ),
                        Container(
                          height: 180,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: ((BuildContext context, int index) {
                                return Container(
                                  child: Card(
                                    margin: EdgeInsets.all(5),
                                    color: Colors.white,
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          top: 8, left: 15, right: 15),
                                      width: 280,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Work From Home",
                                              style: GoogleFonts.openSans(
                                                  color: Colors.purple,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                                "Work From Home request Approved by BharathRaj_P for 0${index + 1}-Feb-2024 09:00-0${index + 1}-Feb-2024 20:00",
                                                style: GoogleFonts.openSans(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 14))
                                          ]),
                                    ),
                                  ),
                                );
                              })),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(255, 244, 244, 244),
              height: 120,
              width: MediaQuery.of(context).size.width,
              // decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(url))),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your frequent tasks",
                      style: GoogleFonts.openSans(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Container(
                      height: 60,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: freqTasks.length,
                          itemBuilder: ((BuildContext context, int index) {
                            return Container(
                              child: Card(
                                margin: EdgeInsets.all(5),
                                color: Colors.white,
                                clipBehavior: Clip.antiAlias,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Container(
                                  padding: EdgeInsets.only(
                                      top: 5, left: 10, right: 10, bottom: 5),
                                  // width: 150,
                                  decoration: BoxDecoration(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                  child: Row(children: [
                                    if (index == 0)
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                            BookSeat()
                                          ));
                                        },
                                        child: Icon(
                                          Icons.domain_add_outlined,
                                          color: Colors.purple,
                                        ),
                                      ),
                                    if (index == 1)
                                      Icon(
                                        Icons.home_work_outlined,
                                        color: Colors.purple,
                                      ),
                                    if (index == 2)
                                      Icon(
                                        Icons.calendar_today_outlined,
                                        color: Colors.purple,
                                      ),
                                    if (index == 3)
                                      Icon(
                                        Icons.fingerprint_outlined,
                                        color: Colors.purple,
                                      ),
                                    if (index == 4)
                                      Icon(
                                        Icons.diversity_2_outlined,
                                        color: Colors.purple,
                                      ),
                                    if (index == 5)
                                      Icon(
                                        Icons.calendar_today_outlined,
                                        color: Colors.purple,
                                      ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      freqTasks[index],
                                      style: GoogleFonts.openSans(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 10),
                                    ),
                                  ]),
                                ),
                              ),
                            );
                          })),
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 244, 244, 244),
              height: 120,
              width: MediaQuery.of(context).size.width,
              // decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(url))),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your most-used services",
                      style: GoogleFonts.openSans(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Container(
                      height: 60,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: mostUsed.length,
                          itemBuilder: ((BuildContext context, int index) {
                            return Container(
                              child: Card(
                                margin: EdgeInsets.all(5),
                                color: Colors.white,
                                clipBehavior: Clip.antiAlias,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Container(
                                  padding: EdgeInsets.only(
                                      top: 5, left: 10, right: 10, bottom: 5),
                                  // width: 150,
                                  decoration: BoxDecoration(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                  child: Row(children: [
                                    if (index == 0)
                                      Icon(
                                        Icons.trending_up_outlined,
                                        color: Colors.purple,
                                      ),
                                    if (index == 1)
                                      Icon(
                                        Icons.local_atm_outlined,
                                        color: Colors.purple,
                                      ),
                                    if (index == 2)
                                      Icon(
                                        Icons.local_library_outlined,
                                        color: Colors.purple,
                                      ),
                                    if (index == 3)
                                      Icon(
                                        Icons.verified_outlined,
                                        color: Colors.purple,
                                      ),
                                    if (index == 4)
                                      Icon(
                                        Icons.workspace_premium_outlined,
                                        color: Colors.purple,
                                      ),
                                    if (index == 5)
                                      Icon(
                                        Icons.hive_outlined,
                                        color: Colors.purple,
                                      ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      mostUsed[index],
                                      style: GoogleFonts.openSans(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 10),
                                    ),
                                  ]),
                                ),
                              ),
                            );
                          })),
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 244, 244, 244),
              height: 120,
              width: MediaQuery.of(context).size.width,
              // decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(url))),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Recommended for you",
                      style: GoogleFonts.openSans(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Container(
                      height: 60,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 1,
                          itemBuilder: ((BuildContext context, int index) {
                            return Container(
                              child: Card(
                                margin: EdgeInsets.all(5),
                                color: Colors.white,
                                clipBehavior: Clip.antiAlias,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Container(
                                  padding: EdgeInsets.only(
                                      top: 5, left: 10, right: 10, bottom: 5),
                                  // width: 150,
                                  decoration: BoxDecoration(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                  child: Row(children: [
                                    if (index == 0)
                                      Icon(
                                        Icons.headset_mic_outlined,
                                        color: Colors.purple,
                                      ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Global Helpdesk",
                                      style: GoogleFonts.openSans(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 10),
                                    ),
                                  ]),
                                ),
                              ),
                            );
                          })),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class ModalSheet {
//   showSheet(context) {
//     showModalBottomSheet(
//         context: context,
//         builder: (context) {
//           return Container(
//             child: Image.network(
//                 "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"),
//           );
//         });
//   }
// }
class ModalSheet extends StatefulWidget {
  const ModalSheet({super.key});

  @override
  State<ModalSheet> createState() => _ModalSheetState();
}

class _ModalSheetState extends State<ModalSheet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Image.network(
            "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"),
      ),
    );
  }
}
