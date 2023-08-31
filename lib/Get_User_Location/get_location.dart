// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class GetLocationDemo extends StatefulWidget {
  const GetLocationDemo({super.key});

  @override
  State<GetLocationDemo> createState() => _GetLocationDemoState();
}

class _GetLocationDemoState extends State<GetLocationDemo> {
  bool loading = true;
  CollectionReference UsersLocation =
      FirebaseFirestore.instance.collection("UsersLocation");
  Position? _currentLocation;
  late bool servicePermission = false;
  late LocationPermission permission;
  String _currentAddress = "";
  Future<Position> _getCurrentLocation() async {
    servicePermission = await Geolocator.isLocationServiceEnabled();

    if (!servicePermission) {
      print("This Service Is Disable");
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    return await Geolocator.getCurrentPosition();
  }

  _getAddressFromCoordinates() async {
    try {
      List<Placemark> placesmark = await placemarkFromCoordinates(
          _currentLocation!.latitude, _currentLocation!.longitude);
      Placemark place = placesmark[0];
      setState(
        () {
          _currentAddress = "Address : ${place.street}, "
              " ${place.name}, "
              " ${place.thoroughfare}, "
              " ${place.subLocality}, "
              " ${place.locality}, "
              " ${place.administrativeArea}, "
              " ${place.country}";
        },
      );
    } catch (e) {
      print("ERROR------------$e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.canPop(context);
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.location_on_outlined),
            title: const Text("Get Your Current Location"),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Location",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                    "Latitude : ${_currentLocation?.latitude}; Longitude : ${_currentLocation?.longitude}"),
                const SizedBox(height: 20),
                const Text(
                  "Location Address",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  _currentAddress,
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () async {
                    _currentLocation = await _getCurrentLocation();
                    await _getAddressFromCoordinates();
                    setState(() {
                      loading = false;
                    });
                    print("Current Location : $_currentLocation");
                    print("Current Address : $_currentAddress");
                    await UsersLocation.add(
                      {
                        "Address": _currentAddress,
                        "Time": DateTime.now(),
                      },
                    );
                    setState(
                      () {
                        loading = true;
                      },
                    );
                  },
                  child: loading
                      ? const Text("Get Location")
                      : const CircularProgressIndicator(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
