import 'package:flutter/Material.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 17, right: 17),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 51),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffF4F5F9)),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 14, bottom: 13),
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
                        prefix: SizedBox(width: 21),
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
                        color: Color(0xffF4F5F9)),
                    width: double.infinity,
                    height: 283,
                    /* color: Colors.black, */
                    child: CarouselSlider(
                        items: [
                          Image.asset('assets/images/bigCart.png'),
                          Image.asset('assets/images/login.png'),
                          Image.asset('assets/images/signup.png'),
                        ],
                        options: CarouselOptions(
                          height: MediaQuery.of(context).size.height,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          viewportFraction: 0.9,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          scrollDirection: Axis.horizontal,
                        )),
                  ),
                ),
                Row(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
