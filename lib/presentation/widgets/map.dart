import 'dart:async';

import 'package:birthday_app/utils/colors.dart';
import 'package:birthday_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapWindow extends StatefulWidget {
  const MapWindow({Key? key}) : super(key: key);

  @override
  State<MapWindow> createState() => _MapWindowState();
}

class _MapWindowState extends State<MapWindow> {
  final mapControllerCompleter = Completer<YandexMapController>();
  final Uri _url = Uri.parse(
      'https://yandex.ru/maps/org/raduga/166766862140/?ll=38.785917%2C47.263567&z=10.75');


  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 246.h,
          child: YandexMap(
            mapObjects: [
              PlacemarkMapObject(
                  text: const PlacemarkText(
                      text: 'Радуга',
                      style: PlacemarkTextStyle(
                          placement: TextStylePlacement.right)),
                  mapId: const MapObjectId('Радуга'),
                  point: const Point(latitude: 47.243347, longitude: 38.702288),
                  icon: PlacemarkIcon.single(PlacemarkIconStyle(
                      zIndex: 4,
                      image: BitmapDescriptor.fromAssetImage(
                          'assets/images/route_start.png')))),
            ],
            onMapCreated: (controller) {
              mapControllerCompleter.complete(controller);
              controller.moveCamera(
                  CameraUpdate.newCameraPosition(const CameraPosition(
                target: Point(latitude: 47.243347, longitude: 38.702288),
                zoom: 10,
              )));
            },
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          'Центральная ул., 64, хутор Седых',
          style: Styles.descriptionStyle,
        ),
        SizedBox(
          height: 10.h,
        ),
        GestureDetector(
          onTap: () => setState(() => _launchInBrowser(_url)),
          child: Text(
            'Перейти на сайт места',
            style: TextStyle(
                fontFamily: 'Jost',
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline,
                color: AppColors.titleColor),
          ),
        )
      ],
    );
  }
}
