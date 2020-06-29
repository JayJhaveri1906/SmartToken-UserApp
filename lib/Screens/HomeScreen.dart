import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:token/Models/token.dart';
import 'package:token/Models/user.dart';
import 'package:token/PreferenceManager/PreferenceManager.dart' as PreferenceManager;
import 'package:token/Theme.dart';
import 'package:token/CoreComponents.dart';
import 'package:intl/intl.dart';

class HomeScreen extends CoreComponents {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends BaseState<HomeScreen> {
  List<Token> upcomingTokens = [];
  List<Token> pastTokens = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _getTokens();
  }

  void _getTokens() async {
    this.upcomingTokens = [];
    this.pastTokens = [];

    setState(() {
      isLoading = true;
    });
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    dynamic myUpcomingTokensResponse = await PreferenceManager.hasuraConnect.query(PreferenceManager.getMyUpcomingTokensQuery, variables: {
      "email": user.email,
      "time": DateFormat('yyyy-MM-dd').format(DateTime.now())
    });
    if (myUpcomingTokensResponse['data']['tokens'].length > 0) {
      (myUpcomingTokensResponse['data']['tokens'] as List).forEach((element) {
        this.upcomingTokens.add(Token.fromJson(element));
      });
    }

    dynamic myPastTokensResponse = await PreferenceManager.hasuraConnect.query(PreferenceManager.getMyPastTokensQuery, variables: {
      "email": user.email,
      "time": DateFormat('yyyy-MM-dd').format(DateTime.now())
    });
    if (myPastTokensResponse['data']['tokens'].length > 0) {
      (myPastTokensResponse['data']['tokens'] as List).forEach((element) {
        this.pastTokens.add(Token.fromJson(element));
      });
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {

    if (isLoading) {
      return new Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelStyle:
                TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: DesignCourseAppTheme.primary,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicatorColor: DesignCourseAppTheme.primary,
                indicator: MD2Indicator(
                  //it begins here
                    indicatorHeight: 3,
                    indicatorColor: DesignCourseAppTheme.primary,
                    indicatorSize: MD2IndicatorSize.normal),
                tabs: <Widget>[
                  Tab(
                    text: "Today(${upcomingTokens.length})",
                  ),
                  Tab(
                    text: "Past(${pastTokens.length})",
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ResponsiveWrapper(
              shrinkWrap: true,
              defaultScale: true,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 50),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height / 1.2,
                    viewportFraction: 0.85,
                    initialPage: 0,
                    enlargeCenterPage: true,
                  ),
                  items: this.upcomingTokens.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            margin: EdgeInsets.symmetric(horizontal: 0),
                            child: myTokenCard(
                                tokenNumber: i.tokenNumber.toString(),
                                shopName: i.store.name,
                                shopNumber: i.store.mobileNumber.toString()
                            )
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ),
            ResponsiveWrapper(
              shrinkWrap: true,
              defaultScale: true,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 50),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height / 1.2,
                    viewportFraction: 0.85,
                    initialPage: 0,
                    enlargeCenterPage: true,
                  ),
                  items: this.pastTokens.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            margin: EdgeInsets.symmetric(horizontal: 0),
                            child: myTokenCard(
                                tokenNumber: i.tokenNumber.toString(),
                                shopName: i.store.name,
                                shopNumber: i.store.mobileNumber.toString()
                            )
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget ticketDetailsWidget(String firstTitle, String firstDesc,
      String secondTitle, String secondDesc) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  firstTitle,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    firstDesc,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  secondTitle,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    secondDesc,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
