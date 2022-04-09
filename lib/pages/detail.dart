import 'package:assignment/components/detail_content.dart';
import 'package:assignment/util/index.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Cars",
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.black)),
        actions: [
          Image.asset(
            "assets/imgs/avatar.png",
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 45),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/imgs/beep_medium.png",
                width: displayWidth(context) * 1,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 37),
            const DetailContent(),
          ],
        ),
      )),
    );
  }
}
