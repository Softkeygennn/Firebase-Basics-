import 'package:firebase/Chat%20App/pages/MessageScreen.dart';
import 'package:firebase/Chat%20App/pages/chat_page.dart';
import 'package:firebase/Chat%20App/pages/login.dart';
import 'package:firebase/Note%20App/Screens/home_screen.dart';
import 'package:firebase/Store%20Data/CRUDoperation.dart';
import 'package:firebase/Store%20Data/fetch_data_from_firebase.dart';
import 'package:firebase/Store%20Data/store_data_in_firebase.dart';
import 'package:firebase/Store%20Data/upload_image.dart';
import 'package:firebase/add_data.dart';
import 'package:firebase/my_home_page.dart';
import 'package:firebase/push_notificatioon/push_notification.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'Store Data/ecmmerceFirebase.dart';
import 'checkuser.dart';
import 'firebase_options.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

    options: DefaultFirebaseOptions.currentPlatform,

  );
  // final fcmToken = await FirebaseMessaging.instance.getToken();
  // print(fcmToken);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:   Login()
    );
  }
}
