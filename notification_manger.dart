
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationManager{

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();


  notificationInit()async {
    flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()!.requestNotificationsPermission();
    AndroidInitializationSettings initializationSettingsAndroid = const AndroidInitializationSettings(
        'app_icon');


    final InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      // iOS: initializationSettingsDarwin,
      // macOS: initializationSettingsDarwin,
      // linux: initializationSettingsLinux
    );
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: onDidReceiveNotificationResponse);
  }
  void onDidReceiveNotificationResponse(NotificationResponse notificationResponse) async {
    final String? payload = notificationResponse.payload;
    // if (notificationResponse.payload != null) {
    //   debugPrint('notification payload: $payload');
    // }
    // await Navigator.push(
    //   context,
    //   MaterialPageRoute<void>(builder: (context) => SecondScreen(payload)),
    // );
  }

  displaySimpleNotification({body,payload})async{

    const AndroidNotificationDetails androidNotificationDetails =
    AndroidNotificationDetails('Shipgo_customer', 'Customer',
      channelDescription: 'Shipgo Customer',
      importance: Importance.max,
      priority: Priority.high,
    );
    const NotificationDetails notificationDetails =
    NotificationDetails(android: androidNotificationDetails);
    await flutterLocalNotificationsPlugin.show(
        0, 'ShipGo', '$body', notificationDetails,
        payload: '$payload');
  }
}