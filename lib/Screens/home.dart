import 'package:flutter/Material.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int activeIndex = 0;

  Widget buildint() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: 4,
        effect: const WormEffect(
          activeDotColor: Colors.green,
          dotColor: Colors.white,
          dotHeight: 6,
          dotWidth: 6,
          spacing: 5,
        ),
      );

  @override
  Widget build(BuildContext context) {
    double carouselwidth = MediaQuery.of(context).size.width - 34;
    double carouselheight = carouselwidth * 283 / 380;
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 17, right: 17),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 51),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xffF4F5F9)),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(top: 14, bottom: 13),
                          isDense: true,
                          // fillColor: Colors.white,
                          // filled: true,
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins-Medium',
                              color: Color(0xFF868889)),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 28),
                            child: Image.asset(
                              'assets/images/search.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                          prefix: const SizedBox(width: 21),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 28),
                            child: Image.asset(
                              'assets/images/filter.png',
                              width: 26.48,
                              height: 16.88,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xffF4F5F9)),
                      width: carouselwidth,
                      height: carouselheight,
                      /* color: Colors.black, */
                      child: Stack(
                        children: [
                          CarouselSlider(
                              items: [
                                Image.asset('assets/images/banner1.png'),
                                Image.asset('assets/images/banner1.png'),
                                Image.asset('assets/images/banner1.png'),
                                Image.asset('assets/images/banner1.png'),
                              ],
                              options: CarouselOptions(
                                height: carouselheight,
                                // width: MediaQuery.of(context).size.width,
                                autoPlay: true,
                                autoPlayInterval: const Duration(seconds: 3),
                                autoPlayAnimationDuration:
                                    const Duration(milliseconds: 800),
                                autoPlayCurve: Curves.fastOutSlowIn,
                                enlargeCenterPage: true,
                                viewportFraction: 1,
                                initialPage: 0,
                                enableInfiniteScroll: true,
                                reverse: false,
                                scrollDirection: Axis.horizontal,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    activeIndex = index;
                                  });
                                },
                              )),
                          Positioned(
                            bottom: 30,
                            left: 16,
                            child: buildint(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text("Categories",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins-SemiBold',
                            color: Color(0xFF000000))),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 17),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Container(
                                    //1
                                    width: 52,
                                    height: 52,
                                    decoration: const BoxDecoration(
                                        color: Color(0xffF4F5F9),
                                        shape: BoxShape.circle),
                                    child:
                                        Image.asset('assets/images/veg.png')),
                                const Text("Vegetables",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins-Medium',
                                        color: Color(0xFF868889))),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 21),
                              child: Column(
                                children: [
                                  Container(
                                    //1
                                    width: 52,
                                    height: 52,
                                    decoration: const BoxDecoration(
                                        color: Color(0xffF4F5F9),
                                        shape: BoxShape.circle),
                                    child:
                                        Image.asset('assets/images/fruit.png'),
                                  ),
                                  const Text("Fruits",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins-Medium',
                                          color: Color(0xFF868889))),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 21),
                              child: Column(
                                children: [
                                  Container(
                                    //1
                                    width: 52,
                                    height: 52,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffF4F5F9),
                                        shape: BoxShape.circle),
                                    child: Image.asset('assets/images/bev.png'),
                                  ),
                                  Text("Beverages",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins-Medium',
                                          color: Color(0xFF868889))),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 21),
                              child: Column(
                                children: [
                                  Container(
                                    //1
                                    width: 52,
                                    height: 52,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffF4F5F9),
                                        shape: BoxShape.circle),
                                    child: Image.asset(
                                        'assets/images/grocery.png'),
                                  ),
                                  Text("Grocery",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins-Medium',
                                          color: Color(0xFF868889))),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 21),
                              child: Column(
                                children: [
                                  Container(
                                    //1
                                    width: 52,
                                    height: 52,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffF4F5F9),
                                        shape: BoxShape.circle),
                                    child: Image.asset('assets/images/oil.png'),
                                  ),
                                  Text("Edible oil",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins-Medium',
                                          color: Color(0xFF868889))),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 21),
                              child: Column(
                                children: [
                                  Container(
                                    //1
                                    width: 52,
                                    height: 52,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffF4F5F9),
                                        shape: BoxShape.circle),
                                    child:
                                        Image.asset('assets/images/hold.png'),
                                  ),
                                  Text("Household",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins-Medium',
                                          color: Color(0xFF868889))),
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: Text("Featured products",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins-SemiBold',
                            color: Color(0xFF000000))),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 17),
                      child: Container(
                          height: 234,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Container(
                                    width: 150,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffF4F5F9),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 16),
                                          child: Image.asset(
                                            'assets/images/fruit.png',
                                            height: 100,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 16),
                                          child: Text("Vegetables",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'Poppins-Medium',
                                                  color: Color(0xFF868889))),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 16),
                                          child: Text("Rs. 100",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'Poppins-Medium',
                                                  color: Color(0xFF868889))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Container(
                                      width: 150,
                                      height: 200,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffF4F5F9),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ))
                              ])))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
