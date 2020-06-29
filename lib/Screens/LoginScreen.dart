import 'package:avatar_glow/avatar_glow.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:token/PreferenceManager/PreferenceManager.dart' as PreferenceManager;
import 'package:token/Common/delayed_animation.dart';
import 'package:token/Screens/HomePage.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with SingleTickerProviderStateMixin{

  final int delayedAmount = 500;
  double _scale;
  AnimationController _controller;

  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool isUserSignedIn = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });
    super.initState();

    checkIfUserIsSignedIn();
  }

  void checkIfUserIsSignedIn() async {
    var userSignedIn = await _googleSignIn.isSignedIn();

    setState(() {
      isUserSignedIn = userSignedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    _scale = 1 - _controller.value;

    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AvatarGlow(
                endRadius: 90,
                duration: Duration(seconds: 2),
                glowColor: Colors.white24,
                repeat: true,
                repeatPauseDuration: Duration(seconds: 2),
                startDelay: Duration(seconds: 1),
                child: Material(
                    elevation: 8.0,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[100],
                      child: FlutterLogo(
                        size: 50.0,
                      ),
                      radius: 50.0,
                    )),
              ),
              DelayedAnimation(
                child: Text(
                  "Hi There",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                      color: color),
                ),
                delay: delayedAmount + 1000,
              ),
              DelayedAnimation(
                child: Text(
                  "I'm SmartToken",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                      color: color),
                ),
                delay: delayedAmount + 2000,
              ),
              SizedBox(
                height: 30.0,
              ),
              DelayedAnimation(
                child: Text(
                  "Your New Personal Token",
                  style: TextStyle(fontSize: 20.0, color: color),
                ),
                delay: delayedAmount + 3000,
              ),
//              DelayedAnimation(
//                child: Text(
//                  "Journaling  companion",
//                  style: TextStyle(fontSize: 20.0, color: color),
//                ),
//                delay: delayedAmount + 3000,
//              ),
              SizedBox(
                height: 100.0,
              ),
              DelayedAnimation(
                child: GestureDetector(
                  onTapDown: _onTapDown,
                  onTapUp: _onTapUp,
                  child: Transform.scale(
                    scale: _scale,
                    child: _animatedButtonUI,
                  ),
                ),
                delay: delayedAmount + 4000,
              ),
              SizedBox(height: 50.0,),
            ],
          ),
        )
    );
  }

  Widget get _animatedButtonUI => GestureDetector(
    onTap: () {
      onGoogleSignIn(context);
    },
    child: FittedBox(
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: Colors.white,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: 16,),
              Image.asset(
                "assets/google_logo.png",
                scale: 4,
              ),
              SizedBox(width: 16,),
              Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 18.0,
//                fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 16,),
            ],
          ),
        ),
      ),
    ),
  );

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }

  Future<FirebaseUser> _handleSignIn() async {
    FirebaseUser user;
    bool userSignedIn = await _googleSignIn.isSignedIn();

    setState(() {
      isUserSignedIn = userSignedIn;
    });

    if (isUserSignedIn) {
      user = await _auth.currentUser();
    }
    else {
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      user = (await _auth.signInWithCredential(credential)).user;
      userSignedIn = await _googleSignIn.isSignedIn();

      var data = await PreferenceManager.hasuraConnect.query(PreferenceManager.getUserQuery, variables: {"email": user.email});
      if (data["data"]['users'].length > 0) { // Already User

      }else { // New User
        var addUserData = await PreferenceManager.hasuraConnect.mutation(PreferenceManager.addUserMutation, variables: {
          "email": user.email,
          "first_name": user.displayName.split(" ").first,
          "last_name": user.displayName.replaceAll(user.displayName.split(" ").first, "").replaceFirst(" ", ""),
          "mobile_number": user.phoneNumber,
          "profile_image": user.photoUrl
        });
      }

      setState(() {
        isUserSignedIn = userSignedIn;
        PreferenceManager.saveUserTokenInPreference(_googleSignIn.currentUser.email);
      });
    }
    return user;
  }

  void onGoogleSignIn(BuildContext context) async {
    FirebaseUser user = await _handleSignIn();
    var userSignedIn = await Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) =>
              HomePage(defaultPage: 2,)),
    );
  }
}

//class WelcomeUserWidget extends StatelessWidget {
//
//  GoogleSignIn _googleSignIn;
//  FirebaseUser _user;
//
//  WelcomeUserWidget(FirebaseUser user, GoogleSignIn signIn) {
//    _user = user;
//    _googleSignIn = signIn;
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          backgroundColor: Colors.white,
//          iconTheme: IconThemeData(color: Colors.black),
//          elevation: 0,
//        ),
//        body: Container(
//            color: Colors.white,
//            padding: EdgeInsets.all(50),
//            child: Align(
//                alignment: Alignment.center,
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    ClipOval(
//                        child: Image.network(
//                            _user.photoUrl,
//                            width: 100,
//                            height: 100,
//                            fit: BoxFit.cover
//                        )
//                    ),
//                    SizedBox(height: 20),
//                    Text('Welcome,', textAlign: TextAlign.center),
//                    Text(_user.displayName, textAlign: TextAlign.center,
//                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
//                    SizedBox(height: 20),
//                    FlatButton(
//                        shape: RoundedRectangleBorder(
//                          borderRadius: BorderRadius.circular(20),
//                        ),
//                        onPressed: () {
//                          _googleSignIn.signOut();
//                          Navigator.pop(context, false);
//                        },
//                        color: Colors.redAccent,
//                        child: Padding(
//                            padding: EdgeInsets.all(10),
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.center,
//                              crossAxisAlignment: CrossAxisAlignment.center,
//                              children: <Widget>[
//                                Icon(Icons.exit_to_app, color: Colors.white),
//                                SizedBox(width: 10),
//                                Text('Log out of Google', style: TextStyle(color: Colors.white))
//                              ],
//                            )
//                        )
//                    )
//                  ],
//                )
//            )
//        )
//    );
//  }
//}
