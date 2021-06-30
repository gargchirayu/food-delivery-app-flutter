/*
*  choose_location_widget.dart
*  Fudito
*
*  Created by Chirayu Garg.
*  Copyright © 2018 Daca. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:fudito/home_widget/home_widget.dart';
import 'package:fudito/location_search_widget/location_search_widget.dart';
import 'package:fudito/values/values.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class ChooseLocationWidget extends StatefulWidget {

  @override
  _ChooseLocationWidgetState createState() => _ChooseLocationWidgetState();
}

class _ChooseLocationWidgetState extends State<ChooseLocationWidget> {

  LatLng _center;
  Position currentLocation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserLocation();
  }

  Future<Position> locateUser() async {
    return Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }

  getUserLocation() async {
    currentLocation = await locateUser();
    setState(() {
      _center = LatLng(currentLocation.latitude, currentLocation.longitude);
    });
    print('center $_center');
  }

//  void initState() {
//    super.initState();
//
//    // create an instance of Location
//    location = new Location();
//
//
//    // subscribe to changes in the user's location
//    // by "listening" to the location's onLocationChanged event
//    location.onLocationChanged.listen((LocationData cLoc) {
//      // cLoc contains the lat and long of the
//      // current user's position in real time,
//      // so we're holding on to it
//      currentLocation = cLoc;
//      updatePinOnMap();
//    });
//
//    // set the initial location
//    setInitialLocation();
//  }
//
//  void setInitialLocation() async {
//    // set the initial location by pulling the user's
//    // current location from the location's getLocation()
//    currentLocation = await location.getLocation();
//
//  }
//
//  Completer<GoogleMapController> _controller = Completer();
//  Set<Marker> _markers = Set<Marker>();
//// for my drawn routes on the map
////  String googleAPIKey = “<AIzaSyBDmppIBRL8ZtMbDDyQxhJAuqXvs4XcZro>”;
//  String googleAPIKey = "AIzaSyBDmppIBRL8ZtMbDDyQxhJAuqXvs4XcZro";
//// for my custom marker pins
//  BitmapDescriptor sourceIcon;
//  BitmapDescriptor destinationIcon;
//// the user's initial location and current location
//// as it moves
//  LocationData currentLocation;
//// a reference to the destination location
//  LocationData destinationLocation;
//// wrapper around the location API
//  Location location;
//
//  static final CameraPosition _myLocation =
//  CameraPosition(
//    target: LatLng(latitude, longitude),
//    zoom: 12,
//    bearing: 15.0,
//    tilt: 75.0,
//  );
//
//  static double latitude = 40.7484405;
//  static double longitude = -73.9878531;
//
//  void _setStyle(GoogleMapController controller) async {
//    String value = await DefaultAssetBundle.of(context)
//        .loadString('assets/maps_style.json');
//    controller.setMapStyle(value);
//  }
//  GoogleMapController mapController;
////
////  final LatLng _center = const LatLng(45.521563, -122.677433);
////
////  void _onMapCreated(GoogleMapController controller) {
////    mapController = controller;
////  }

  bool fav = false;

  var favicon = Icons.favorite_border;

  void onConfirmButtonPressed(BuildContext context) {
    //stuff
    Navigator.pop(context);
  }

//  void onSearchPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => LocationSearchWidget()));

  void onSavePressed(BuildContext context) {
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 234, 234),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        brightness: Brightness.light,
        leading: Container(
          margin: EdgeInsets.all(8),
            //padding: EdgeInsets.zero,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(28)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(80, 112, 112, 112),
                    offset: Offset(0, 1),
                    blurRadius: 10,
                  ),
                ]
            ),
          child: IconButton(
            padding: EdgeInsets.only(right: 3),
              onPressed: () => Navigator.pop(context),
              icon: Center(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Color.fromARGB(255, 20, 33, 61),
                  size: 22
                ),
              ),
              //Image.asset("assets/images/back.png",),
            ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(top: 8, right: 8, bottom:8),
            //padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
                //borderRadius: BorderRadius.all(Radius.circular(35)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(80, 112, 112, 112),
                    offset: Offset(0, 1),
                    blurRadius: 10,
                  ),
                ]
            ),
            child: IconButton(
              onPressed: () => setState(() {
                fav=!fav;
                if(fav == true){
                  favicon = Icons.favorite;
                  //stuff
                }
                else{
                  favicon = Icons.favorite_border;
                }
              }
              ),
              icon: Center(
                child: Icon(
                    favicon,
                    color: Color.fromARGB(255, 255, 51, 51),
                    size: 26
                ),
              ),
            ),
          ),
//          IconButton(
//            onPressed: () => this.onSavePressed(context),
//            icon: Image.asset("assets/images/like-button.png",),
//          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: Alignment.center,
          children: [
            //GoogleMap commented to remove the error due to API key
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: 0,
              child:
              GoogleMap(
                initialCameraPosition:
                CameraPosition(
                  target: _center,
                  zoom: 12,
                  bearing: 15.0,
                  tilt: 0.0,
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 80,
              right: 0,
              bottom: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 37,
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Color.fromARGB(26, 253, 185, 0),
                        offset: Offset(0, 7),
                        blurRadius: 20,
                      ),]
                    ),
                    child: FlatButton(
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LocationSearchWidget())),
                      color: AppColors.primaryElement,
                      shape: RoundedRectangleBorder(
                        borderRadius: Radii.k7pxRadius,
                      ),
                      textColor: Color.fromARGB(255, 112, 112, 112),
                      padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/search-icon.png",),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Search a location",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontFamily: "Proxima Nova",
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 137,
                    decoration: BoxDecoration(
                      color: AppColors.primaryBackground,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(7), topRight: Radius.circular(7)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: <Widget>[
                            Container(
                              width: 343,
                              height: 43,
                              margin: EdgeInsets.only(left: 16, top: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 150,
                                      height: 24,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: [
                                          Center(
                                            child: Container(
                                              width: 15,
                                              height: 18,
                                              child: Image.asset(
                                                "assets/images/location-icon.png",
                                                fit: BoxFit.none,
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Container(
                                              margin: EdgeInsets.only(left: 8),
                                              child: Text(
                                                "Location",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: AppColors.secondaryText,
                                                  fontFamily: "Proxima Nova",
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    child: Text(
                                      "Lorem Ipsum, Dolor Sit, Amet Lorem Ipsum, Dolor Sit, Amet",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontFamily: "Jost",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 37,
                          margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                          child: FlatButton(
                            onPressed: () => this.onConfirmButtonPressed(context),
                            color: AppColors.secondaryElement,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),
                            textColor: Color.fromARGB(255, 255, 255, 255),
                            padding: EdgeInsets.all(0),
                            child: Text(
                              "CONFIRM ADDRESS",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.accentText,
                                fontFamily: "Jost",
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}