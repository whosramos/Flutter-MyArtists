import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_artists/widgets/artist.dart';
import '../models/artists.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;
  int _selectedPage = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 5, vsync: this);
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 40.0),
          children: <Widget>[
            _header(),
            SizedBox(height: 20.0),
            _sliderArtists(),
            _description()
          ],
        ),
      ),
    );
  }

  _header() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'My Artists',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'Quicksand',
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'see your favorite artists\nand more',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'Quicksand',
              ),
            ),
          ),
        ]);
  }

  _sliderArtists() {
    return Container(
      height: 400.0,
      width: double.infinity,
      child: PageView.builder(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() => _selectedPage = index);
        },
        itemCount: myArtists.length,
        itemBuilder: (BuildContext context, int index) {
          return ArtistSlider(
            pageController: _pageController,
            index: index,
            artistChoosed: myArtists[index],
          );
        },
      ),
    );
  }

  _description() {
    return Padding(
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Description',
            style: TextStyle(
              fontSize: 22.0,
              color: Colors.black87,
              fontWeight: FontWeight.w600,
              fontFamily: 'Quicksand',
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            myArtists[_selectedPage].biography,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 16.0,
              fontFamily: 'Quicksand',
            ),
          ),
        ],
      ),
    );
  }
}
