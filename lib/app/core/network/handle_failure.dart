import 'package:flutter/material.dart';

import '../utils/failure_view_data.dart';
import 'failure.dart';

FailureViewData mapFailureToView(Failure failure) {
  switch (failure) {
    case NetworkFailure():
      return const FailureViewData(
        icon: Icons.wifi_off,
        message: 'Sin conexión a internet',
      );
    case TimeoutFailure():
      return const FailureViewData(
        icon: Icons.timer_off,
        message: 'La solicitud ha expirado',
      );
    case ApiFailure(statusCode: final code):
      return FailureViewData(
        icon: Icons.cloud_off,
        message: 'Error del servidor (código: $code)',
      );
    case AuthFailure():
      return const FailureViewData(
        icon: Icons.lock_outline,
        message: 'Autenticación fallida',
      );
    case ValidationFailure(field: final field):
      return FailureViewData(
        icon: Icons.warning_amber_outlined,
        message: 'Campo inválido: ${field ?? "desconocido"}',
      );
    case BusinessFailure():
      return FailureViewData(icon: Icons.business, message: failure.message);
    case NoDataFailure():
      return const FailureViewData(
        icon: Icons.info_outline,
        message: 'No hay datos disponibles',
      );
    case StorageFailure():
      return const FailureViewData(
        icon: Icons.sd_storage,
        message: 'Error de almacenamiento local',
      );
    case UnknownFailure():
      return FailureViewData(
        icon: Icons.error_outline,
        message: failure.message,
      );
  }
}
