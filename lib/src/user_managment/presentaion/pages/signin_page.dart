import 'package:flutter/material.dart';
import 'package:real_estate_app/colors.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/text_header.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/text_meduim.dart';
import 'package:real_estate_app/src/user_managment/presentaion/components/social_media_component.dart';
import 'package:real_estate_app/src/user_managment/presentaion/pages/sign_up_page.dart';
import 'package:real_estate_app/src/user_managment/presentaion/widgets/button.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/input_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});
  static String get route => "sign_in";
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const TextHeader(title: "تسجيل الدخول"),
                const SizedBox(
                  height: 10,
                ),
                SvgPicture.asset(
                  "assets/login_in.svg",
                  height: 230,
                  fit: BoxFit.scaleDown,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: TextMeduimWidget(title: "أيميل")),
                ),
                InputText(
                  placeHolder: "aaaaehwaaa@gmail.com",
                  textEditingController: _controllerEmail,
                  icon: const Icon(Icons.email_outlined),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: TextMeduimWidget(title: "كلمة المرور")),
                ),
                InputText(
                  isPassword: true,
                  placeHolder: "password",
                  textEditingController: _controllerPass,
                  icon: const Icon(Icons.lock_outline),
                ),
                Row(children: [
                  const Icon(
                    Icons.circle,
                    size: 15,
                    color: appPrimaryColor,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButton(
                      onPressed: () {},
                      child:
                          const TextMeduimWidget(title: "هل نسيت كلمة المرور؟")),
                ]),
                Row(children: [
                  const Icon(
                    Icons.circle,
                    size: 15,
                    color: appPrimaryColor,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    child: const TextMeduimWidget(title: "إنشاء حساب جد يد"),
                    onPressed: () {
                      Navigator.pushNamed(context, SignUpPage.route);
                    },
                  ),
                ]),
                const SizedBox(
                  height: 20,
                ),
                Button(
                  name: "تسجيل الدخول",
                  onTap: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.black,
                  indent: 100,
                  endIndent: 100,
                ),
                const TextMeduimWidget(title: "أو"),
                const SicoalMediaButtonsComponents()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
