import 'dart:ui';

import 'package:flutter/material.dart';
import 'top_bar.dart';
import 'top_nav_bar.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hello world',
        theme: ThemeData(
          textTheme: TextTheme(
            headline5: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Pacifico'),
          ),
          accentColor: Colors.white70,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: null,
          body: ListView(children: [
            TopBar(),
            //TopNavBar(),
            CarouselSliderSection(),
            TextSectionWidget(),
            Center(
              child: CardSection(),
            )
          ]),
        ));
  }
}

class TextSectionWidget extends StatelessWidget {
  const TextSectionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextSection(),
    );
  }
}

class TextSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25, bottom: 25, left: 25, right: 25),
      child: Column(
        children: [
          Center(
            child: Text(
              'We Help Your Manuscript Get Published in International Journals',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                fontFamily: 'Russo One',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Center(
              child: Text(
                'Enago is a global leader in publication support & language services. Since 2005, we’ve been fast-tracking researchers towards publication in international journals. Our worldwide workforce of 3000+ expert editors, peer reviewers & translators have, on average, 19.4 years of experience in research & review articles publication. Majority of our editors hold PhD/Masters degrees from renowned international universities. Along with the Editing/Proofreading services, we provide end-to-end Publication Support Services – e.g., Journal Selection, Pre-Submission Peer Review, Journal Submission, and Post-Submission Services that include Citation Booster, Statistical Analysis & plenty more to speed-up publication in top journals.',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    fontFamily: 'Russo One'),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CarouselSliderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3,
      child: CarouselSlider(
        options: CarouselOptions(
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            pauseAutoPlayInFiniteScroll: true,
            viewportFraction: 0.3,
            enableInfiniteScroll: true,
            scrollDirection: Axis.horizontal,
            autoPlay: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800)),
        items: [
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/another.jpg'), fit: BoxFit.cover),
            ),
            child: Text('hello world'),
          ),
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/imhOne.jpg'), fit: BoxFit.cover)),
            child: Text('hello world'),
          ),
        ],
      ),
    );
  }
}

class CarouselSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Carousel(
        animationCurve: Curves.bounceInOut,
        showIndicator: false,
        boxFit: BoxFit.cover,
        images: [
          Image.asset('images/images.png'),
          Image.asset('images/imhOne.jpg'),
        ],
      ),
    );
  }
}

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Container(
        child: Column(
          children: [
            Wrap(
              children: [
                RaisedButtonWidget(
                  title: 'Translation Services',
                  image: 'images/edit.jpg',
                ),
                RaisedButtonWidget(
                  title: 'English Editing',
                  image: 'images/quality.jpg',
                ),
                RaisedButtonWidget(
                  title: 'Proof Reading',
                  image: 'images/proof.jpg',
                ),
                RaisedButtonWidget(
                  title: 'Translation Services',
                  image: 'images/edit.jpg',
                ),
                RaisedButtonWidget(
                  title: 'English Editing',
                  image: 'images/another.jpg',
                ),
                RaisedButtonWidget(
                  title: 'English Editing',
                  image: 'images/quality.jpg',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RaisedButtonWidget extends StatelessWidget {
  String title;
  String image;
  RaisedButtonWidget({this.title, this.image});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Container(
        margin: EdgeInsets.all(10),
        foregroundDecoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12.0))),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage(image, scale: 0.5),
            fit: BoxFit.fitHeight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(0.0, 10.0), //(x,y)
              blurRadius: 10.0,
            ),
          ],
        ),
        height: 300,
        width: 300,
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Container(
              alignment: Alignment.center,
              color: Colors.grey.withOpacity(0.1),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Russo One'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
