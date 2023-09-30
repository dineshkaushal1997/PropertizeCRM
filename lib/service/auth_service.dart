import 'package:property_crm/model/user_model.dart';
import 'package:property_crm/utils/firebase_utils.dart';
import 'package:property_crm/utils/preferences_utils.dart';

class AuthService {
  static Future<bool> register(UserModel reqModel) async {
    return await CollectionRefUtils.users
        .doc(reqModel.uId)
        .set(reqModel.toJson())
        .then((value) => true)
        .catchError((e) => false);
  }

  static Future<UserModel?> getUser(String uId) async {
    CollectionRefUtils.users
        .doc(uId)
        .get()
        .then((value) => value.exists
            ? UserModel.fromJson(value.data() as Map<String, dynamic>)
            : null)
        .catchError((e) => null);
  }
}
