import '/flutter_flow/flutter_flow_util.dart';
import 'cancel_orders_componant_widget.dart' show CancelOrdersComponantWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CancelOrdersComponantModel
    extends FlutterFlowModel<CancelOrdersComponantWidget> {
  ///  State fields for stateful widgets in this component.

  bool apiRequestCompleted = false;
  String? apiRequestLastUniqueKey;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
