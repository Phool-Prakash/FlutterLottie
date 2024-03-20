import 'package:flutter/material.dart';
import 'package:flutter_lottie/view/animatonScreen.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lottie',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AnimationScreen()
    );
  }
}

// class LottieAnimationScreen extends StatefulWidget {
//   const LottieAnimationScreen({super.key});
//
//   @override
//   State<LottieAnimationScreen> createState() => _LottieAnimationScreenState();
// }
//
// class _LottieAnimationScreenState extends State<LottieAnimationScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ListView(
//           children: [
//             // Load a Lottie file from your assets
//             Lottie.asset('assets/animation/click.json',repeat: false),
//             // Load a Lottie file from a remote url
//             // Lottie.network(
//             //     'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
//             //
//             // // Load an animation and its images from a zip file
//             // Lottie.asset('assets/lottiefiles/angel.zip'),
//           ],
//         ),
//       ),
//     );
//   }
// }
