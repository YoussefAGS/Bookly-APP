import 'package:bookly_app/core/utiles/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    initAnimation();
    Navigat();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          Assets.logo,
          height: height * 0.06,
        ),
        SizedBox(
          height: height * 0.02,
        ),
        TextAnimation(animation: animation),
      ],
    );
  }

  void Navigat() {
    Future.delayed(const Duration(seconds: 3), () {
      // Get.to(
      //   ()=>const HomeLayout(),transition: Transition.fade,duration: Duration(milliseconds: 250));
      GoRouter.of(context).pushReplacement('/home');
    });
  }

  void initAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation = Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }
}

class TextAnimation extends StatelessWidget {
  const TextAnimation({
    Key? key,
    required this.animation,
  }) : super(key: key);

  final Animation<Offset> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, _) => SlideTransition(
          position: animation,
          child: const Text(
            "Read Free Books",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )),
    );
  }
}
