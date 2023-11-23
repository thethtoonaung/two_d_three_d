import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:two_d_three_d/2d_v1/display_data_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase CRUD App',
      home: DisplayDataScreen(),
    );
  }
}

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:two_d_three_d/2d_v2/Authentication/features/app/splash_screen/splash_screen.dart';
// import 'package:two_d_three_d/2d_v2/Authentication/features/user_auth/presentation/pages/home_page.dart';
// import 'package:two_d_three_d/2d_v2/Authentication/features/user_auth/presentation/pages/login_page.dart';
// import 'package:two_d_three_d/2d_v2/Authentication/features/user_auth/presentation/pages/sign_up_page.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart'; 

// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   if (kIsWeb) {
//     await Firebase.initializeApp(
//       options: FirebaseOptions(
//         apiKey: "AIzaSyCsHDQtI9DItQgSqwy45_y2xG9tDGxuER8",
//         appId: "1:540215271818:web:8b22d4aee01acdce862873",
//         messagingSenderId: "540215271818",
//         projectId: "flutter-firebase-9c136",
//         // Your web Firebase config options
//       ),
//     );
//   } else {
//     await Firebase.initializeApp();
//   }
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Firebase',
//       routes: {
//         '/': (context) => SplashScreen(
//           // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
//           child: LoginPage(),
//         ),
//         '/login': (context) => LoginPage(),
//         '/signUp': (context) => SignUpPage(),
//         '/home': (context) => HomePage(),
//       },
//     );
//   }
// }

