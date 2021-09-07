import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'constants.dart';

var constants = DropQuestConstants();

var userFirstName = 'Youri';

class HomepageScreen extends StatefulWidget {
  @override
  _HomepageScreenState createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    AppBar _buildAppBar() {
      return AppBar(
        leading: IconButton(
          icon: Icon(Icons.book_rounded),
          onPressed: () {},
          iconSize: 24,
          splashRadius: 28,
          color: Color(constants.black2),
          tooltip: 'Manual',
        ),
        backgroundColor: Color(constants.white),
        title: RichText(
          text: TextSpan(
              text: 'Hello, ',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                  color: Color(constants.black2)),
              children: [
                TextSpan(
                  text: userFirstName,
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                      color: Color(constants.primaryColor),
                      fontSize: 25),
                ),
                TextSpan(
                    text: '!',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w900,
                        fontSize: 25))
              ]),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person_outlined),
            iconSize: 24,
            splashRadius: 28,
            color: Color(constants.black2),
            tooltip: 'Access your profile',
          ),
        ],
      );
    }

    Container _buildSearchBar() {
      return Container(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            RichText(
              text: TextSpan(
                  text: "Let's Learn Together!",
                  style: TextStyle(
                    color: Color(constants.white1),
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  )),
            ),
            Container(
              child: TextField(
                style: TextStyle(color: Color(constants.black)),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14.0, left: 5.0),
                    suffixIcon: Icon(Icons.search_outlined),
                    hintText: 'Search for topic...',
                    hintStyle: TextStyle(
                        color: Color(constants.gray1), fontFamily: 'Roboto')),
              ),
              width: 400,
              padding: EdgeInsets.only(left: 5, right: 5),
              margin: EdgeInsets.only(bottom: 0, top: 50),
              decoration: BoxDecoration(
                  color: Color(constants.white),
                  borderRadius: BorderRadius.circular(30.0)),
            )
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(constants.primaryColor),
            Color(constants.secondaryColor)
          ]),
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
                color: Color(constants.shadowColor),
                blurRadius: 2,
                offset: Offset(1, 2))
          ],
        ),
        padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 15),
        margin: EdgeInsets.only(top: 30, left: 24, right: 24),
      );
    }

    Container _buildMathButton() {
      return Container(
        child: Column(children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('categories/math.svg'),
            iconSize: 48,
          ),
          Container(
              child: RichText(
            text: TextSpan(
                text: 'Math',
                style: TextStyle(
                    color: Color(constants.black2),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700)),
          ))
        ]),
        margin: EdgeInsets.only(left: 24),
      );
    }

    Container _buildPhysicsButton() {
      return Container(
        child: Column(children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('categories/physics.svg'),
            iconSize: 48,
          ),
          Container(
              child: RichText(
            text: TextSpan(
                text: 'Physics',
                style: TextStyle(
                    color: Color(constants.black2),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700)),
          ))
        ]),
        //margin: EdgeInsets.only(left: 24),
      );
    }

    Container _buildBiologyButton() {
      return Container(
        child: Column(children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('categories/biology.svg'),
            iconSize: 48,
          ),
          Container(
              child: RichText(
            text: TextSpan(
                text: 'Biology',
                style: TextStyle(
                    color: Color(constants.black2),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700)),
          ))
        ]),
        //margin: EdgeInsets.only(left: 24),
      );
    }

    Container _buildGeographyButton() {
      return Container(
        child: Column(children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('categories/geography.svg'),
            iconSize: 48,
          ),
          Container(
              child: RichText(
            text: TextSpan(
                text: 'Geography',
                style: TextStyle(
                    color: Color(constants.black2),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700)),
          ))
        ]),
        //margin: EdgeInsets.only(left: 24),
      );
    }

    Container _buildScienceButton() {
      return Container(
        child: Column(children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('categories/science.svg'),
            iconSize: 48,
          ),
          Container(
              child: RichText(
            text: TextSpan(
                text: 'Science',
                style: TextStyle(
                    color: Color(constants.black2),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700)),
          ))
        ]),
        margin: EdgeInsets.only(right: 24),
      );
    }

    return Scaffold(
      backgroundColor: Color(constants.white1),
      appBar: _buildAppBar(),
      body: Column(
        children: [
          _buildSearchBar(),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: RichText(
                    text: TextSpan(
                        text: 'Categories',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(constants.black2)))),
                margin: EdgeInsets.only(left: 25),
              ),
              Container(
                margin: EdgeInsets.only(right: 25),
                child: RichText(
                    text: TextSpan(
                        text: 'See all',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color(constants.secondaryColor)),
                        recognizer: TapGestureRecognizer()..onTap = () {})),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: <Widget>[
              _buildMathButton(),
              _buildPhysicsButton(),
              _buildBiologyButton(),
              _buildGeographyButton(),
              _buildScienceButton()
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          SizedBox(height: 30),
          Container(
            child: Row(children: [
              RichText(
                  text: TextSpan(
                      text: 'Physics',
                      style: TextStyle(
                          color: Color(constants.black),
                          fontSize: 25,
                          fontWeight: FontWeight.w700))),
            ]),
            margin: EdgeInsets.only(left: 24),
          ),
          Container(
            child: Row(
              children: [
                RichText(
                    text: TextSpan(
                        text: 'Progress of all of the levels you have played!',
                        style: TextStyle(
                            color: Color(constants.black2),
                            fontSize: 14,
                            fontWeight: FontWeight.w500)))
              ],
            ),
            margin: EdgeInsets.only(left: 24),
          ),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}
