import 'package:flutter/material.dart';
import 'package:halo_smoothie/home_screen.dart';
import 'package:halo_smoothie/login_creen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halo Smoothie',
      theme: ThemeData(
          //primarySwatch: Colors.blue,
          ),
      home: HomePageV2(),
    );
  }
}

class HomePageV2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 15.0),
              child: Row(children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good morning',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                          color: Colors.grey),
                    ),
                    Text(
                      'Mai Huu Tai',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 30),
                    ),
                  ],
                ),
                Spacer(),
                Image.network(
                  'https://cdn-icons-png.flaticon.com/512/4140/4140046.png',
                  width: 50,
                  height: 50,
                )
              ]),
            ),
            Flexible(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Popular product',
                            style: TextStyle(
                                fontFamily: 'LibreCaslonDisplay',
                                fontWeight: FontWeight.w500,
                                fontSize: 25),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 15),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  width: 250,
                                  height: 125,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://media.istockphoto.com/id/821583034/photo/various-fruits-juices.jpg?s=612x612&w=0&k=20&c=oHI_Qv-Ci2vRjiJFYcFY40F-nPGJCRvw6fTHhM-TyUg='),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text('Orang juice mix',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500))
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  width: 250,
                                  height: 125,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://media.istockphoto.com/id/947356112/photo/drinks.jpg?s=612x612&w=0&k=20&c=F6rwi6wrmNzR60EsWu5Tj_MJDujIUNo8y3jGhKT08xI='),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text('Orang juice mix',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500))
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  width: 250,
                                  height: 125,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://wallpapercave.com/wp/wp1907098.jpg'),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text('Orang juice mix',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 15),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Morning product',
                            style: TextStyle(
                                fontFamily: 'LibreCaslonDisplay',
                                fontWeight: FontWeight.w500,
                                fontSize: 25),
                          ),

                          Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(right: 15),
                              alignment: Alignment.center,
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(.4),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Text('More'),
                            ),
                          )
                          //ElevatedButton(onPressed: () {}, child: )
                        ],
                      ),
                    ),
                    MenuFruit(),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 15),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Afternoon product',
                            style: TextStyle(
                                fontFamily: 'LibreCaslonDisplay',
                                fontWeight: FontWeight.w500,
                                fontSize: 25),
                          ),

                          Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(right: 15),
                              alignment: Alignment.center,
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(.4),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Text('More'),
                            ),
                          )
                          //ElevatedButton(onPressed: () {}, child: )
                        ],
                      ),
                    ),
                    MenuFruit(),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 15),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Evening product',
                            style: TextStyle(
                                fontFamily: 'LibreCaslonDisplay',
                                fontWeight: FontWeight.w500,
                                fontSize: 25),
                          ),

                          Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(right: 15),
                              alignment: Alignment.center,
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(.4),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Text('More'),
                            ),
                          )
                          //ElevatedButton(onPressed: () {}, child: )
                        ],
                      ),
                    ),
                    MenuFruit(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MenuFruit extends StatelessWidget {
  final _imgURL = [
    'https://truejuice.vn/articles/wp-content/uploads/2021/04/nuoc-ep-dau-tay-truejuice.jpg',
    'https://cdn.nguyenkimmall.com/images/companies/_1/tin-tuc/kinh-nghiem-meo-hay/top-10-loai-nuoc-ep-bo-duong-ho-tro-tang-cuong-suc-khoe-mua-dich-h2.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9NVyVJJRC8BIClZrbOiuFAQrEGDeJor79RA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZfXFUKWrEYg2wpIbVBzXaKDvp_BjZrzxyWg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3BlVQ_1333GcG02SlocyTMdoht7cmwnc7mg&usqp=CAU'
  ];

  MenuFruit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: new List.generate(
          _imgURL.length,
          (index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(right: 25),
                width: 100,
                height: 125,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(_imgURL[index])),
                    color: Colors.grey.withOpacity(.5),
                    borderRadius: BorderRadius.circular(3)),
              ),
              SizedBox(height: 10),
              Text(
                'Orange mix',
                style: TextStyle(fontWeight: FontWeight.w200),
              ),
              Text('25.000'),
            ],
          ),
        )),
      ),
    );
  }
}


//https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYJKluDnpT86NYNJPr7ESWsr2JMZM_N1sxnJ2KwFpWfpYADduWvlOV9M7LGk9Nvbh4JOg&usqp=CAU
//https://cdn.healthyrecipes101.com/recipes/images/juices/how-long-does-carrot-mango-juice-last-clausqv7y00kzdf1bcipi4s9m.webp?w=1080&q=75

