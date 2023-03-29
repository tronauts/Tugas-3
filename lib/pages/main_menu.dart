import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas3/pages/hal_empat.dart';
import 'package:tugas3/pages/hal_tiga.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget doctorCard(String img, String name, String role) {
      return Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: Color(0xffFFFFFF)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HalEmpat()));
                },
                child: Container(
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            img
                          ))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            role,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ]),
                    Row(
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/ic_star.png"))),
                        ),
                        Text('4.8',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: const Color(0xff308CF8),
                              fontWeight: FontWeight.w600,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ));
    }
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, \nArdiansyah',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Stay Healthy with Our Spesialis Doctor',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: const Color(0xff9698A9),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HalTiga()));
                  },
                  child: Container(
                    width: 76,
                    height: 76,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/Group 1.png"))),
                  ),
                ),
              ],
            ),
            doctorCard("assets/doc1.png", "dr. Mawar N.", "Spesialis Penyakit Dalam" ),
            doctorCard("assets/doc2.png", "dr. Zizah Ayuningsih", "Spesialis Kulit Kelamin")
          ],
        ),
      )),
    ));
  }
}
