import 'package:flutter/material.dart';
import 'package:pageview/pageView1.dart';
import 'package:pageview/pageView2.dart';
import 'package:pageview/pageView3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
class main_pageView extends StatefulWidget {
  const main_pageView({super.key});

  @override
  State<main_pageView> createState() => _main_pageViewState();
}

class _main_pageViewState extends State<main_pageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageViewBody(),
    );
  }
}
class PageViewBody extends StatefulWidget {
  const PageViewBody({super.key});

  @override
  State<PageViewBody> createState() => _PageViewBodyState();
}

class _PageViewBodyState extends State<PageViewBody> {
  bool lastPage=false;
  PageController _controller=PageController();
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index)
            {
              setState(() {
                lastPage=(index==2);

              });

            },
            children: [
              pageView1(),
              pageView2(),
              pageView3(),

            ],
          ),
          Container(
            alignment: Alignment(0,0.75),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  _controller.jumpToPage(2);
                }, child: Text('Skip',style: GoogleFonts.poppins(
                    color: Color(0xff5C941B)
                ))),
                SmoothPageIndicator(controller: _controller, count: 3,effect:  WormEffect(
                  dotColor: Colors.grey,
                  activeDotColor: Color(0xff33961E)
                ),),
                lastPage?ElevatedButton(onPressed: (){
                  _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.linear);

                }, child:Text('Done',style: GoogleFonts.poppins(
                  color: Color(0xff5C941B)
                ),)):ElevatedButton(onPressed: (){
                  _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.linear);

                }, child:Text('Next',style: GoogleFonts.poppins(
                    color: Color(0xff5C941B)
                ))),

              ],
            ),
          )
        ],
      ),
    );
  }
}

