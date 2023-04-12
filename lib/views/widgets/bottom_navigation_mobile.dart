import 'package:flutter/material.dart';
import 'package:nokia/views/screens/screens.dart';

import '../../constants/constants.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentTab = 0;
  final List<Widget> screens = const[HomeMobile(), RoomDetailedMobile(), ThirdPageMobile(), ProfileMobile()];

  Widget currentScreen = const HomeMobile();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        body: PageStorage(bucket: bucket, child: currentScreen),
        bottomNavigationBar: BottomAppBar(
          // shape: CircularNotchedRectangle(),
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      currentScreen = const HomeMobile();
                      currentTab = 0;
                    });
                  },
                  child: 
                    Icon(
                      Icons.home_outlined,
                      size: 30,
                      color: currentTab == 0
                        ? AppColors.primaryNokiaBlue
                        : Colors.grey,
                    ),
                ),

                MaterialButton(
                  onPressed: () {
                    setState(() {
                      currentScreen = const RoomDetailedMobile();
                      currentTab = 1;
                    });
                  },
                  child: 
                    Icon(
                      Icons.phone_android_outlined,
                      size: 30,
                      color: currentTab == 1
                        ? AppColors.primaryNokiaBlue
                        : Colors.grey,
                    ),
                ),


                MaterialButton(
                  onPressed: () {
                    setState(() {
                      currentScreen = const ThirdPageMobile();
                      currentTab = 2;
                    });
                  },
                  child: 
                    Icon(
                      Icons.repeat_sharp,
                      size: 30,
                      color: currentTab == 2
                        ? AppColors.primaryNokiaBlue
                        : Colors.grey,
                    ),
                ),

                MaterialButton(
                  onPressed: () {
                    setState(() {
                      currentScreen = const ProfileMobile();
                      currentTab = 3;
                    });
                  },
                  child: 
                    Icon(
                      Icons.person_2_outlined,
                      size: 30,
                      color: currentTab == 3
                        ? AppColors.primaryNokiaBlue
                        : Colors.grey,
                    ),
                ),


              ]
            )       
          ),
        ),
      ),
    );
  }
}