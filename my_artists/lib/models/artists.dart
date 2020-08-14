import 'package:flutter/material.dart';

class Artist {
  final String firstName;
  final String lastName;
  final String avatar;
  final String backdropPhoto;
  final String location;
  final String biography;
  final List<Video> videos;
  final String tag;

  Artist({
    @required this.firstName,
    @required this.lastName,
    @required this.avatar,
    @required this.backdropPhoto,
    @required this.location,
    @required this.biography,
    @required this.videos,
    @required this.tag,
  });
}

class Video {
  Video({
    @required this.title,
    @required this.thumbnail,
    @required this.url,
  });

  final String title;
  final String thumbnail;
  final String url;
}

final List<Artist> myArtists = [
  Artist(
    firstName: 'Jesse',
    lastName: 'Rutherford',
    avatar: 'assets/images/Jesse.jpg',
    backdropPhoto: 'assets/images/jesseBG.jpg',
    location: 'California, USA',
    biography: "Rutherford was born in California (Newbury Park). "
        "Since young that he is involved on the entertainment industry. "
        "As a child, he used to perform in Talent shows where he impersonated N'Sync "
        "members and Elvis Presley. This passion to perform lead Rutherford to work on"
        " TV commercials (such as Hallmark) and then on Films & TV projects such as the "
        "role in the 2002 film Life or Something Like It, followed by a role in the 2002 film Bundy. In 2002,"
        " Rutherford had also a small television role in the Star Trek: Enterprise episode Marauders."
        " Throughout his teen years, he was part of a few local bands as a singer.",
    videos: <Video>[
      Video(
        title: 'Jesse - Blame',
        thumbnail: 'assets/images/jesse01.jpg',
        url: 'https://www.youtube.com/watch?v=2Q0JnW3l8qY',
      ),
      Video(
        title: 'Jesse - Drama ',
        thumbnail: 'assets/images/jesse02.jpg',
        url: 'https://www.youtube.com/watch?v=jX-1vbaxLqk',
      ),
      Video(
        title: 'Jesse - Bloom Later',
        thumbnail: 'assets/images/jesse03.jpg',
        url: 'https://www.youtube.com/watch?v=XCirsEZCGO4',
      ),
    ],
    tag: 'artist01',
  ),
  Artist(
    firstName: 'Alex',
    lastName: 'Turner',
    avatar: 'assets/images/alex.jpg',
    backdropPhoto: 'assets/images/alexbg.jpg',
    location: 'Sheffield, England',
    biography:
        "Alexander David Turner (born 6 January 1986) is an English musician, "
        "singer, songwriter, and record producer. He is best known as the frontman and "
        "principal songwriter of the rock band Arctic Monkeys, with whom he has released six albums."
        " He has also recorded with his side project The Last Shadow Puppets and as a solo artist.",
    videos: <Video>[
      Video(
        title: 'Arctic Monkeys - R U Mine?',
        thumbnail: 'assets/images/alex01.jpg',
        url: 'https://www.youtube.com/watch?v=VQH8ZTgna3Q',
      ),
      Video(
        title: 'Arctic Monkeys - Do I Wanna Know ?',
        thumbnail: 'assets/images/alex02.jpg',
        url: 'https://www.youtube.com/watch?v=bpOSxM0rNPM',
      ),
      Video(
        title: "Arctic Monkeys - Why'd You Only Call Me When You're High",
        thumbnail: 'assets/images/alex03.jpg',
        url: 'https://www.youtube.com/watch?v=6366dxFf-Os',
      ),
    ],
    tag: 'artist02',
  ),
  Artist(
    firstName: 'Kurt',
    lastName: 'Cobain',
    avatar: 'assets/images/kurt.jpg',
    backdropPhoto: 'assets/images/kurtbg.jpg',
    location: 'Washington, USA',
    biography:
        "Kurt Donald Cobain (February 20, 1967 – April 5, 1994) was an American singer-songwriter "
        "and musician, best known as the guitarist, primary songwriter and frontman of "
        "the rock band Nirvana. Through his angst fueled songwriting and anti-establishment persona,"
        " Cobain's compositions widened the thematic conventions of mainstream rock music. "
        "He was often heralded as a spokesman of Generation X and has since been "
        "considered to be one of the most influential rock musicians in the history of alternative music.",
    videos: <Video>[
      Video(
        title: 'Nirvana - Smells Like Teen Spirit',
        thumbnail: 'assets/images/kurt01.jpg',
        url: 'https://www.youtube.com/watch?v=hTWKbfoikeg',
      ),
      Video(
        title: 'Nirvana - Come As You Are',
        thumbnail: 'assets/images/kurt02.jpg',
        url: 'https://www.youtube.com/watch?v=vabnZ9-ex7o',
      ),
      Video(
        title: "Nirvana - In Bloom",
        thumbnail: 'assets/images/kurt03.jpg',
        url: 'https://www.youtube.com/watch?v=PbgKEjNBHqM',
      ),
    ],
    tag: 'artist03',
  )
];
