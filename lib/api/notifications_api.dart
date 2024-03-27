import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationsApi {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> init() async {
    await _firebaseMessaging.requestPermission();
    await _firebaseMessaging
        .subscribeToTopic('ihrd')
        .whenComplete(() => {print("Subscribed to topic")});
  }
}
