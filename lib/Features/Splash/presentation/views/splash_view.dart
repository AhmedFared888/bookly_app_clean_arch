import 'package:bookly_app_clean_arch/Features/Splash/presentation/views/widgets/splashViewBody.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff100B20),
      body: SplashViewBody(),
    );
  }
}
