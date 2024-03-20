import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
  }

  @override
  void dispose() {
    // TODO: implement
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildAnimations(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var ticker =_controller.forward(from: 0.0);
          ticker.whenComplete(() {
            _controller.reset();
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }

  Widget _buildAnimations() {
    return Stack(
      children: [
        Center(
          child: Lottie.asset('assets/animation/cat.json',
              width: 250, height: 250),
        ),
        Lottie.asset('assets/animation/conftti.json',
            controller: _controller,
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            fit: BoxFit.cover,
            repeat: false),
      ],
    );
  }
}
