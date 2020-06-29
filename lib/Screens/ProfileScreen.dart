import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:token/Models/address.dart';
import 'package:token/Models/user.dart';
import 'package:token/PreferenceManager/PreferenceManager.dart' as PreferenceManager;
import 'package:token/PreferenceManager/PreferenceManager.dart';
import 'HomePage.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({
    Key key,
  }) : super(key: key);

  @override
  ProfileScreenState createState() {
    return new ProfileScreenState();
  }
}

class ProfileScreenState extends State<ProfileScreen> with SingleTickerProviderStateMixin {
  bool isLoading = false;
  final FocusNode myFocusNode = FocusNode();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;

  User user;

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

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
      if (this.user.address.length == 0)
          this.user.address.add(new Address(
              addressLine1: "",
              addressLine2: "",
              city: "",
              country: "",
              id: 1,
              pincode: 0,
              state: "",
              userId: 0));
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

    return new Scaffold(      
        body: GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: new Container(
            color: Colors.white,
            child: new ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    new Container(
                      color: Colors.white,
                      child: new Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: new Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Container(
                                    width: 100.0,
                                    height: 100.0,
                                    child: CircleAvatar(backgroundImage: NetworkImage(user.profileImage ?? "")),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    new Form(
                      autovalidate: _autoValidate,
                      key: _formKey,
                      child: new Container(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 25.0),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.0, right: 25.0, top: 25.0),
                                  child: new Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      new Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          new Text(
                                            'Name',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.0, right: 25.0, top: 2.0),
                                  child: new Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      new Flexible(
                                        child: new TextFormField(
                                          enabled: false,
                                          controller: TextEditingController(text: (user.firstName ?? "") + " " + (user.lastName ?? "")),
                                        ),
                                      ),
                                    ],
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.0, right: 25.0, top: 25.0),
                                  child: new Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      new Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          new Text(
                                            'Email ID',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.0, right: 25.0, top: 2.0),
                                  child: new Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      new Flexible(
                                        child: new TextFormField(
                                          enabled: false,
                                          controller: TextEditingController(text: user.email ?? ""),
                                        ),
                                      ),
                                    ],
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.0, right: 25.0, top: 25.0),
                                  child: new Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      new Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          new Text(
                                            'Mobile',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.0, right: 25.0, top: 2.0),
                                  child: new Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      new Flexible(
                                        child: new TextFormField(
                                          controller: TextEditingController(text: user.mobileNumber ?? ""),
                                          keyboardType: TextInputType.number,
                                          onChanged: (String val){
                                            user.mobileNumber = val;
                                          },
                                          validator: (String val){
                                            if (val.length != 10) {
                                              return "Enter Valid Mobile Number";
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    ],
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.0, right: 25.0, top: 25.0),
                                  child: new Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      new Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          new Text(
                                            'Address',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.0, right: 25.0, top: 2.0),
                                  child: new Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      new Flexible(
                                        child: new TextFormField(
                                            controller: TextEditingController(text: user.address.length > 0 ? user.address.first.addressLine1 ?? "" : ""),
                                            onChanged: (String val) {
                                              user.address.first.addressLine1 = val;
                                            },
                                            validator: (String val){
                                              if (val.length == 0) {
                                                return "Enter Address";
                                              }
                                              return null;
                                            },
                                            decoration: const InputDecoration(
                                                hintText: "Address line 1")
                                        ),
                                      ),
                                    ],
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.0, right: 25.0, top: 2.0),
                                  child: new Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      new Flexible(
                                        child: new TextFormField(
                                            controller: TextEditingController(text: user.address.length > 0 ? user.address.first.addressLine2 ?? "" : ""),
                                            onChanged: (String val) {
                                              user.address.first.addressLine2 = val;
                                            },
                                            decoration: const InputDecoration(
                                                hintText: "Address line 2")
                                        ),
                                      ),
                                    ],
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.0, right: 25.0, top: 2.0),
                                  child: new Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Flexible(
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 10.0),
                                          child: new TextFormField(
                                            controller: TextEditingController(text: user.address.length > 0 ? user.address.first.city ?? "" : ""),
                                            onChanged: (String val) {
                                              user.address.first.city = val;
                                            },
                                            validator: (String val){
                                              if (val.length == 0) {
                                                return "Enter City";
                                              }
                                              return null;
                                            },
                                            decoration: const InputDecoration(
                                                hintText: "City"),
                                          ),
                                        ),
                                        flex: 2,
                                      ),
                                      Flexible(
                                        child: new TextFormField(
                                          controller: TextEditingController(text: user.address.length > 0 ? user.address.first.state ?? "" : ""),
                                          onChanged: (String val) {
                                            user.address.first.state = val;
                                          },
                                          validator: (String val){
                                            if (val.length == 0) {
                                              return "Enter State";
                                            }
                                            return null;
                                          },
                                          decoration: const InputDecoration(
                                              hintText: "State"),
                                        ),
                                        flex: 2,
                                      ),
                                    ],
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 25.0, right: 25.0, top: 2.0),
                                  child: new Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Flexible(
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 10.0),
                                          child: new TextFormField(
                                            controller: TextEditingController(text: user.address.length > 0 ? user.address.first.country ?? "" : ""),
                                            onChanged: (String val) {
                                              user.address.first.country = val;
                                            },
                                            validator: (String val){
                                              if (val.length == 0) {
                                                return "Enter Country";
                                              }
                                              return null;
                                            },
                                            decoration: const InputDecoration(
                                                hintText: "Country"),
                                          ),
                                        ),
                                        flex: 2,
                                      ),
                                      Flexible(
                                        child: new TextFormField(
                                          keyboardType: TextInputType.number,
                                          controller: TextEditingController(text: user.address.length > 0 ? (user.address.first.pincode ?? 0).toString() : ""),
                                          onChanged: (String val) {
                                            user.address.first.pincode = int.parse(val);
                                          },
                                          validator: (String val){
                                            if (val.length != 6) {
                                              return "Enter Valid Pincode";
                                            }
                                            return null;
                                          },
                                          decoration: const InputDecoration(
                                              hintText: "Pin Code"),
                                        ),
                                        flex: 2,
                                      ),
                                    ],
                                  )),
                              _getActionButtons()
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Widget _getActionButtons() {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              child: new RaisedButton(
                child: new Text("Save"),
                textColor: Colors.white,
                color: Theme.of(context).primaryColor,
                onPressed: () {

                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                  } else {
                    setState(() {
                      _autoValidate = true;
                    });
                    return;
                  }

                  setState(() {
                    FocusScope.of(context).requestFocus(new FocusNode());
                    PreferenceManager.hasuraConnect.mutation(PreferenceManager.updateUserMutation, variables: {
                      "user_id": user.id,
                      "mobile_number": user.mobileNumber,
                      "address1": user.address.first.addressLine1,
                      "address2": user.address.first.addressLine2,
                      "city": user.address.first.city,
                      "state": user.address.first.state,
                      "country": user.address.first.country,
                      "pincode": user.address.first.pincode.toString()
                    });
                  });
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            HomePage(defaultPage: 0,)),
                  );
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
    )),
        ],
      ),
    );
  }
}
