import 'package:flutter/material.dart';
import 'package:music_app/models/podcast.dart';

const backColor = Color(0xFF111110);
const secondaryColor = Color(0xFFB3EB16);
const iconBack1 = Color(0xFF292929);
const iconBack2 = Color(0xFF5D6B54);
const iconColor = Color(0x99FFFFFF);
const textColor = Color(0xFFFFFFFF);
const textSecondary = Color(0xFF757575);

const a = Colors.white;

final bodyGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [iconBack1, iconBack1, iconBack1.withOpacity(0.7)],
);

final boxShadow = [
  BoxShadow(
    color: Colors.teal.shade100.withOpacity(0.5),
    spreadRadius: 1,
    blurRadius: 3,
    offset: const Offset(-1, -1),
  ),
  const BoxShadow(
    color: Colors.black,
    spreadRadius: 2,
    blurRadius: 20,
    offset: Offset(5, 5),
  ),
];

const List<String> categories = [
  'Trending',
  'Reccomended',
  'Featured',
  'Latest',
  'Upcoming',
  'Popular',
];

final List<PodCast> podcasts = [
  PodCast(
    title: 'Asleep',
    singer: 'The Smiths',
    img: 'assets/images/image1.png',
  ),
  PodCast(
    title: 'Let her go',
    singer: 'Passenger',
    img: 'assets/images/image2.jpg',
  ),
  PodCast(
    title: 'November Rain',
    singer: 'Gun\'s n Roses',
    img: 'assets/images/image3.jpg',
  ),
  PodCast(
    title: 'Hey Jude',
    singer: 'The Beatles',
    img: 'assets/images/image4.jpg',
  ),
  PodCast(
    title: 'There is a light that never goes out',
    singer: 'The Smiths',
    img: 'assets/images/image6.jpg',
  ),
];
