import 'package:flutter/material.dart';




//        return new IntroductionScreen(
//          pages: listPagesViewModel,
//          onDone: () {
//            Navigator.pushReplacement(context, new MaterialPageRoute(builder: (BuildContext context) => new HomePage()));
//          },
//          onSkip: () {
//            Navigator.pushReplacement(context, new MaterialPageRoute(builder: (BuildContext context) => new HomePage()));
//          },
//          showSkipButton: true,
//          skip: const Text("Skip"),
//          done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
//          dotsFlex: 0,
//          skipFlex: 1,
//          nextFlex: 1,
//        );


//  List<PageViewModel> listPagesViewModel = [
//    PageViewModel(
//      titleWidget: AppBar(
//        title: Text("Sign Up"),
//        centerTitle: false,
//      ),
//      bodyWidget: SingleChildScrollView(
//        child: Padding(
//          padding: const EdgeInsets.all(16.0),
//          child: Column(
//            children: <Widget>[
//              Image.asset(
//                "assets/signup.png",
//                height: 200,
//              ),
//              SizedBox(
//                height: 24,
//              ),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("First Open the Mcodies Application Or Mcodies Website",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Add your email address, country name and Mobile Number and Click Next Button",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Than Enter OTP (Which send your mobile number) and click Verify mobile Button",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Upload Your Passport Size Photo",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Select your type of business",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Select your company established year",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Enter your full name",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Select your position",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Enter your company name",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Enter your date or birth",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Enter your home address",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Enter your alternative mobile number",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Enter your all office contact number",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Enter your all office address",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Upload your I’d proof",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Upload your company registered certificate",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Upload your company address proof",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Upload your home address proof",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Select payment terms",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Enter password",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Read T&C and tick Button",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Click submit Button",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//            ],
//          ),
//        ),
//      ),
////      image: const Center(child: Icon(Icons.android)),
//    ),
//    PageViewModel(
//      titleWidget: AppBar(
//        title: Text("Login"),
//        centerTitle: false,
//      ),
//      bodyWidget: SingleChildScrollView(
//        child: Padding(
//          padding: const EdgeInsets.all(16.0),
//          child: Column(
//            children: <Widget>[
//              Image.asset(
//                "assets/login.png",
//                height: 200,
//              ),
//              SizedBox(
//                height: 24,
//              ),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("First Open the Mcodies Application Or Mcodies Website",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Enter your email address",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Enter your password",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Tick Remember Button if you want to Remember your Login",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Read T&C and tick Button",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Click Login Button",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
////      image: const Center(child: Icon(Icons.android)),
//    ),
//    PageViewModel(
//      titleWidget: AppBar(
//        title: Text("Profile"),
//        centerTitle: false,
//      ),
//      bodyWidget: SingleChildScrollView(
//        child: Padding(
//          padding: const EdgeInsets.all(16.0),
//          child: Column(
//            children: <Widget>[
//              Image.asset(
//                "assets/profile.jpg",
//                height: 200,
//              ),
//              SizedBox(
//                height: 24,
//              ),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("There is have your major personal and company information ",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
////      image: const Center(child: Icon(Icons.android)),
//    ),
//    PageViewModel(
//      titleWidget: AppBar(
//        title: Text("My Reference"),
//        centerTitle: false,
//      ),
//      bodyWidget: SingleChildScrollView(
//        child: Padding(
//          padding: const EdgeInsets.all(16.0),
//          child: Column(
//            children: <Widget>[
//              Image.asset(
//                "assets/myreference.png",
//                height: 200,
//              ),
//              SizedBox(
//                height: 24,
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Expanded(child: Text("Once you click My reference Button there is showing two option 1.as supplier and 2. As Customer",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("As Supplier",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 20,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("There is have your Reference like (late order, service, quality and bankrupt)",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              SizedBox(height: 24,),
//
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("As Customer",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 20,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("There is have your Reference like (late payment, service, quality and bankrupt)",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
////      image: const Center(child: Icon(Icons.android)),
//    ),
//    PageViewModel(
//      titleWidget: AppBar(
//        title: Text("Add Reference"),
//        centerTitle: false,
//      ),
//      bodyWidget: SingleChildScrollView(
//        child: Padding(
//          padding: const EdgeInsets.all(16.0),
//          child: Column(
//            children: <Widget>[
//              Image.asset(
//                "assets/addreference.jpg",
//                height: 200,
//              ),
//              SizedBox(
//                height: 24,
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Expanded(child: Text("Once you click add reference Button there is showing one table",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Enter your Supplier or customer (Mobile Number, Company name or Authorize person first name) any one",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Select your supplier or customer Country name",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Enter Unique ID Number (You have to collect this number to your customer or your Supplier)",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Then click Submit Button there is showing his profile and two Option Supplier And Customer",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 20,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Supplier",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 15,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Click Supplier Button",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 15,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Enter late order delivery days",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 15,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Select bankrupt option yes or no",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 15,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Select quality of product",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 15,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Select service",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 15,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Upload proof which you write upper (Ex. Mobile screenshot, Recording etc.)",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 15,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Write any Comment",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 15,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Click submit Button",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//              SizedBox(height: 12,),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 20,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Customer",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 15,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Click Customer Button",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 15,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Enter late Payment days",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 15,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Select bankrupt option yes or no",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 15,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Select quality of product",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 15,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Select service",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 15,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Upload proof which you write upper (Ex. Mobile screenshot, Recording etc.)",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 15,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Write any Comment",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 15,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Click submit Button",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
////      image: const Center(child: Icon(Icons.android)),
//    ),
//    PageViewModel(
//      titleWidget: AppBar(
//        title: Text("Search Reference"),
//        centerTitle: false,
//      ),
//      bodyWidget: SingleChildScrollView(
//        child: Padding(
//          padding: const EdgeInsets.all(16.0),
//          child: Column(
//            children: <Widget>[
//              Image.asset(
//                "assets/searchreference.png",
//                height: 200,
//              ),
//              SizedBox(
//                height: 24,
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Expanded(child: Text("Once you click Search reference Button there is showing one table",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Enter your Supplier or customer (Mobile Number, Company name or Authorize person first name) any one",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Select your supplier or customer Country name",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Enter Unique ID Number (You have to collect this number to your customer or your Supplier)",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Then click Submit Button there is showing his profile and two Option Supplier And Customer",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 20,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Supplier",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 15,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Click Supplier Button (There is have your supplier major details)",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 15,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Click see reference Button (There is have your supplier major details like payment terms, late order delivery days, quality of product, service, bankrupt, comment etc.)",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              SizedBox(height: 12,),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 20,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Customer",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 15,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Click Customer Button (There is have your Customer major details)",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions, size: 15,),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Click see reference Button (There is have your Customer major details like payment terms, late order delivery days, quality of product, service, bankrupt, comment etc.)",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
////      image: const Center(child: Icon(Icons.android)),
//    ),
//    PageViewModel(
//      titleWidget: AppBar(
//        title: Text("Search/Add History"),
//        centerTitle: false,
//      ),
//      bodyWidget: SingleChildScrollView(
//        child: Padding(
//          padding: const EdgeInsets.all(16.0),
//          child: Column(
//            children: <Widget>[
//              Image.asset(
//                "assets/addreference.jpg",
//                height: 200,
//              ),
//              SizedBox(
//                height: 24,
//              ),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Once you click Search/add History Button there is showing user list which you add and search supplier or customer reference or any personal details",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
////      image: const Center(child: Icon(Icons.android)),
//    ),
//    PageViewModel(
//      titleWidget: AppBar(
//        title: Text("Reference Status"),
//        centerTitle: false,
//      ),
//      bodyWidget: SingleChildScrollView(
//        child: Padding(
//          padding: const EdgeInsets.all(16.0),
//          child: Column(
//            children: <Widget>[
//              Image.asset(
//                "assets/referencestatus.png",
//                height: 200,
//              ),
//              SizedBox(
//                height: 24,
//              ),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Once you click Reference Status Button there is showing your add reference status there is showing verify and unverified status",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
////      image: const Center(child: Icon(Icons.android)),
//    ),
//    PageViewModel(
//      titleWidget: AppBar(
//        title: Text("Membership Validity"),
//        centerTitle: false,
//      ),
//      bodyWidget: SingleChildScrollView(
//        child: Padding(
//          padding: const EdgeInsets.all(16.0),
//          child: Column(
//            children: <Widget>[
//              Image.asset(
//                "assets/membership.png",
//                height: 200,
//              ),
//              SizedBox(
//                height: 24,
//              ),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Once you click Membership validity Button there is showing your date of purchase membership and expiry date",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
////      image: const Center(child: Icon(Icons.android)),
//    ),
//    PageViewModel(
//      titleWidget: AppBar(
//        title: Text("Certificate"),
//        centerTitle: false,
//      ),
//      bodyWidget: SingleChildScrollView(
//        child: Padding(
//          padding: const EdgeInsets.all(16.0),
//          child: Column(
//            children: <Widget>[
//              Image.asset(
//                "assets/certificate.jpg",
//                height: 200,
//              ),
//              SizedBox(
//                height: 24,
//              ),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: const [
//                    Icon(Icons.directions),
//                    SizedBox(
//                      width: 8,
//                    ),
//                    Expanded(child: Text("Once you click Certificate Button there is company provide Membership certificate in PDF format",
//                      style: TextStyle(
//                        fontSize: 18,
//                        fontFamily: "din",
//                      ),
//                    )),
//                  ],
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
////      image: const Center(child: Icon(Icons.android)),
//    ),
//  ];