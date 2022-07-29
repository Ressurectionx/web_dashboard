import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'presentation/views/dashboard.dart';
void main() async{
  const firebaseOptions = FirebaseOptions(
      apiKey: "AIzaSyAw0OmgBJwm-dMpih2QSx5F5Ti7cqnEro4",
      authDomain: "web-dashboard-2d384.firebaseapp.com",
      projectId: "web-dashboard-2d384",
      storageBucket: "web-dashboard-2d384.appspot.com",
      messagingSenderId: "177112188803",
      appId: "1:177112188803:web:02ccc67681854a8dc318b6"
  );
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: firebaseOptions);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
