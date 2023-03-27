import 'package:extended_phone_number_input/phone_number_input.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/src/core/presentaion/pages/home_page.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/text_header.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/text_meduim.dart';
import 'package:real_estate_app/src/user_managment/presentaion/components/social_media_component.dart';
import 'package:real_estate_app/src/user_managment/presentaion/widgets/button.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/input_text.dart';
import 'package:real_estate_app/src/user_managment/presentaion/widgets/phone_number_widget.dart';
import 'package:real_estate_app/src/user_managment/presentaion/widgets/profile_pic_widget.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  static String get route => "sign_up";

  final _namecontroller = TextEditingController();

  final _emailcontroller = TextEditingController();

  final _passController = TextEditingController();

  final _passwordglobalKey = GlobalKey<FormState>();

  @override
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Align(
                        alignment: Alignment.center,
                        child: TextHeader(title: "إنشاء حساب")),
                    const SizedBox(
                      height: 10,
                    ),
                    const Align(
                        alignment: Alignment.center, child: ProfilePicWidget()),
                    const TextMeduimWidget(title: "الأسم الكامل"),
                    InputText(
                        placeHolder: "",
                        textEditingController: _namecontroller),
                    const TextMeduimWidget(title: "الإيميل"),
                    InputText(
                        icon: const Icon(Icons.mail_outline),
                        placeHolder: "somename@mail.com",
                        textEditingController: _emailcontroller),
                    const TextMeduimWidget(title: "رقم الهاتف"),
                    PhoneNumberWidget(),
                    const TextMeduimWidget(title: "كلمة المرور"),
                    InputText(
                        isPassword: true,
                        icon: const Icon(Icons.lock_outline),
                        placeHolder: "password",
                        textEditingController: _emailcontroller),
                    const SizedBox(
                      height: 40,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Button(
                          name: "تسجيل الدخول",
                          onTap: () {
                            Navigator.pushNamed(context, HomePage.route);
                          },
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      color: Colors.black,
                      indent: 100,
                      endIndent: 100,
                    ),
                    const Align(
                        alignment: Alignment.center,
                        child: TextMeduimWidget(title: "أو")),
                    const SicoalMediaButtonsComponents()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
