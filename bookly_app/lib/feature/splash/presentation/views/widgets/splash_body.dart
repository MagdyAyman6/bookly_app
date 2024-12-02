import 'package:bookly_app/feature/home/presentation/views/home_screen.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation =
        Tween<Offset>(begin: const Offset(0, 7), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
    // TODO: implement initState
    super.initState();
    goToHomeScreen();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  goToHomeScreen() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
        return const HomeScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(Assets.logo),
          SlideTransition(
            position: animation,
            child: const Center(
              child: Text(
                "Free Books",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ]);
  }
}
