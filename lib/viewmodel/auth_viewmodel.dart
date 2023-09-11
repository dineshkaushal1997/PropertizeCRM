import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:property_crm/utils/connection_utils.dart';
import 'package:property_crm/utils/const_utils.dart';
import 'package:property_crm/utils/route_utils.dart';
import 'package:property_crm/utils/variable_utisl.dart';

class AuthViewModel extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  String _verificationID = "";
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    update();
  }

  /// =========================== SEND OTP =========================== ///

  Future<void> signIn(String pNumber) async {
    isLoading = true;
    await ConnectionUtils.checkConnectionStatus().then((value) async {
      if (value == true) {
        await sendOtp(
          phoneNumber: pNumber,
        );
      } else {
        isLoading = false;
        ConstUtils.showToast(msg: VariableUtils.noConnectionMsg);
      }
    });
  }

  Future<bool?> sendOtp({
    required String phoneNumber,
  }) async {
    phoneCodeSent(String verificationID, [int? forceResendinToken]) {
      log('verificationID : $verificationID , OTP send successfully');
      isLoading = false;
      _verificationID = verificationID;
      RouteUtils.navigateRoute(RouteUtils.otpVerify, args: phoneNumber);
    }

    try {
      await auth.verifyPhoneNumber(
          phoneNumber: phoneNumber,
          timeout: const Duration(seconds: 100),
          verificationCompleted: (PhoneAuthCredential credential) {},
          verificationFailed: (FirebaseAuthException exception) {
            print('VERI FAILED :${exception.code}');
            print('VERI FAILED ERROR :$exception');
            isLoading = false;
            if (exception.code == 'invalid-phone-number' ||
                exception.code == "missing-client-identifier") {
              ConstUtils.showToast(
                  msg: VariableUtils.providedPhoneNumberIsNotValid);
            } else if (exception.code == "too-many-requests") {
              ConstUtils.showToast(msg: VariableUtils.weHaveBlockedAllRequests);
            }
          },
          codeSent: phoneCodeSent,
          codeAutoRetrievalTimeout: (String verificationId) {});
    } catch (e) {
      ConstUtils.showToast(msg: VariableUtils.somethingWentWrong);
    }
    return null;
  }

  /// =========================== OTP VERIFY =========================== ///
  Future<void> verifyPhoneNumber(String otp) async {
    try {
      isLoading = true;
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: _verificationID, smsCode: otp);
      final User? user = (await auth.signInWithCredential(credential)).user;

      if (user != null) {
        print(FirebaseAuth.instance.currentUser!.phoneNumber);
        isLoading = false;
        RouteUtils.navigateRoute(
          RouteUtils.bottomNavBar,
        );
      } else {
        print("Authentication failed");
        isLoading = false;
      }
    } on FirebaseAuthException catch (e) {
      isLoading = false;
      if (e.code == "invalid-verification-code") {
        print("invalidOtpTryAgain ERROR => ${e.toString()}");
        ConstUtils.showToast(msg: VariableUtils.invalidOtpTryAgain);
      } else {
        ConstUtils.showToast(msg: e.toString());
        print('VERIFY OTP ERROR :=>$e');
      }
    }
  }
}
