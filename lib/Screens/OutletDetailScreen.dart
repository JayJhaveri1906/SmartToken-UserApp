import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:token/Theme.dart';

class OutletDetailScreen extends StatefulWidget {
  @override
  _OutletDetailScreenState createState() => _OutletDetailScreenState();
}

class _OutletDetailScreenState extends State<OutletDetailScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Outlet Detail"),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Hero(
                    tag: "bg",
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.6), BlendMode.dstATop),
                          image: AssetImage("assets/background.jpg")
                          )
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20,),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text("VERIFIED", style: Theme.of(context).textTheme.overline.apply(color: Colors.green, fontWeightDelta: 4, fontSizeFactor: 1.3),)),

                        SizedBox(height: 50,),
                        Hero(
                          tag: "name",
                          child: Text("Domino's Pizza",
                            style: Theme.of(context).textTheme.headline5.apply(fontWeightDelta: 2),
                          ),
                        ),

                        SizedBox(height: 20,),

                        Text("US-2, President Plaza Opposite Yes Bank Near Old RTO, Nanpura, Surat",
                          style: Theme.of(context).textTheme.subtitle1.apply(color: Colors.black45),
                        ),

                        SizedBox(height: 30,),

                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(MdiIcons.phoneOutline, size: 18,),
                              SizedBox(width: 15,),
                              Text("98765 56789",
                              style: Theme.of(context).textTheme.bodyText1,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20,)
                      ],
                    ),
                  )
                ],
              ),

              Positioned(
                top: 150,
                left: 16,
                            child: Container(
                  child: Hero(
                    tag: "logo",
                                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/dominosLogo.jpg"),
                      radius: 50,
                    ),
                  ),
                ),
              )


            ],
          ),
        )
        ),

        floatingActionButton: RaisedButton(
          onPressed: (){},
          color: DesignCourseAppTheme.primary,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Text("BOOK NOW", style: Theme.of(context).textTheme.button.apply(color: Colors.white),),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          )
      //   FloatingActionButton(
      //   onPressed: () {
      //     // Add your onPressed code here!
      //   },
      //   child: Text("Book Now"),
      //   backgroundColor: Colors.green,
      // ),
    );
  }

}


