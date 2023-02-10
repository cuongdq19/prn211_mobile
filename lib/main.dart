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
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey),
                    ),
                    Text(
                      'Mai Huu Tai',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ],
                ),
                Spacer(),
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/9561/9561514.png',
                  width: 70,
                  height: 70,
                )
              ]),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Popular product',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                            style: TextStyle(fontWeight: FontWeight.w500))
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
                            style: TextStyle(fontWeight: FontWeight.w500))
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
                            style: TextStyle(fontWeight: FontWeight.w500))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 15),
              child: Row(
                children: <Widget>[
                  Text(
                    'Morning product',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
              padding: const EdgeInsets.only(top: 30, left: 15),
              child: Row(
                children: <Widget>[
                  Text(
                    'Afternoon product',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                ],
              ),
            ),
            MenuFruit()
          ],
        ),
      ),
    );
  }
}

class MenuFruit extends StatelessWidget {
  const MenuFruit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(right: 25),
                width: 125,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://cdn.healthyrecipes101.com/recipes/images/juices/how-long-does-carrot-mango-juice-last-clausqv7y00kzdf1bcipi4s9m.webp?w=1080&q=75')),
                    color: Colors.grey.withOpacity(.5),
                    borderRadius: BorderRadius.circular(5)),
              ),
              SizedBox(height: 10),
              Text(
                'Orange mix',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Text('25.000'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(right: 25),
                width: 125,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs9rna1yGj7MajCk2m1OR9KTorz6nbJ7kdyw&usqp=CAU')),
                    color: Colors.grey.withOpacity(.5),
                    borderRadius: BorderRadius.circular(5)),
              ),
              SizedBox(height: 10),
              Text(
                'Orange mix',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Text('30.000')
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(right: 25),
                width: 125,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYJKluDnpT86NYNJPr7ESWsr2JMZM_N1sxnJ2KwFpWfpYADduWvlOV9M7LGk9Nvbh4JOg&usqp=CAU')),
                    color: Colors.grey.withOpacity(.5),
                    borderRadius: BorderRadius.circular(5)),
              ),
              SizedBox(height: 10),
              Text(
                'Orange mix',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Text('25.000')
            ],
          ),
        ]),
      ),
    );
  }
}


//https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYJKluDnpT86NYNJPr7ESWsr2JMZM_N1sxnJ2KwFpWfpYADduWvlOV9M7LGk9Nvbh4JOg&usqp=CAU
//https://cdn.healthyrecipes101.com/recipes/images/juices/how-long-does-carrot-mango-juice-last-clausqv7y00kzdf1bcipi4s9m.webp?w=1080&q=75