import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nokia/constants/constants.dart';
import 'package:nokia/views/widgets/widgets.dart';

class AdjustLightMobile extends StatefulWidget {
  const AdjustLightMobile({super.key});

  @override
  State<AdjustLightMobile> createState() => _AdjustLightMobileState();
}

class _AdjustLightMobileState extends State<AdjustLightMobile> {

  int _counter = 12;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
        statusBarColor: Color.fromARGB(255, 192, 217, 252),
      ),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 216, 226, 238),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/1.5,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.1, 1.5],
                    colors: [
                      Color.fromARGB(255, 192, 217, 252),
                      Color.fromARGB(255, 216, 226, 238),
                    ],
                  )
                ),
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
                      ],),
                    ),
                    const SizedBox(height: 160,),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: ()=>_incrementCounter,
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 183, 203, 232)
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.keyboard_arrow_up_outlined, size: 24, color: AppColors.textBlack,),
                              )),
                          ),
                          const SizedBox(height: 30,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(' $_counter',
                              style: AppFontStyles.k42RegularTextStyle.copyWith(
                                color: const Color.fromARGB(255, 48, 44, 44)
                              ),),
                              const SizedBox(width: 2,),
                              Text('%',
                              style: AppFontStyles.k20RegularTextStyle.copyWith(
                                color: const Color.fromARGB(255, 48, 44, 44)
                              ),),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          InkWell(
                            onTap: ()=>_incrementCounter,
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 183, 203, 232)
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.keyboard_arrow_down_outlined, size: 24, color: AppColors.textBlack,),
                              )),
                          )
    
    
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Container(
                height: MediaQuery.of(context).size.height/3.8 + 6,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Adjust light level',
                        style: AppFontStyles.k18BoldTextStyle.copyWith(
                          color: const Color.fromARGB(255, 48, 44, 44)
                        ),
                      ),
                      const SizedBox(height: 10,),
                       SizedBox(
                        width: 280,
                        child: Text('Continue tapping until you see the light level changes.',
                          textAlign: TextAlign.center,
                          style: AppFontStyles.k14UltraLightTextStyle.copyWith(
                            color: const Color.fromARGB(255, 44, 39, 39)
                          ),),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        height: 40,
                        width: 280,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color.fromARGB(255, 216, 226, 238),
                        ),
                        child:  const Padding(
                          padding:  EdgeInsets.only(top:5.0),
                          child: Center(child: Text('Fix it',
                          style: TextStyle(
                            color: Color.fromARGB(255, 48, 44, 44)
                          ),)),
                        ),
                      ),
                      const SizedBox(height: 8,),
                      Container(
                        height: 40,
                        width: 280,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: AppColors.activeBlueButton,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top:5.0),
                          child: Center(child: Text('Level is fine',
                          style: TextStyle(
                            color: AppColors.backgroundWhite
                          ),)),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}