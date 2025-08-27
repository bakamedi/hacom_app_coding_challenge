import 'package:flutter/material.dart';
import 'package:hacom_app_test/app/domain/models/vehicles/vehicle_response.dart';

extension StateTypeColorExt on StateType {
  Color get color {
    switch (this) {
      case StateType.STOP:
        return Colors.red;
      case StateType.ONLINE:
        return Colors.green;
      case StateType.RUNNING:
        return Colors.blue;
      case StateType.OFFLINE:
        return Colors.grey;
    }
  }
}
