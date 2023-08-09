import 'package:flutter/material.dart';

class ImageUtils {
  static const imgBasePath = "assets/images/";
  static const iconBasePath = "assets/icons/";

  /// ================================== IMAGES ================================== ///
  static final noInternetGIF = Image.asset('${imgBasePath}noInternet.gif');
  static final loginImg = Image.asset(
    '${imgBasePath}loginImg.png',
    scale: 2,
  );
  static final otpImg = Image.asset(
    '${imgBasePath}otpImg.png',
    scale: 2,
  );
  static final registerImg = Image.asset(
    '${imgBasePath}registerImg.png',
    scale: 2,
  );
}
