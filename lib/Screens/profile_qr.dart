import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:token/Models/user.dart';
import 'package:token/PreferenceManager/PreferenceManager.dart' as PreferenceManager;
import 'package:qr_flutter/qr_flutter.dart';

class ProfileQR extends StatefulWidget {
  @override
  _ProfileQRState createState() => _ProfileQRState();
}

class _ProfileQRState extends State<ProfileQR> {

  User user;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _getUserProfile();
  }

  void _getUserProfile() async {
    setState(() {
      isLoading = true;
    });
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    dynamic userData = await PreferenceManager.hasuraConnect.query(PreferenceManager.getUserQuery, variables: {"email": user.email});
    if (userData['data']['users'].length > 0) {
      dynamic firstUser = (userData['data']['users'] as List).first;
      this.user = User.fromJson(firstUser);
      setState(() {
        isLoading = false;
      });
    }
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: ResponsiveWrapper(
        shrinkWrap: true,
        defaultScale: true,
        child: SafeArea(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 0.0, left: 30.0, right: 30.0),
                        child: Container(
                          width: 250.0,
                          height: 250.0,
                          child: QrImage(
                            data: user.id.toString(),
                            version: QrVersions.auto,
                            size: 200.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  Text(user.firstName + " " + user.lastName,style: Theme.of(context).textTheme.headline5.apply(fontWeightDelta: 2, color: Colors.black87),),
                  SizedBox(height: 10,),
                  Text( user.mobileNumber ?? "87653 56773",style: Theme.of(context).textTheme.bodyText1,),
                ],
              ),
            )
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
