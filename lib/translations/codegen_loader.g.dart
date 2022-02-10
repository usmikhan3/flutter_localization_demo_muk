// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "home_page": "Home Page",
  "personal_info": "Personal Information",
  "name": "Name",
  "name_hint": "Enter your name",
  "email": "Email",
  "email_hint": "Enter your email",
  "date_of_birth": "Date of Birth",
  "required_field": "Required Field",
  "submit_info": "Submit Information",
  "about_us": "About Us",
  "settings": "Settings",
  "change_language": "Change language",
  "about": "Lorem Ipsum is simply a dummy text"
};
static const Map<String,dynamic> ur = {
  "home_page": "ہوم پیج",
  "personal_info": "ذاتی معلومات",
  "name": "نام",
  "name_hint": "اپنا نام درج کریں",
  "email": "ای میل",
  "email_hint": "اپنا ای میل درج کریں",
  "date_of_birth": "پیدائش کی تاریخ",
  "required_field": "مطلوب خانہ",
  "submit_info": "معلومات جمع کروائیں",
  "about_us": "ہمارے بارے میں",
  "settings": "ترتیبات",
  "change_language": "زبان تبدیل کریں",
  "about": "Lorem Ipsum محض ایک ڈمی متن ہے۔"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "ur": ur};
}
