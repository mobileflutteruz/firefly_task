import 'package:firefly_task/src/config/di/injection.dart';
import 'package:firefly_task/src/core/constants/image_const.dart';
import 'package:firefly_task/src/core/utils/utils.dart';
import 'package:firefly_task/src/presentation/bloc/auth/auth_bloc.dart';
import 'package:firefly_task/src/presentation/components/modal_progress_hud.dart';
import 'package:firefly_task/src/presentation/screen/auth/register/components/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/routes/app_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<AuthBloc>(),
      child: Scaffold(
        backgroundColor: const Color(0xffEAECF0),
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Container(
                height: 48,
                width: 48,
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffEAECF0),
                    width: 2,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                alignment: Alignment.center,
                // Align the content in the center
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 24,
                ),
              ),
              const SizedBox(width: 8), // Adding space between icon and text
              const Text(
                "Continue with E-mail",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
        ),
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.status == AuthStatus.failure) {
              AppUtils.msg(
                  context, "Failure, Check your network connection!",
                  status: MessageStatus.failure);
            }
            if (state.status == AuthStatus.succes) {
              AppUtils.msg(context, "Success");
              context.pushNamed(Routes.chooseGender);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state.status==AuthStatus.loading,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "E-mail",
                          style: TextStyle(
                            color: Color(0xFF040415),
                            fontSize: 12,
                            fontFamily: 'Airbnb Cereal',
                            fontWeight: FontWeight.w700,
                            height: 0.16,
                            letterSpacing: 1,
                          ),
                        ),
                        TextFormField(
                          controller: email,
                          decoration: const InputDecoration(
                            labelStyle: TextStyle(
                              color: Color(0xFF040415),
                              fontSize: 18,
                              fontFamily: 'Airbnb Cereal',
                              fontWeight: FontWeight.w500,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(
                                      0xff3BA935) // Specify your desired color here
                              ),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(
                                      0xff3BA935) // Specify your desired color here
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          'PASSWORD',
                          style: TextStyle(
                            color: Color(0xFF040415),
                            fontSize: 12,
                            fontFamily: 'Airbnb Cereal',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1,
                          ),
                        ),
                        TextFormField(
                          controller: pass,
                          decoration: const InputDecoration(
                            label: Text("Enter your password"),
                            labelStyle: TextStyle(
                              color: Color(0xFFCDCDD0),
                              fontSize: 18,
                              fontFamily: 'Airbnb Cereal',
                              fontWeight: FontWeight.w500,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(
                                      0xff3BA935) // Specify your desired color here
                              ),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(
                                      0xff3BA935) // Specify your desired color here
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("I forgot my password",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextButton(
                          onPressed: () {

                          },
                          child: Text(
                            "Don’t have account? Let’s create!",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
              Button(
                title: "Next",
                onTap: () {
                  // context.read<AuthBloc>().add(SignInEvent(
                  //     email: email.text.trim(), password: pass.text.trim()));

                  print("email------------------------------${email
                      .text
                      .trim()}");
                  print(
                      "pass------------------------------${pass.text
                          .trim()}");
                  context.read<AuthBloc>().add(SignUpEvent(
                      email: email.text.trim(),
                      password: pass.text.trim()));
                },
                color: Color(0xFF543B59),
                icon: ImageConst.login,
              ),

                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
