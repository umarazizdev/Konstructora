import 'package:flutter/material.dart';
import 'package:konstructora/Models/bigcontainermodel.dart';
import 'package:konstructora/Models/smallcontainermodel.dart';
import 'package:konstructora/Screens/detailscreen.dart';
import 'package:konstructora/Utilities/colors.dart';
import 'package:konstructora/Utilities/constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return Scaffold(
      backgroundColor: backgroundclr,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12, top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: screenSize.height * 0.065,
                      width: screenSize.width * 0.115,
                      decoration: BoxDecoration(
                          color: lbackgroundclr,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Icon(
                        Icons.sort_rounded,
                        color: whiteclr,
                      ),
                    ),
                    Column(
                      children: [
                        const Text(
                          "Deliver to",
                          style: TextStyle(
                              color: whiteclr,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: screenSize.height * 0.002,
                        ),
                        const Text(
                          "02-075 Konstructorska 9",
                          style: TextStyle(
                            color: primaryclr,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: screenSize.height * 0.065,
                      width: screenSize.width * 0.115,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRz-LJaTp0HFRT2GHznf3n7iSAzu-z7och7Vc0GsJkTHWEk67OjQ0t0o6piSTpTv9sr7UI&usqp=CAU")),
                          color: lbackgroundclr,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.025,
                ),
                const Text(
                  "What would you like\nto order",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: whiteclr,
                    fontSize: 21,
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.027,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: screenSize.height * 0.065,
                      width: screenSize.width * 0.785,
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: "Find for restaurant or food...",
                          hintStyle: const TextStyle(color: Colors.grey),
                          fillColor: lbackgroundclr,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: screenSize.height * 0.065,
                      width: screenSize.width * 0.115,
                      decoration: BoxDecoration(
                        color: lbackgroundclr,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(
                        Icons.tune,
                        color: whiteclr,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.027,
                ),
                SizedBox(
                  height: screenSize.height * 0.185,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: smallcon.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: InkWell(
                          onTap: (() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => DetailScreen(
                                      details: smallcon[index],
                                      detail: BigCon[index],
                                    )),
                              ),
                            );
                          }),
                          child: Container(
                            width: screenSize.width * 0.22,
                            decoration: BoxDecoration(
                              color: lbackgroundclr,
                              borderRadius: BorderRadius.circular(55),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: screenSize.height * 0.1,
                                    width: screenSize.width * 0.2,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                smallcon[index].image)),
                                        shape: BoxShape.circle),
                                  ),
                                  SizedBox(
                                    height: screenSize.height * 0.015,
                                  ),
                                  Text(
                                    smallcon[index].name,
                                    style: const TextStyle(color: whiteclr),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.015,
                ),
                const Text(
                  "Fastest delivery",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: whiteclr,
                    fontSize: 21,
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.020,
                ),
                SizedBox(
                  height: screenSize.height * 0.357,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: BigCon.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Stack(
                          children: [
                            InkWell(
                              onTap: (() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) => DetailScreen(
                                          details: smallcon[index],
                                          detail: BigCon[index],
                                        )),
                                  ),
                                );
                              }),
                              child: Container(
                                width: screenSize.width * 0.65,
                                decoration: BoxDecoration(
                                  color: lbackgroundclr,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: screenSize.height * 0.19,
                                      width: screenSize.width * 0.65,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                              NetworkImage(BigCon[index].image),
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                BigCon[index].name,
                                                style: const TextStyle(
                                                    color: whiteclr,
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Row(
                                                children: [
                                                  const Icon(
                                                    Icons.alarm,
                                                    size: 16,
                                                    color: Color(
                                                      0xff513330,
                                                    ),
                                                  ),
                                                  Text(
                                                    BigCon[index].time,
                                                    style: const TextStyle(
                                                        fontSize: 15,
                                                        color: whiteclr),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: screenSize.height * 0.005,
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color: Color(0xffFCD506),
                                                size: 16,
                                              ),
                                              Text(
                                                BigCon[index].ratting,
                                                style: const TextStyle(
                                                    fontSize: 14.5,
                                                    color: whiteclr),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: screenSize.height * 0.009,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    color: const Color(
                                                        0xff40404B)),
                                                height:
                                                    screenSize.height * 0.045,
                                                width: screenSize.width * 0.2,
                                                child: const Center(
                                                  child: Text(
                                                    "Fastfood",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: whiteclr),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: screenSize.width * 0.025,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    color: const Color(
                                                        0xff40404B)),
                                                height:
                                                    screenSize.height * 0.045,
                                                width: screenSize.width * 0.2,
                                                child: const Center(
                                                  child: Text(
                                                    "Chicken",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: whiteclr),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: screenSize.width * 0.025,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    color: const Color(
                                                        0xff40404B)),
                                                height:
                                                    screenSize.height * 0.045,
                                                width: screenSize.width * 0.12,
                                                child: const Center(
                                                  child: Text(
                                                    "Fries",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: whiteclr),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Positioned(
                              right: 0,
                              child: Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Icon(
                                    Icons.favorite_rounded,
                                    size: 25,
                                    color: whiteclr,
                                  )),
                            )
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
