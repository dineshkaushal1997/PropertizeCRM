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

/// ================================== ICONS ================================== ///

  static final phone = Image.asset(
    '${iconBasePath}phone.png',
    scale: 2,
  );
  static final person = Image.asset(
    '${iconBasePath}person.png',
    scale: 2,
  );
  static final location = Image.asset(
    '${iconBasePath}location.png',
    scale: 2,
  );
}
