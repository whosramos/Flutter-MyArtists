import 'package:flutter/material.dart';
import '../models/artists.dart';
import '../pages/artistDetails.dart';

class ArtistSlider extends StatelessWidget {
  PageController pageController;
  int index;
  Artist artistChoosed;
  ArtistSlider({
    @required this.pageController,
    @required this.index,
    @required this.artistChoosed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedBuilder(
        animation: pageController,
        builder: (BuildContext context, Widget widget) {
          double value = 1;
          if (pageController.position.haveDimensions) {
            value = pageController.page - index;
            value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
          }
          return Center(
            child: SizedBox(
              height: Curves.easeInOut.transform(value) * 400.0,
              width: Curves.easeInOut.transform(value) * 400.0,
              child: widget,
            ),
          );
        },
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return ArtistDetailsPage(artist: artistChoosed);
            }));
          },
          child: _content(),
        ),
      ),
    );
  }

  _content() {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(artistChoosed.backdropPhoto),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.7),
                BlendMode.darken,
              ),
            ),
            color: Colors.black,
            borderRadius: BorderRadius.circular(20.0),
          ),
          margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 30.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 30,
                left: 20,
                right: 20,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white30),
                    ),
                    padding: const EdgeInsets.all(6.0),
                    child: ClipOval(
                      child: Image(
                        height: 200.0,
                        width: 200.0,
                        image: AssetImage(artistChoosed.avatar),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 30.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${myArtists[index].firstName}\n${myArtists[index].lastName}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Quicksand',
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      myArtists[index].location,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: 'Quicksand',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
