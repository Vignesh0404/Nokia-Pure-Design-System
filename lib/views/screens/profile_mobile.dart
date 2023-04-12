import 'package:flutter/material.dart';
import 'package:nokia/constants/constants.dart';

class ProfileMobile extends StatelessWidget {
  const ProfileMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150, 
                  width: 150,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                    image: DecorationImage(
                      image: NetworkImage('https://media.istockphoto.com/id/1372641621/photo/portrait-of-a-businessman-on-gray-background.jpg?b=1&s=170667a&w=0&k=20&c=Yyi5slaeNpq_HPcfgy1305VpJSwerPm_s7mTz_bBk6c='),
                      fit: BoxFit.cover
                      )
                    ),
                  ),
                  Text('Vignesh Sankaran',
                    style: AppFontStyles.k26BoldTextStyle,
                  ),
                  const SizedBox(height: 20,),
                   Text('Junior, Computer Science dept',
                    style: AppFontStyles.k14RegularTextStyle,
                  )   
              ],
            ),
          ),
        ),
      ),
    );
  }
}