import 'package:flutter/material.dart';
import '../experiences.dart';
import 'diagonal_clipper.dart';
import 'experience_row.dart';

class MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => new _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _imageHeight = 200.0;
 static const  key = "key";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Stack(
        children: <Widget>[
          _buildTimeline(),
          _buildImage(),
          //_buildTopHeader(),
          _buildProfileRow(),
          _buildBottomPart(),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return  ClipPath(
      clipper:  DiagonalClipper(),
      child:  Image.asset('assets/bg.jpg',
          fit: BoxFit.fitHeight,
          height: _imageHeight,
          colorBlendMode: BlendMode.srcOver,
          color:  Color.fromARGB(120, 20, 10, 40)),
    );
  }

  Widget _buildTopHeader() {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 32.0),
      child:  Row(
        children: <Widget>[
          // new Icon(Icons.menu, size: 32.0, color: Colors.white),
           Expanded(
            child:  Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child:  Text(
                "Resume",
                style:  TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
           Icon(
            Icons.linear_scale,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget _buildProfileRow() {
    return  Padding(
      padding:  EdgeInsets.only(left: 16.0, top: _imageHeight / 2.5),
      child:  Row(
        children: <Widget>[
           const CircleAvatar(
            minRadius: 28.0,
            maxRadius: 28.0,
            backgroundImage:  AssetImage('assets/fotor_2023-4-8_0_21_49.png'),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const [
                 Text('UMAIR IQBAL',
                    style:  TextStyle(
                        fontSize: 26.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w400)),
                 SizedBox(height: 20,),
                 Text('Software Engineer',
                    style:  TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        fontSize: 14.0))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBottomPart() {
    return  Padding(
        padding:  EdgeInsets.only(top: _imageHeight),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildMyExperiencesHeader(),
            _buildExperiencesList(),
          ],
        ));
  }

  Widget _buildExperiencesList() {
    return  Expanded(
      child:  ListView(
        children: experiences
            .map((experience) =>  ExperienceRow(experience: experience,))
            .toList(),
      ),
    );
  }

  Widget _buildMyExperiencesHeader() {
    return  Padding(
        padding:  EdgeInsets.only(left: 64.0),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
             Text(
              'My Experiences',
              style:  TextStyle(fontSize: 24.0),
            ),
             Text('As a Software Engineer',
                style:  TextStyle(color: Colors.grey, fontSize: 18.0))
          ],
        ));
  }

  Widget _buildTimeline() {
    return  Positioned(
      top: 0.0,
      bottom: 0.0,
      left: 32.0,
      child:  Container(width: 1.0, color: Colors.grey[300]),
    );
  }
}
