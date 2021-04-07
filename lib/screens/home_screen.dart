import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            // Drawer and saerch icon
            Container(
              height: 57.6,
              margin: EdgeInsets.only(top: 28.8, left: 28.8, right: 28.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 57.6,
                    width: 57.6,
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      color: Colors.black12
                    ),
                    child: SvgPicture.asset('assets/svg/drawer.svg'),
                  ),
                  Container(
                    height: 57.6,
                    width: 57.6,
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      color: Colors.black12
                    ),
                    child: SvgPicture.asset('assets/svg/search.svg'),
                  ),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 48, left: 28.8),
              child: Text('Explore\n the Nature', style: GoogleFonts.playfairDisplay(
                fontSize: 40,
                fontWeight: FontWeight.w700
                ),
              ),
            ),
            Container(
              height: 30,
              margin: EdgeInsets.only(left: 14.4, top: 28.8),
              child: DefaultTabController(
                length: 4,
                child: TabBar(
                  labelPadding: EdgeInsets.only(left: 14.4, right: 14.4),
                  indicatorPadding: EdgeInsets.only(left: 14.4, right: 14.4),
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black12,
                  labelStyle: GoogleFonts.lato(
                    fontSize: 14, fontWeight: FontWeight.w700
                  ),
                  unselectedLabelStyle: GoogleFonts.lato(
                    fontSize: 14, fontWeight: FontWeight.w700
                  ),
                  indicatorColor: Colors.black,
                  tabs: [
                    Tab(
                      child: Container(
                        child: Text('Recomended'),
                      ),
                    ),
                    Tab(
                      child: Container(
                        child: Text('Popular'),
                      ),
                    ),
                    Tab(
                      child: Container(
                        child: Text('New Destination'),
                      ),
                    ),
                    Tab(
                      child: Container(
                        child: Text('Hidden Gems'),
                      ),
                    )
                  ],
                )),
            )
          ],
        )
      )
    );
  }
}

class RoundedRectangleTabIndicator {
}