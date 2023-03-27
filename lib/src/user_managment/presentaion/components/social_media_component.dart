import 'package:flutter/material.dart';
import 'package:real_estate_app/src/user_managment/presentaion/widgets/social_media_button_widget.dart';

class SicoalMediaButtonsComponents extends StatelessWidget {
  const SicoalMediaButtonsComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 SocialMediaButton(imgPth: 
                          "assets/google_icon.svg",onTap: () {
                            
                          },
                     
                  ),
                  SocialMediaButton(imgPth: 
                          "assets/facbook_icon.svg",
                        onTap: () {
                          
                        },
                  ),
                   SocialMediaButton(imgPth: "assets/tiwter_icon.svg",onTap: () {
                    
                  },)
                ],
              );
  }
}