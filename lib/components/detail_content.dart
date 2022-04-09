import 'package:assignment/util/index.dart';
import 'package:flutter/material.dart';

class DetailContent extends StatefulWidget {
  const DetailContent({Key? key}) : super(key: key);

  @override
  State<DetailContent> createState() => _DetailContentState();
}

class _DetailContentState extends State<DetailContent> {
  bool _isStarred = false;

  void _toggleStart() {
    setState(() {
      _isStarred = !_isStarred;
    });
  }

  @override
  Widget build(BuildContext context) {
    var path = _isStarred ? "star-yellow.png" : "star.png";

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        color: Color(0xff60B5F4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Sport Car",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 39,
                      color: Colors.white,
                    )),
                IconButton(
                  onPressed: _toggleStart,
                  icon: Image.asset("assets/imgs/$path"),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text("\$55/day",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  fontSize: 19,
                  color: Colors.white,
                )),
          ),
          const SizedBox(height: 38),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text("Description",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: 19,
                  color: Colors.white,
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 14, left: 30, right: 30),
            child: Text("Wanna ride the coolest sport car in the world?",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Colors.white,
                )),
          ),
          const SizedBox(height: 38),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 14, left: 30, right: 30),
                child: Material(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: InkWell(
                    onTap: () => {},
                    child: Ink(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      width: displayWidth(context) * 0.84,
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 45),
                        child: Text("Book Now",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Colors.black)),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
