import 'package:afg_day2_trip/animation_dart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _pageController;
  int totalPage=4;
  @override
  void initState() {
    _pageController = PageController(initialPage: 1);

    super.initState();
  }
  @override
  void dispose() {
   _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          makePage(page:1,image: "assets/pic1.jpg",title: "yoyo national park",description:"this is the best place to visit , wonderful place for family people and every one must visit to there" ),
          makePage( page:2,image: "assets/pic2.jpg",title: "Cool sanitary world",description: "this is the best place to visit , wonderful place for family people and every one must visit to there"),
          makePage(page:3,image: "assets/pic3.jpg",title: "hot desert resort",description:"this is the best place to visit , wonderful place for family people and every one must visit to there" ),
          makePage(page:4,image: "assets/pic5.jpg",title: "new national park ",description:"this is the best place to visit , wonderful place for family people and every one must visit to there" ),
        ],
      ),
    );
  }

  Widget makePage({image,title,description,page}) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
              0.1,
              0.9
            ], colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1)
            ])),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [FadeAnimation(3,
                  Text(
                    page.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),),
                  Text(
                    "/"+ totalPage.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [FadeAnimation(3,
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),),
                    SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(3,
                    Row(
                      children: [
                        Container(
                          margin:EdgeInsets.only(right: 5),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin:EdgeInsets.only(right: 5),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin:EdgeInsets.only(right: 5),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin:EdgeInsets.only(right: 5),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin:EdgeInsets.only(right: 5),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Text("4.0",style: TextStyle(color: Colors.white,fontSize: 15),),
                        Text("(2300)",style: TextStyle(color: Colors.white,fontSize: 12),),


                      ],
                    ),),
                    SizedBox(height: 20,),
                    FadeAnimation(3,
                    Text(description,style: TextStyle(color: Colors.white),),),
                    SizedBox(height: 10),
                FadeAnimation(3,
                    Text("READ MORE",style: TextStyle(color: Colors.white,fontSize: 20),)
                    ),
                    SizedBox(height: 20),
                  ],

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
