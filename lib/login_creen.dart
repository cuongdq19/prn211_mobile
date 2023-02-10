import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

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
            MyApp(),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                LoginButton(title: 'Login With Google Account'),
                SizedBox(height: 15),
                LoginButton(title: 'Login With Facebook Account'),
                TextButton(
                    onPressed: () {}, child: const Text('Continue as a Guest'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final String title;

  LoginButton({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * .8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue[200],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[Spacer(), Text(title), Spacer()],
        ),
      ),
    );
  }
}

class IntroContent extends StatelessWidget {
  const IntroContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          IntroComponent(
            introImageUrl: '',
            introMessage: '',
          ),
          Text('Welcome to Halo Smoothie'),
          Text(
              "Discover a variety of juice recipes suitable for everyone's health and diversify your menu")
        ],
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late int selectedPage;
  late final PageController _pageController;

  @override
  void initState() {
    selectedPage = 0;
    _pageController = PageController(initialPage: selectedPage);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pageCount = 3;

    return SafeArea(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (page) {
              setState(() {
                selectedPage = page;
              });
            },
            children: List.generate(3, (index) {
              return IntroContent();
            }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: PageViewDotIndicator(
            currentItem: selectedPage,
            count: pageCount,
            unselectedColor: Colors.black26,
            selectedColor: Colors.blue,
            duration: Duration(milliseconds: 200),
            boxShape: BoxShape.rectangle,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Spacer()
      ]),
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
