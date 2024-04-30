import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taller_whatsapp/utils/home_mapcontroller.dart';

class HomePageMap extends StatefulWidget {
  const HomePageMap({super.key});

  @override
  State<HomePageMap> createState() => _HomePageMapState();
}

const kGoogleApiKey = 'AIzaSyAQ1w7b3O3grkW8pU6BIcEQ0cHfZp4RfdU';
final homeScaffoldKey = GlobalKey<ScaffoldState>();

class _HomePageMapState extends State<HomePageMap> {
  Set<Marker> markersList = {};
  static var myPosition = const LatLng(0, 0);
  final _controller = Home_mapcontroller();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Future<Position> determinePosition() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error("error");
      }
    }
    return await Geolocator.getCurrentPosition();
  }

  void getCurrentLocation() async {
    Position position = await determinePosition();
    setState(() {
      myPosition = LatLng(position.latitude, position.longitude);
    });
    markersList.clear();
    markersList.add(Marker(
        markerId: const MarkerId("1"),
        position: myPosition,
        icon:
            BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet)));
  }

  @override
  void initState() {
    getCurrentLocation();
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: myPosition == const LatLng(0, 0)
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : GoogleMap(
              myLocationButtonEnabled: true,
              onMapCreated: _controller.onMapCreated,
              initialCameraPosition:
                  CameraPosition(target: myPosition, zoom: 13),
              zoomControlsEnabled: false,
              mapType: MapType.normal,
            ),
    );
  }
}
