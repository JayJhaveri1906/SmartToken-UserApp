import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:token/CoreComponents.dart';
import 'package:token/Screens/HomeScreen.dart';
import 'package:token/Screens/OutletListScreen.dart';
import 'package:token/Screens/profile_qr.dart';
import 'package:token/Theme.dart';
import 'LoginScreen.dart';
import 'ProfileScreen.dart';
import 'package:token/PreferenceManager/PreferenceManager.dart' as PreferenceManager;

class DrawerItem {
  String title;
  IconData icon;

  DrawerItem(this.title, this.icon);
}

// ignore: must_be_immutable
class HomePage extends StatefulWidget{

  HomePage({Key key, @required this.defaultPage}) : super(key: key,);

  int defaultPage = 0;

  FirebaseUser user;
  final drawerItems = [
    new DrawerItem("Home", Icons.home),
    new DrawerItem("Search Outlets", Icons.search),
    new DrawerItem("Profile", Icons.person),
    new DrawerItem("Help", Icons.help),
    new DrawerItem("Logout", Icons.settings_power),
  ];

  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return HomeScreen();
      case 1:
        return OutletListScreen();
      case 2:
        return ProfileScreen();

      default:
        return Center(
          child: new Text(
            "Coming soon...",
            style: TextStyle(
              fontSize: 18,
              
            ),
          ),
        );
    }
  }

  _onSelectItem(int index) {
    Navigator.of(context).pop();
    if (index == widget.drawerItems.length - 1) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Text(
                "Are you sure you want to logout?",
                style: TextStyle(
//                  fontSize: 25,
                ),
              ),
            ),
            actions: <Widget>[
              FlatButton(
                padding: EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
                child: Text(
                  "No",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                padding: EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
                child: Text(
                  "Yes",
                  style: TextStyle(fontSize: 15,  fontWeight: FontWeight.bold),
                ),
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                onPressed: () async {
                  widget._googleSignIn.signOut();
                  PreferenceManager.deleteUserTokenFromPreference();
                  Navigator.pushReplacement(context, new MaterialPageRoute(builder: (BuildContext context) => new LoginScreen()));
                },
              ),
            ],
          );
        },
      );
      return;
    }
    setState(() => _selectedDrawerIndex = index);
  }

  @override
  initState() {
    super.initState();
    _selectedDrawerIndex = widget.defaultPage;
    prepareUser();
  }

  prepareUser() async {
    widget.user = await FirebaseAuth.instance.currentUser();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    drawerOptions.add(new UserAccountsDrawerHeader(
      accountEmail: Text(widget.user != null ? widget.user.email : "Loading email..."),
      accountName:  Text(widget.user != null ? widget.user.displayName : "Loading name..."),
      currentAccountPicture: widget.user != null ? CircleAvatar(backgroundImage: NetworkImage(widget.user.photoUrl)) : Icon(Icons.person),
      onDetailsPressed: (){
        _onSelectItem(2);
      },
    ));
    for (var i = 0; i < widget.drawerItems.length; i++) { // start with 0 if you want first option in list
      var d = widget.drawerItems[i];
      drawerOptions.add(new ListTile(
        leading: new Icon(
          d.icon,
        ),
        title: new Text(
          d.title,
          style: TextStyle(
            fontSize: 18,
            
          ),
        ),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }

    return new Scaffold(
      appBar: new AppBar(
        // here we display the title corresponding to the fragment
        // you can instead choose to have a static title
        title: Row(
          children: <Widget>[
            SizedBox(
              width: 15,
            ),
            new Text(
              widget.drawerItems[_selectedDrawerIndex].title,
              overflow: TextOverflow.fade,
            ),
          ],
        ),

        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 16),
            child: InkWell(
                child: Center(
                  child: Container(
                    width: 35.0,
                    height: 35.0,
                    child: CircleAvatar(backgroundImage: NetworkImage(widget.user.photoUrl ?? "")),
                  ),
                ),
                onTap: (){
                  showModalBottomSheet(
                    // isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                      ),
                      backgroundColor: Colors.white,
                      context: context,
                      builder: (BuildContext context){
                        return ProfileQR();
                      }
                  );
                }
            ),
          )
        ],
        titleSpacing: 0.0,
        centerTitle: false,
      ),
      drawer: SafeArea(
        bottom: false,
        left: false,
        child: new Drawer(
          child: Container(
            child: SingleChildScrollView(
              child: new Column(
                children: <Widget>[
                  new Column(children: drawerOptions),
                ],
              ),
            ),
          ),
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );

  }
}
