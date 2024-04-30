import 'package:taller_whatsapp/utils/map_style.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class Home_mapcontroller {
  late GoogleMapController mapController;

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
    controller.setMapStyle(mapStyle);
  }

  void moveToCurrentLocation(LatLng myPosition) async {
    if (mapController != null && myPosition != null) {
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: myPosition,
            zoom: 20.0,
          ),
        ),
      );
    }
  }
}
