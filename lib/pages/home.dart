import 'package:flutter/material.dart';
import 'package:assignment/util/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 40, bottom: 40),
              child: const Text("Beepy",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black)),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/imgs/beep.png",
                width: displayWidth(context) * 1,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 32),
            const Text("Find Your Vehicle",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Colors.black)),
            const SizedBox(height: 16),
            const Text("Find the perfect vehicle for every",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black)),
            const Text("occasion!",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black)),
            const SizedBox(height: 77),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => Navigator.pushNamed(context, '/detail'),
                  child: Ink(
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x1f000000),
                            offset: Offset(0, 2),
                            blurRadius: 1,
                            spreadRadius: 0,
                          )
                        ],
                        color: Color(0xffFA7F35),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    width: displayWidth(context) * 0.84,
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 45),
                      child: Text("Continue",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      )),
    );
  }
}
