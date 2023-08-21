import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
  static final notification = Image.asset(
    '${iconBasePath}notification.png',
    scale: 0.1,

  );
  static final search = Image.asset(
    '${iconBasePath}search.png',
    scale: 0.1,
  );
  static final edit = Image.asset(
    '${iconBasePath}edit.png',
    scale: 2,
  );
  static final delete = Image.asset(
    '${iconBasePath}delete.png',
    scale:2,
  );
  static final properties = Image.asset(
    '${iconBasePath}properties.png',
    scale:2,
  );
  static final settings = Image.asset(
    '${iconBasePath}settings.png',
    scale:2,
  );
  static final history = Image.asset(
    '${iconBasePath}history.png',
    scale:2,
  );
  static final rupee = Image.asset(
    '${iconBasePath}rupee.png',
    scale:2,
  );
  static final left = Image.asset(
    '${iconBasePath}left.png',
    scale:2,
  );
}
