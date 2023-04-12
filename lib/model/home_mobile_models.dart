
import 'package:nokia/constants/constants.dart';

class HomeMobileSlideModel {

  final String title;
  late String img;

  HomeMobileSlideModel({
    required this.title,
    required this.img
  });
}

final homeMobileSlideList = [
  HomeMobileSlideModel(title: 'Early rise', img: ImageAssets.earlyRise),
  HomeMobileSlideModel(title: 'Coffee time', img: ImageAssets.coffeeTime),
  HomeMobileSlideModel(title: 'Workout', img: ImageAssets.workOut),
  HomeMobileSlideModel(title: 'Play time', img: ImageAssets.playTime),
];


class HomeMobileRoomsModel {

  final String roomName;
  final String roomFixtures;
  bool switchLight;

  HomeMobileRoomsModel({
    required this.roomName,
    required this.roomFixtures,
    required this.switchLight
  });
}

final homeMobileRoomList = [
  HomeMobileRoomsModel(
    roomName: 'Bathroom',
    roomFixtures: '1 fixture on',
    switchLight: true
  ),
  HomeMobileRoomsModel(
    roomName: 'Bedroom',
    roomFixtures: '6 fixture on',
    switchLight: true
  ),
  HomeMobileRoomsModel(
    roomName: 'Kitchen',
    roomFixtures: '1 fixture on',
    switchLight: true
  ),
  HomeMobileRoomsModel(
    roomName: 'Living room',
    roomFixtures: '0 fixture on',
    switchLight: false
  ),
  HomeMobileRoomsModel(
    roomName: 'Guest Room',
    roomFixtures: '0 fixture on',
    switchLight: false
  ),
  HomeMobileRoomsModel(
    roomName: 'Hallway',
    roomFixtures: '0 fixture on',
    switchLight: false
  ),
];