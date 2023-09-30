import 'package:cloud_firestore/cloud_firestore.dart';

class Collections {
  static const users = "Users";
}

class CollectionRefUtils {
  static CollectionReference users =
      FirebaseFirestore.instance.collection(Collections.users);
}
