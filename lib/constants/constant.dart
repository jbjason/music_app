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

const boxShadow = [
  BoxShadow(
    color: iconBack1,
    spreadRadius: 2,
    blurRadius: 10,
    offset: Offset(3, 3),
  ),
  BoxShadow(
    color: backColor,
    spreadRadius: 2,
    blurRadius: 30,
    offset: Offset(-2, -2),
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
    img: 'assets/images/cover2.png',
  ),
  PodCast(
    title: 'Let her go',
    singer: 'Passenger',
    img: 'assets/images/image4.png',
  ),
  PodCast(
    title: 'November Rain',
    singer: 'Gun\'s n Roses',
    img: 'assets/images/image5.png',
  ),
  PodCast(
    title: 'Hey Jude',
    singer: 'The Beatles',
    img: 'assets/images/image6.jpg',
  ),
  PodCast(
    title: 'There is a light that never goes out',
    singer: 'The Smiths',
    img: 'assets/images/image7.jpg',
  ),
];
