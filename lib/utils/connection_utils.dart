import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:property_crm/dialog/no_internet_dialog.dart';

import 'const_utils.dart';

class ConnectionUtils {
  static StreamSubscription? subscription;

  static void listenConnection() {
    logs('subscription :=>$subscription');
    if (subscription != null) {
      return;
    }
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      logs("INTER NET STATUS :=> $result");
      if (result != ConnectivityResult.mobile &&
          result != ConnectivityResult.wifi) {
        noInternetDialog();
      }
    });
  }

  static void disposeConnection() {
    logs('CONNECTION DISPOSE ');
    subscription?.cancel();
    subscription = null;
  }

  static Future<bool> checkConnectionStatus() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else {
      return false;
    }
  }
}
