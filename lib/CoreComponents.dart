import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'Theme.dart';

abstract class CoreComponents extends StatefulWidget {
  CoreComponents({Key key}) : super(key: key);
}

abstract class BaseState<Page extends CoreComponents> extends State<Page> {
//function

  Widget myTokenCard({@required String tokenNumber, shopName, shopNumber, backgroundImage, storeLogo, int tokenId,}) {
    return Container(
      child: Material(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
        child: InkWell(
          // When the user taps the button, show a snackbar.
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/background.jpg"),
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.2), BlendMode.dstATop),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 36,
                      backgroundImage: AssetImage('assets/dominosLogo.jpg'),
                    ),
                    Text(tokenNumber,
                        style: Theme.of(context)
                            .textTheme
                            .headline3
                            .apply(color: Colors.white, fontWeightDelta: 2)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  shopName,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .apply(color: Colors.white, fontWeightDelta: 2),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      MdiIcons.phoneOutline,
                      color: Colors.white,
                      size: 18,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      shopNumber,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .apply(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 0.0, left: 30.0, right: 30.0),
                        child: Container(
                          width: 200.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: QrImage(
                            data: tokenId.toString(),
                            version: QrVersions.auto,
                            size: 200.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

    Widget outletCard({@required shopName, Function onTap}) {
    return Container(
      child: Material(
        
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          // When the user taps the button, show a snackbar.
          onTap: () {
            onTap();
          },
          child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width/3,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 1),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Hero(
                              tag: "bg",
                                                          child: Container(
                                height: 80,
                                
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/background.jpg")
                                    ),
                                  color: Colors.grey,                            
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                                ),
                              ),
                            ),
                            Hero(
                              tag: "name",
                                                          child: Container(                              
                                margin: EdgeInsets.only(top: 25),
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Text(shopName,
                                  style: Theme.of(context).textTheme.bodyText1.apply(fontWeightDelta: 2),
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                            ),
                          ],
                        ),
                        
                        Center(
                          child: Positioned(
                            bottom: 50,                          
                            child: Hero(
                              tag: "logo",
                                                          child: CircleAvatar(
                                backgroundImage: AssetImage("assets/dominosLogo.jpg"),                              
                              ),
                            )
                            ),
                        ),
                        
                      ],
                    ),
                  ),
        ),
      ),
    );
  }


}
