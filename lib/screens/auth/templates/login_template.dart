import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_petshop/configs/theme/assets_config.dart';
import 'package:flutter_petshop/configs/theme/pallete_config.dart';
import 'package:flutter_petshop/widgets/social_widget.dart';
import 'package:flutter_svg/svg.dart';

class LoginTemplate extends StatelessWidget {
  final String title;
  final String titleCard;
  final Widget fieldsInputs;
  final VoidCallback actionButton;
  final String footerText;
  final String footerTextAction;
  final VoidCallback footerAction;
  final double initialOffset;

  const LoginTemplate({
    Key? key,
    required this.titleCard,
    required this.title,
    required this.fieldsInputs,
    required this.actionButton,
    required this.footerText,
    required this.footerTextAction,
    required this.footerAction,
    this.initialOffset = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(initialScrollOffset: initialOffset),
        child: Container(
          child: Column(
            children: [
              buildHeaderContainer(size),
              buildCardContainer(size),
            ],
          ),
        ),
      ),
    );
  }

  Container buildHeaderContainer(Size size) {
    return Container(
      height: 250,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -45,
            height: 300,
            child: SvgPicture.asset(
              AppImages.bgDecoration,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 75,
            child: Image.asset(
              AppImages.logo,
              height: size.height * .14,
            ),
          )
        ],
      ),
    );
  }

  Widget buildCardContainer(Size size) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppPallete.textColor1),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(
              left: 25,
              right: 25,
              top: 25,
              bottom: 15,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [AppPallete.basicShadow],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleCard,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppPallete.textColor2,
                  ),
                ),
                SizedBox(height: 15),
                fieldsInputs,
                Center(
                  child: ElevatedButton(
                    onPressed: actionButton,
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(15),
                      primary: AppPallete.primaryColor,
                    ),
                    child: SvgPicture.asset(
                      AppIcons.paw,
                      fit: BoxFit.fill,
                      color: Colors.white,
                      width: 38,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15),
          buildFooterContainer(size)
        ],
      ),
    );
  }

  Widget buildFooterContainer(Size size) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            width: size.width * .4,
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    color: AppPallete.textColor1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Or",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: AppPallete.textColor1,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: AppPallete.textColor1,
                  ),
                ),
              ],
            ),
          ),
          AppSocial(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  color: AppPallete.textColor1,
                ),
                children: [
                  TextSpan(text: footerText),
                  TextSpan(
                    text: footerTextAction,
                    style: TextStyle(
                      color: AppPallete.primaryColor,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = footerAction,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
