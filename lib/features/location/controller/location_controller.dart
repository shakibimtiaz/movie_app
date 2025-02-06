import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationController extends GetxController {
  late GoogleMapController mapController;
  final LatLng initialPosition = const LatLng(23.8041, 90.4152); // Dhaka

  @override
  void onInit() {
    super.onInit();
    _checkLocationPermission();
  }

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Future<void> _checkLocationPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    if (permission == LocationPermission.deniedForever) {
      Get.snackbar('Permission Denied', 'Please enable location permissions in settings.');
    }
  }
}