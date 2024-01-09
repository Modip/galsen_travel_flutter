import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:galsen_travel/constant.dart';
import 'package:galsen_travel/controllers/register_controller.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final controller = Get.put(RegisterController());

    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: height * 0.03,
                child: Container(
                  decoration: const BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16))),
                ),
              ),
              SizedBox(
                height: height * .04,
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 4),
                child: Text(
                  "Bienvenue au pays de téranga",
                  style: TextStyle(
                      fontSize: width * .06,
                      fontWeight: FontWeight.w800,
                      color: kPrimaryColor),
                ),
              ),
              SizedBox(
                height: height * .04,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  "S'inscrire",
                  style: TextStyle(
                      fontSize: width * .05,
                      fontWeight: FontWeight.w800,
                      color: kPrimaryColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 8),
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (email) => controller.validateEmail(email),
                        decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: kPrimaryColor, width: 2),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: kPrimaryColor, width: 3),
                            ),
                            suffixIcon: Icon(
                              Icons.check,
                              size: 30,
                              color: kPrimaryColor,
                            ),
                            label: Text(
                              "Email",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kPrimaryColor),
                            )),
                      ),
                      TextFormField(
                        validator: (password) =>
                            controller.validatePassword(password),
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: kPrimaryColor, width: 2),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: kPrimaryColor, width: 3),
                          ),
                          suffixIcon: Icon(
                            Icons.visibility_off,
                            size: 30,
                            color: kPrimaryColor,
                          ),
                          label: Text(
                            "Mot de passe",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor),
                          ),
                        ),
                      ),
                      TextFormField(
                        validator: (password) =>
                            controller.validateConfirmePassword(password),
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: kPrimaryColor, width: 2),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: kPrimaryColor, width: 3),
                          ),
                          suffixIcon: Icon(
                            Icons.visibility_off,
                            size: 30,
                            color: kPrimaryColor,
                          ),
                          label: Text(
                            "Confirme",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * .08,
              ),
              SizedBox(
                height: height * 0.1,
                width: width * 5,
                child: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: TextButton(
                          onPressed: () => controller.onSubmit(),
                          child: const Text(
                            "valider",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                    )),
              ),
              SizedBox(
                height: height * .05,
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  "Ou s'inscrire avec",
                  style: TextStyle(
                      fontSize: width * .05,
                      fontWeight: FontWeight.w800,
                      color: kPrimaryColor),
                ),
              ),
              SizedBox(
                height: height * .02,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                height: height * .06,
                width: width * .5,
                color: kBackgroundColor,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: width * .14,
                      alignment: Alignment.center,
                      child: SvgPicture.asset("assets/svg/gmail.svg"),
                    ),
                    Container(
                      width: width * .14,
                      alignment: Alignment.center,
                      child: SvgPicture.asset("assets/svg/instagram.svg"),
                    ),
                    Container(
                      width: width * .14,
                      alignment: Alignment.center,
                      child: SvgPicture.asset("assets/svg/twitterx.svg"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
