import 'package:live_streaming_app/pages/broadcast_page.dart';
import 'package:live_streaming_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:live_streaming_app/test_messaging/screens/welcome_screen.dart';
import 'package:live_streaming_app/test_messaging/screens/login_screen.dart';
import 'package:live_streaming_app/test_messaging/screens/registration_screen.dart';
import 'package:live_streaming_app/test_messaging/screens/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyHomePage.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        MyHomePage.id: (context) => MyHomePage(),
        BroadcastPage.id: (context) => BroadcastPage(
              channelName: '',
              isBroadcaster: false,
            ),
      },
    );
  }
}
