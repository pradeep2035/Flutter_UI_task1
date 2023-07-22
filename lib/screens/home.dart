import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_1/bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 360,
              height: 276 + 24,
              color: Color(0xFFEEF3FD),
              child: Stack(
                children: [
                  // ---------------------------------icons--------------------------------------------------
                  Positioned(
                    top: 40,
                    height: 24,
                    width: 40,
                    left: 13,
                    child: Image.asset(
                      "assets/drawer.png",
                      width: 24,
                      height: 24,
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 282,
                    child: Image.asset(
                      "assets/chat.png",
                      width: 24,
                      height: 24,
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 322,
                    child: Image.asset(
                      "assets/Notification.png",
                      width: 24,
                      height: 24,
                    ),
                  ),

                  // ------------------------text -------------------------------------------------
                  Positioned(
                    // height: 27,
                    // width: 111,
                    top: 88,
                    left: 16,
                    child: Text('Hello, Priya!',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lora(
                            textStyle: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500))),
                  ),
                  Positioned(
                    // height: 16,
                    // width: 184,
                    top: 116,
                    left: 16,
                    child: Text('What do you wanna learn today?',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500))),
                  ),

                  // ---------------------------box-1--------------------------------------------
                  Positioned(
                      height: 48,
                      width: 160,
                      top: 164,
                      left: 16,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(width: 1, color: Color(0xFF598BED))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/Book-mark.png",
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            Text(
                              'Programs',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF598BED))),
                            ),
                          ],
                        ),
                      )),
                  // ---------------------------box-2--------------------------------------------
                  Positioned(
                      height: 48,
                      width: 160,
                      top: 164,
                      left: 184,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(width: 1, color: Color(0xFF598BED))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/help.png",
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(
                              width: 28,
                            ),
                            Text(
                              'Get help',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF598BED))),
                            ),
                          ],
                        ),
                      )),
                  // ---------------------------box-3--------------------------------------------
                  Positioned(
                      height: 48,
                      width: 160,
                      top: 220,
                      left: 16,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(width: 1, color: Color(0xFF598BED))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/Book-open.png",
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(
                              width: 29,
                            ),
                            Text(
                              'Learn',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF598BED))),
                            ),
                          ],
                        ),
                      )),
                  //// ---------------------------box4---------------------------------------------
                  Positioned(
                      height: 48,
                      width: 160,
                      top: 220,
                      left: 184,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(width: 1, color: Color(0xFF598BED))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/tracker.png",
                              width: 22,
                              height: 22,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Text(
                              'DD Tracker',
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF598BED))),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
// ----------------------------programs for you section---------------------------------------------
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Programs for you",
                    style: GoogleFonts.lora(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: 105,
                ),
                Image.asset(
                  "assets/view.png",
                  width: 70,
                  height: 24,
                ),
              ],
            ),
//-----------------------------Section 1-------------------------------------------------------------
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: 242,
                      height: 280,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 1, color: Color(0xFFEBEDF0)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x0E443E14),
                            offset: Offset(0, 0),
                            blurRadius: 12,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/Frame1.png",
                            width: 242,
                            height: 140,
                            //fit: BoxFit.fitWidth,
                          ),
                          Positioned(
                            top: 156,
                            left: 15,
                            child: Text("LIFESTYLE",
                                style: GoogleFonts.inter(
                                    color: Color(0xFF598BED),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12)),
                          ),
                          Positioned(
                            top: 180,
                            left: 15,
                            child: Text(
                              "A complete guide for your \nnew born baby",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w700, fontSize: 16),
                            ),
                          ),
                          Positioned(
                            top: 243,
                            left: 15,
                            child: Text(
                              "16 lessons",
                              style: GoogleFonts.inter(
                                  color: Color(0xFF6D747A),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      width: 242,
                      height: 280,
                      //padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 1, color: Color(0xFFEBEDF0)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x0E443E14),
                            offset: Offset(0, 0),
                            blurRadius: 12,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 155.0),
                            child: Image.asset(
                              "assets/Frame2.jpg",
                              width: 242,
                              height: 140,
                              //fit: BoxFit.fitWidth,
                            ),
                          ),
                          Positioned(
                            top: 156,
                            left: 15,
                            child: Text("WORKING PARENTS",
                                style: GoogleFonts.inter(
                                    color: Color(0xFF598BED),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12)),
                          ),
                          Positioned(
                            top: 180,
                            left: 15,
                            child: Text(
                              "Understanding of human \nbehaviour",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w700, fontSize: 16),
                            ),
                          ),
                          Positioned(
                            top: 243,
                            left: 15,
                            child: Text(
                              "12 lessons",
                              style: GoogleFonts.inter(
                                  color: Color(0xFF6D747A),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
// -------------------------------------events and experience section ----------------------------------------------
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Events and experiences",
                    style: GoogleFonts.lora(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: 55,
                ),
                Image.asset(
                  "assets/view.png",
                  width: 70,
                  height: 24,
                ),
              ],
            ),
//---------------------------------------section 2-----------------------------------------------------------------------
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: 242,
                      height: 280,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 1, color: Color(0xFFEBEDF0)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x0E443E14),
                            offset: Offset(0, 0),
                            blurRadius: 12,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/yoga.png",
                            width: 242,
                            height: 140,
                            //fit: BoxFit.fitWidth,
                          ),
                          Positioned(
                            top: 156,
                            left: 15,
                            child: Text("BABYCARE",
                                style: GoogleFonts.inter(
                                    color: Color(0xFF598BED),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12)),
                          ),
                          Positioned(
                            top: 180,
                            left: 15,
                            child: Text(
                              "Understanding of human \nbehaviour",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w700, fontSize: 16),
                            ),
                          ),
                          Positioned(
                            top: 243,
                            left: 15,
                            child: Text(
                              "13 Feb, Sunday",
                              style: GoogleFonts.inter(
                                  color: Color(0xFF6D747A),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                          ),
                          Positioned(
                              top: 238,
                              left: 160,
                              child: Image.asset(
                                "assets/x-button.png",
                                width: 62,
                                height: 26,
                              ))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      width: 242,
                      height: 280,
                      //padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 1, color: Color(0xFFEBEDF0)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x0E443E14),
                            offset: Offset(0, 0),
                            blurRadius: 12,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/yoga.png",
                            width: 242,
                            height: 140,
                            //fit: BoxFit.fitWidth,
                          ),
                          Positioned(
                            top: 156,
                            left: 15,
                            child: Text("BABYCARE",
                                style: GoogleFonts.inter(
                                    color: Color(0xFF598BED),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12)),
                          ),
                          Positioned(
                            top: 180,
                            left: 15,
                            child: Text(
                              "Understanding of human \nbehaviour",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w700, fontSize: 16),
                            ),
                          ),
                          Positioned(
                            top: 243,
                            left: 15,
                            child: Text(
                              "13 Feb, Sunday",
                              style: GoogleFonts.inter(
                                  color: Color(0xFF6D747A),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                          ),
                          Positioned(
                              top: 238,
                              left: 160,
                              child: Image.asset(
                                "assets/x-button.png",
                                width: 62,
                                height: 26,
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            ///-------------------------------------lesson for you section-------------------------------------------------------
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Lessons for you",
                    style: GoogleFonts.lora(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: 119,
                ),
                Image.asset(
                  "assets/view.png",
                  width: 70,
                  height: 24,
                ),
              ],
            ),
// ------------------------------------------section 3 -------------------------------------------------------------------
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: 242,
                      height: 280,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 1, color: Color(0xFFEBEDF0)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x0E443E14),
                            offset: Offset(0, 0),
                            blurRadius: 12,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/yoga.png",
                            width: 242,
                            height: 140,
                            //fit: BoxFit.fitWidth,
                          ),
                          Positioned(
                            top: 156,
                            left: 15,
                            child: Text("BABYCARE",
                                style: GoogleFonts.inter(
                                    color: Color(0xFF598BED),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12)),
                          ),
                          Positioned(
                            top: 180,
                            left: 15,
                            child: Text(
                              "Understanding of human \nbehaviour",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w700, fontSize: 16),
                            ),
                          ),
                          Positioned(
                            top: 243,
                            left: 15,
                            child: Text(
                              "3 min",
                              style: GoogleFonts.inter(
                                  color: Color(0xFF6D747A),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                          ),
                          Positioned(
                              top: 238,
                              left: 200,
                              child: Image.asset(
                                "assets/lock.png",
                                width: 20,
                                height: 20,
                              ))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      width: 242,
                      height: 280,
                      //padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 1, color: Color(0xFFEBEDF0)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x0E443E14),
                            offset: Offset(0, 0),
                            blurRadius: 12,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/yoga.png",
                            width: 242,
                            height: 140,
                            //fit: BoxFit.fitWidth,
                          ),
                          Positioned(
                            top: 156,
                            left: 15,
                            child: Text("BABYCARE",
                                style: GoogleFonts.inter(
                                    color: Color(0xFF598BED),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12)),
                          ),
                          Positioned(
                            top: 180,
                            left: 15,
                            child: Text(
                              "Understanding of human \nbehaviour",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w700, fontSize: 16),
                            ),
                          ),
                          Positioned(
                            top: 243,
                            left: 15,
                            child: Text(
                              "1 min",
                              style: GoogleFonts.inter(
                                  color: Color(0xFF6D747A),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                          ),
                          Positioned(
                              top: 238,
                              left: 200,
                              child: Image.asset(
                                "assets/lock.png",
                                width: 20,
                                height: 20,
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
