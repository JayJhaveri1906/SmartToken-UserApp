import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:token/CoreComponents.dart';

import 'OutletDetailScreen.dart';

class OutletListScreen extends CoreComponents {
  @override
  _OutletListScreenState createState() => _OutletListScreenState();
}

class _OutletListScreenState extends BaseState<OutletListScreen>{
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Container(
          child: TextField(
            decoration: new InputDecoration(
              fillColor: Colors.black12,
              prefixIcon: Icon(MdiIcons.magnify),
              filled: true,
              disabledBorder: InputBorder.none,
              border: InputBorder.none,
              hintText: 'Search Outlet..',
            ),
          )
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: SingleChildScrollView(
              child: SafeArea(
          child: Column(
            children: <Widget>[
              ResponsiveWrapper(
                shrinkWrap: true,
                      defaultScale: true,
                              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      outletCard(shopName: "Domino's Pizza", onTap: (){
                         Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) {
                            return OutletDetailScreen();
                          },
                        ));
                      }),
//                       outletCard(shopName: "The Real Peprika"),
//                       outletCard(shopName: "Star bucks"),
                    ],
                  ),
                ),
              ),

              Container(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/dominosLogo.jpg"),
                      ),
                      title: Text("Domino's Pizza", 
                        style: Theme.of(context).textTheme.bodyText1.apply(fontWeightDelta: 2),
                      ),

                      subtitle: Text("US-2, President Plaza Opposite Yes Bank Near Old RTO, Nanpura, Surat",
                        style: Theme.of(context).textTheme.caption,
                        overflow: TextOverflow.ellipsis,
                      ),

                      onTap: (){},
                    ),
                    ListTile(
                      leading: CircleAvatar(
                      ),
                      title: Text("Domino's Pizza", 
                        style: Theme.of(context).textTheme.bodyText1.apply(fontWeightDelta: 2),
                      ),

                      subtitle: Text("US-2, President Plaza Opposite Yes Bank Near Old RTO, Nanpura, Surat",
                        style: Theme.of(context).textTheme.caption,
                        overflow: TextOverflow.ellipsis,
                      ),

                      onTap: (){},
                    ),
                     ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/dominosLogo.jpg"),
                      ),
                      title: Text("Domino's Pizza", 
                        style: Theme.of(context).textTheme.bodyText1.apply(fontWeightDelta: 2),
                      ),

                      subtitle: Text("US-2, President Plaza Opposite Yes Bank Near Old RTO, Nanpura, Surat",
                        style: Theme.of(context).textTheme.caption,
                        overflow: TextOverflow.ellipsis,
                      ),

                      onTap: (){},
                    ),
                    ListTile(
                      leading: CircleAvatar(
                      ),
                      title: Text("Domino's Pizza", 
                        style: Theme.of(context).textTheme.bodyText1.apply(fontWeightDelta: 2),
                      ),

                      subtitle: Text("US-2, President Plaza Opposite Yes Bank Near Old RTO, Nanpura, Surat",
                        style: Theme.of(context).textTheme.caption,
                        overflow: TextOverflow.ellipsis,
                      ),

                      onTap: (){},
                    ),
                     ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/dominosLogo.jpg"),
                      ),
                      title: Text("Domino's Pizza", 
                        style: Theme.of(context).textTheme.bodyText1.apply(fontWeightDelta: 2),
                      ),

                      subtitle: Text("US-2, President Plaza Opposite Yes Bank Near Old RTO, Nanpura, Surat",
                        style: Theme.of(context).textTheme.caption,
                        overflow: TextOverflow.ellipsis,
                      ),

                      onTap: (){},
                    ),
                    ListTile(
                      leading: CircleAvatar(
                      ),
                      title: Text("Domino's Pizza", 
                        style: Theme.of(context).textTheme.bodyText1.apply(fontWeightDelta: 2),
                      ),

                      subtitle: Text("US-2, President Plaza Opposite Yes Bank Near Old RTO, Nanpura, Surat",
                        style: Theme.of(context).textTheme.caption,
                        overflow: TextOverflow.ellipsis,
                      ),

                      onTap: (){},
                    ),
                     ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/dominosLogo.jpg"),
                      ),
                      title: Text("Domino's Pizza", 
                        style: Theme.of(context).textTheme.bodyText1.apply(fontWeightDelta: 2),
                      ),

                      subtitle: Text("US-2, President Plaza Opposite Yes Bank Near Old RTO, Nanpura, Surat",
                        style: Theme.of(context).textTheme.caption,
                        overflow: TextOverflow.ellipsis,
                      ),

                      onTap: (){},
                    ),
                    ListTile(
                      leading: CircleAvatar(
                      ),
                      title: Text("Domino's Pizza", 
                        style: Theme.of(context).textTheme.bodyText1.apply(fontWeightDelta: 2),
                      ),

                      subtitle: Text("US-2, President Plaza Opposite Yes Bank Near Old RTO, Nanpura, Surat",
                        style: Theme.of(context).textTheme.caption,
                        overflow: TextOverflow.ellipsis,
                      ),

                      onTap: (){},
                    ),
                     ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/dominosLogo.jpg"),
                      ),
                      title: Text("Domino's Pizza", 
                        style: Theme.of(context).textTheme.bodyText1.apply(fontWeightDelta: 2),
                      ),

                      subtitle: Text("US-2, President Plaza Opposite Yes Bank Near Old RTO, Nanpura, Surat",
                        style: Theme.of(context).textTheme.caption,
                        overflow: TextOverflow.ellipsis,
                      ),

                      onTap: (){},
                    ),
                    ListTile(
                      leading: CircleAvatar(
                      ),
                      title: Text("Domino's Pizza", 
                        style: Theme.of(context).textTheme.bodyText1.apply(fontWeightDelta: 2),
                      ),

                      subtitle: Text("US-2, President Plaza Opposite Yes Bank Near Old RTO, Nanpura, Surat",
                        style: Theme.of(context).textTheme.caption,
                        overflow: TextOverflow.ellipsis,
                      ),

                      onTap: (){},
                    ),
                    



                  ],
                ),
              )
            ],
          )
          ),
      ),
    ); 
  }
  
}
