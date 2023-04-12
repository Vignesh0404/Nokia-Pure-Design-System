import 'package:flutter/material.dart';
import 'package:nokia/constants/constants.dart';
import 'package:nokia/views/widgets/widgets.dart';

class RoomDetailedMobile extends StatefulWidget {
  const RoomDetailedMobile({super.key});

  @override
  State<RoomDetailedMobile> createState() => _RoomDetailedMobileState();
}

class _RoomDetailedMobileState extends State<RoomDetailedMobile> {

  int accentSlider = 66;
  int overheadSlider = 52;
  int readingSlider = 63;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.only(top:18, left: 16, right: 16),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios, color: AppColors.textBlack,size: 22,),
              ),
              IconButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.more_horiz_outlined, color: AppColors.textBlack,size: 22,),
              ),
            ],
          ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 36.0,right: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Bedroom',
                  style: AppFontStyles.k26BoldTextStyle.copyWith(
                    color: AppColors.textBlack
                  ),
                ),
                const SizedBox(height: 3.0,),
                Text('5 Fixtures',
                  style: AppFontStyles.k20LightTextStyle.copyWith(
                    color: const Color.fromARGB(255, 135, 132, 132)
                  ),
                ),
                const SizedBox(height: 50,),
                Center(
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: AppColors.inActiveGrey,
                      borderRadius: BorderRadius.all(Radius.circular(40))
                    ),
                    child: Container(
                      // alignment: Alignment.start,
                      width: MediaQuery.of(context).size.width/1.5,
                      decoration: const BoxDecoration(
                        color: AppColors.containerMainBlue,
                        borderRadius: BorderRadius.all(Radius.circular(40)
                      )
                    ),
                  ),
                ), 
              ),
              const SizedBox(height: 35,),
              Container(
                height: 4,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: AppColors.inActiveGrey,
                  borderRadius: BorderRadius.all(Radius.circular(4))
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Text('Accent',
                    style:  AppFontStyles.k18BoldTextStyle.copyWith(
                    color: const Color.fromARGB(255, 27, 25, 25)),
                  ),
                  const Spacer(),
                  Text('$accentSlider%',
                    style:  AppFontStyles.k16LightTextStyle.copyWith(
                    color:  AppColors.textBlack),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.containerMainBlue
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Icon(Icons.lightbulb_outline, size: 20, color: AppColors.primaryNokiaBlue,),
                    )
                  )
                  ],),
                  SliderTheme(
                    data: SliderThemeData(
                      trackShape: CustomTrackShape(),
                    ),
                    child: Slider(
                      activeColor: AppColors.containerMainBlue,
                      inactiveColor: AppColors.inActiveGrey,
                      value: accentSlider.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          accentSlider = value.toInt();
                        });
                      },
                      min: 0,
                      max: 100,
                    ),
                  ),

              const SizedBox(height: 20,),
              Container(
                height: 4,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: AppColors.inActiveGrey,
                  borderRadius: BorderRadius.all(Radius.circular(4))
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Text('Overhead',
                    style:  AppFontStyles.k18BoldTextStyle.copyWith(
                    color: const Color.fromARGB(255, 27, 25, 25)),
                  ),
                  const Spacer(),
                  Text('$overheadSlider%',
                    style:  AppFontStyles.k16LightTextStyle.copyWith(
                    color:  AppColors.textBlack),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.containerMainBlue
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Icon(Icons.lightbulb_outline, size: 20, color: AppColors.primaryNokiaBlue,),
                    )
                  )
                  ],),
                  SliderTheme(
                    data: SliderThemeData(
                      trackShape: CustomTrackShape(),
                    ),
                    child: Slider(
                      activeColor: AppColors.containerMainBlue,
                      inactiveColor: AppColors.inActiveGrey,
                      value: overheadSlider.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          overheadSlider = value.toInt();
                        });
                      },
                      min: 0,
                      max: 100,
                    ),
                  ),

              const SizedBox(height: 20,),
              Container(
                height: 4,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: AppColors.inActiveGrey,
                  borderRadius: BorderRadius.all(Radius.circular(4))
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Text('Reading',
                    style:  AppFontStyles.k18BoldTextStyle.copyWith(
                    color: const Color.fromARGB(255, 27, 25, 25)),
                  ),
                  const Spacer(),
                  Text('$readingSlider%',
                    style:  AppFontStyles.k16LightTextStyle.copyWith(
                    color:  AppColors.textBlack),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.containerMainBlue
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Icon(Icons.lightbulb_outline, size: 20, color: AppColors.primaryNokiaBlue,),
                    )
                  )
                  ],),
                  SliderTheme(
                    data: SliderThemeData(
                      trackShape: CustomTrackShape(),
                    ),
                    child: Slider(
                      activeColor: AppColors.containerMainBlue,
                      inactiveColor: AppColors.inActiveGrey,
                      value: readingSlider.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          readingSlider = value.toInt();
                        });
                      },
                      min: 0,
                      max: 100,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 4,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: AppColors.inActiveGrey,
                      borderRadius: BorderRadius.all(Radius.circular(4))
                    ),
                  ),
              ],  
            ),
          )],
        )
      ),
    );
  }
}

