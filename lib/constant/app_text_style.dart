import 'package:flutter/material.dart';
import 'package:food_market_app/constant/app_colors.dart';
import 'package:food_market_app/constant/app_sizes.dart';
import 'package:google_fonts/google_fonts.dart';

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

TextStyle headline = GoogleFonts.poppins(
  color: kBlackColor,
  fontSize: Sized.p32,
  fontWeight: medium,
);

TextStyle titleH1 = headline.copyWith(
  fontSize: Sized.p22,
);

TextStyle titleH2 = headline.copyWith(
  fontSize: Sized.p16,
  fontWeight: regular,
);

TextStyle titleH3 = GoogleFonts.poppins(
  color: kBlackColor,
  fontWeight: medium,
);

TextStyle titleWhiteH3 = titleH3.copyWith(
  color: kWhiteColor,
);

TextStyle titleGreenH3 = titleH3.copyWith(
  color: kGreenColor,
);

TextStyle titleRedH3 = titleH3.copyWith(
  color: kGreenColor,
);

TextStyle subTitleRegular = GoogleFonts.poppins(
  color: kGreyColor,
  fontWeight: regular,
);

TextStyle subTitleLight = subTitleRegular.copyWith(
  fontWeight: light,
);
