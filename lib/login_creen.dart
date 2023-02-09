import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Text('Halo Smoothie'),
                Spacer(),
                Container(
                  height: 50,
                  width: screenWidth * .8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[200],
                        shape: const BeveledRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Spacer(),
                        const Text('Login With Google Account'),
                        Spacer()
                      ],
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {}, child: const Text('Continue as a Guest'))
              ],
            ),
            IntroComponent(
              introImageUrl: '',
              introMessage: '',
            )
          ],
        ),
      ),
    );
  }
}

class IntroComponent extends StatelessWidget {
  final String introImageUrl;
  final String introMessage;

  const IntroComponent({
    required this.introImageUrl,
    required this.introMessage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/images/intro.png'),
    );
  }
}
