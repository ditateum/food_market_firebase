import 'package:flutter/material.dart';
import 'package:food_market_app/constant/app_colors.dart';
import 'package:food_market_app/constant/app_sizes.dart';
import 'package:food_market_app/constant/app_text_style.dart';
import 'package:food_market_app/presentation/widgets/auth/auth_header.dart';

class SignInScreen extends StatefulWidget {
  static const route = "/sign-in";

  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: ListView(
        children: [
          const AuthHeader(),
          Container(
            width: double.maxFinite,
            height: 24,
            color: kBackgroundColor,
          ),
          Container(
            margin: const EdgeInsets.only(top: Sized.p24),
            padding: const EdgeInsets.all(Sized.p24),
            color: kWhiteColor,
            child: Form(
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email Address',
                        style: titleH2,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value != null) {
                            if (value.isEmpty || !value.contains('@')) {
                              return "Please enter a valid email address.";
                            }
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Type your email address',
                          hintStyle: subTitleRegular,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(Sized.p20),
                            borderSide: BorderSide(
                              color: kBlackColor,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(Sized.p20),
                            borderSide: BorderSide(
                              color: kBlackColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  gapH16,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password',
                        style: titleH2,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value != null) {
                            if (value.isEmpty || value.length < 7) {
                              return "Password must be at least 7 characters long.";
                            }
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Type your password',
                          hintStyle: subTitleRegular,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(Sized.p20),
                            borderSide: BorderSide(
                              color: kBlackColor,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(Sized.p20),
                            borderSide: BorderSide(
                              color: kBlackColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  gapH24,
                  Container(
                    width: double.maxFinite,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Sized.p8),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: kPrimaryColor,
                      ),
                      child: Text('Sign In', style: titleH3),
                    ),
                  ),
                  gapH12,
                  Container(
                    width: double.maxFinite,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Sized.p8),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: kGreyColor,
                      ),
                      child: Text('Create New Account', style: titleWhiteH3),
                    ),
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
