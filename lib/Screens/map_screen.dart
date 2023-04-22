import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(30.253809,  77.03928),
    zoom: 14.4746,
  );

  // static final Marker _kGooglePlexMarker=Marker(
  //   markerId: MarkerId('kGooglePlex'),
  //   icon: BitmapDescriptor.defaultMarker
  //   ,
  //   position: LatLng(37.42796133580664, -122.085749655962),
  //   infoWindow: InfoWindow(title: 'Google Plex'),
  // );
  //
  //
  // static final CameraPosition _kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(37.43296265331129, -122.08832357078792),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);

  List<Marker> _marker=[];
  final List<Marker> _list=const[
    Marker(markerId: MarkerId("1"),
    position: LatLng(30.253069, 77.049752),

        infoWindow: InfoWindow(

        title: "MM Hospital MMU"
      )
    ),
  ];
  void initState(){
    super.initState();
    _marker.addAll(_list);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: GoogleMap(
            markers: Set<Marker>.of(_marker),
            mapType: MapType.normal,
            myLocationButtonEnabled: true,
            myLocationEnabled: true,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async{
            GoogleMapController controller = await _controller.future;
            controller.animateCamera(CameraUpdate.newCameraPosition(
              CameraPosition(
                  target: LatLng(30.253069, 77.049752),
              zoom: 14
              )
            ));
            setState(() {

            });
          },
          // label: Text('To the lake!'),
          child: Icon(Icons.my_location_outlined),
        ),

    );
  }

//   Future<void> _goToTheLake() async {
//     final GoogleMapController controller = await _controller.future;
//     controller.animateCamera(CameraUpdate.newCameraPosition());
//   }
}