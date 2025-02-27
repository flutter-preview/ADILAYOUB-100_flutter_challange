// //First project Bottom Navigation Bar design

// import '../00_Start/first.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(HomePage());
// }

// // Second Project Update App Bar Using Provider for favorite fruit
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '02_Favorite_Fruit/second.dart';

// void main() => runApp(
//       ChangeNotifierProvider(
//         create: (_) => Favorite(),
//         child: const FavoriteFruit(),
//       ),
//     );

// // Third Project for the UI of the login application and the problem
// // is that we are having issue with the background image
// import 'package:flutter/material.dart';

// import '03_Auth_Basic_UI/UI/signUp.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Salam',
//       home: SignupPage(),
//     );
//   }
// }

// // navigation basic very first
// ========================================================================

// import 'package:flutter/material.dart';
// import '04_Project/scn/navbar.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Navbar(),
//     );
//   }
// }

//  Fifth Project on Neumoprism

// import 'package:flutter/material.dart';

// import '05/my_neumoprism.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold(
//           backgroundColor: Color(0xFFE7ECEF),
//           body: Center(
//             child: MyNeumoprism(),
//           )),
//     );
//   }
// }

// To do list SixthPg for
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '06_todolist_UI/todo_list_screen.dart';

// void main() {
//   runApp(const ProviderScope(child: MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Todo App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const TodoHomeThreePage(),
//     );
//   }
// }

//Login Screen
// import 'package:flutter/material.dart';
// import '07_Login_Screen/login_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Login UI',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: const Color(0xff4C53FB),
//       ),
//       home: const LoginScreen(),
//     );
//   }
// }

// import '08_Calculator/screen/calculator.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'calculator ',
//       home: CalScreen(),
//     );
//   }
// }

// ========================================================================
// Building tic tack to game using android studio
// concept required
/*
* 1. showing widgets on the screen
* 2. gridview.builder
* 3. Function writing
* 4. Gesture detection
* 5. Loops
* */

//! =============Tic Tac Toe =================================
// import 'package:flutter/material.dart';
// import 'package:flutte_challange/09_Tic_Tac_Toe/home_screen.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'tic tack toe',
//       home: TicScreen(),
//     );
//   }
// }

//! ======================== Wallpaper====================================

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hive_flutter/hive_flutter.dart';

// import '10_WallPaper_Project/utils/constants/const.dart';
// import '10_WallPaper_Project/view/home.dart';

// Future<void> main() async {
//   await Hive.initFlutter();
//   Hive.openBox<String>(downloadBox);
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const HomeWallpaper(),
//     );
//   }
// }

//! =================  11_sqlite_CRUD_operation   ====================================

import 'package:flutte_challange/11_sqlite_CRUD_operation/screen/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Sqflite(),
    );
  }
}

//! =================  airbnb book opeining ui   ====================================
// import 'package:flutte_challange/16_airbnb_book_opning_ui/lib/home_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool _isInit = true;

//   @override
//   void didChangeDependencies() {
//     if (_isInit) {
//       for (var i = 1; i <= 6; i++) {
//         precacheImage(
//           Image.asset('assets/images/listing-$i.jpg').image,
//           context,
//         );
//       }
//       for (var i = 1; i <= 3; i++) {
//         precacheImage(
//           Image.asset('assets/images/person-$i.jpeg').image,
//           context,
//         );
//       }
//     }
//     _isInit = false;
//     super.didChangeDependencies();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Airbnb Book Flip Interaction',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         appBarTheme: const AppBarTheme(
//           systemOverlayStyle: SystemUiOverlayStyle.dark,
//         ),
//         primarySwatch: Colors.blue,
//       ),
//       home: const HomePage(),
//     );
//   }
// }
