import 'package:flutter/material.dart';
import 'package:nokia/constants/constants.dart';
import 'package:nokia/model/home_mobile_models.dart';
import 'package:nokia/views/screens/adjust_light_mobile.dart';
import 'package:nokia/views/screens/room_detailed_mobile.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Home',
                          style: AppFontStyles.k16RegularTextStyle.copyWith(
                            color: AppColors.textBlack
                          ),
                        ),
                        Transform.translate(
                          offset: const Offset(0, -3),
                          child: const Icon(Icons.keyboard_arrow_down_outlined, size: 22, color: AppColors.textBlack,)
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:5.0, bottom: 15),
                      child: Text('Good morning, Mark',
                        style: AppFontStyles.k26BoldTextStyle.copyWith(
                          color: AppColors.textBlack
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: homeMobileSlideList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(right:15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 75,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.containerBackgroundBlue,
                                    image: DecorationImage(image: AssetImage(homeMobileSlideList[index].img))
                                  ),
                                ),
                                const SizedBox(height: 5,),
                                Padding(
                                  padding: const EdgeInsets.only(left:3.0),
                                  child: Text(homeMobileSlideList[index].title,
                                  style:  AppFontStyles.k12LightTextStyle.copyWith(
                                  color: const Color.fromARGB(255, 42, 39, 39)),
                                  ),
                                )
                              ],
                            ),
                          );
                        }
                      ),
                    ),
                    const SizedBox(height: 25,),
                    GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 300,
                        childAspectRatio: 3/4,
                        crossAxisSpacing: 20,
                        mainAxisExtent: 170
                      ),
                      itemCount: homeMobileRoomList.length,
                      itemBuilder: ((BuildContext context, index) {

                        String roomName = homeMobileRoomList[index].roomName;
                        String roomFixtures = homeMobileRoomList[index].roomFixtures;
                        bool swtichLight = homeMobileRoomList[index].switchLight;

                        return Padding(
                          padding: const EdgeInsets.only(bottom:10.0),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const AdjustLightMobile(),
                                ),
                              );
                            },
                            child: Container(
                              // height: 170,
                              // width: MediaQuery.of(context).size.width/2.6,
                              decoration: BoxDecoration(
                                color: swtichLight ? 
                                AppColors.containerMainBlue : AppColors.inActiveGrey,
                                borderRadius: const BorderRadius.all(Radius.circular(10))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start, 
                                  children: [
                                    Text(roomName,
                                      style:  AppFontStyles.k16BoldTextStyle.copyWith(
                                      color: const Color.fromARGB(255, 27, 25, 25)),
                                    ),
                                    Row(
                                      children: [
                                        Transform.translate(
                                          offset: const Offset(0, -2,),
                                          child: Container(
                                            height: 4,
                                            width: 4,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: swtichLight ? Colors.green : Colors.grey
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 5.0,),
                                        Text(roomFixtures,
                                          style:  AppFontStyles.k12RegularTextStyle.copyWith(
                                          color: AppColors.textBlack),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Row(
                                      children: [
                                        const Spacer(),
                                        Container(
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: AppColors.backgroundWhite
                                          ),    
                                          child: IconButton(
                                            onPressed: (){
                                              setState(() {
                                                swtichLight = !swtichLight;
                                              });
                                            },
                                            icon: swtichLight ? const Icon(
                                              Icons.lightbulb_outline,
                                              color: Color.fromARGB(255, 235, 186, 38),
                                            ) 
                                            : const Icon(
                                              Icons.lightbulb_sharp,
                                              color: Colors.grey,
                                            )
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                    )
                  )],
                ),
              ),
            ], 
          ),
        ),
      ),
    );
  }
}