import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationsApi {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> init() async {
    await _firebaseMessaging.requestPermission();
    await _firebaseMessaging
        .subscribeToTopic('ihrd')
        .whenComplete(() => {print('Message received. Title:"Title" , Body: "Body"')});
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        // When the user taps on the notification to open the app
        print('Message clicked!');
      });
    
    }
    void getToken() async {
    String? token = await _firebaseMessaging.getToken();
    print("Firebase Messaging Token: $token");
  }
  
    
  
}
