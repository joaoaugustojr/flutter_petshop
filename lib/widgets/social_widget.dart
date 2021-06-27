import 'package:flutter/material.dart';
import 'package:flutter_petshop/configs/theme/assets_config.dart';
import 'package:flutter_petshop/configs/theme/pallete_config.dart';
import 'package:flutter_svg/svg.dart';

class AppSocial extends StatelessWidget {
  const AppSocial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildSocialContainer(
          socialColor: AppPallete.facebookColor,
          pathIcon: AppIcons.facebook,
          widthIcon: 10,
          openExternalLink: () {
            print("**** Open link Facebook");
          },
        ),
        SizedBox(width: 10),
        buildSocialContainer(
          socialColor: AppPallete.googleColor,
          pathIcon: AppIcons.google,
          widthIcon: 20,
          openExternalLink: () {
            print("**** Open link Google");
          },
        ),
      ],
    );
  }

  Container buildSocialContainer({
    required Color socialColor,
    required String pathIcon,
    required double widthIcon,
    required VoidCallback openExternalLink,
  }) {
    return Container(
      width: 45,
      height: 45,
      child: ElevatedButton(
        onPressed: openExternalLink,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 0,
          ),
          primary: socialColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: SvgPicture.asset(
          pathIcon,
          color: Colors.white,
          width: widthIcon,
        ),
      ),
    );
  }
}
