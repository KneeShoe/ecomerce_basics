import 'dart:core';
import 'package:flutter/material.dart';

class Ads {
  Ads(im, tit, desc, cat, subcat, type, date, omr, stat, loc, nam, mail, num) {
    image = im;
    title = tit;
    description = desc;
    category = cat;
    subcategory = subcat;
    typemaker = type;
    datePosted = date;
    OMR = omr;
    status = stat;
    name = nam;
    email = mail;
    number = num;
    location = loc;
  }

  String image;
  String title;
  String description;
  String category;
  String subcategory;
  String typemaker;
  String datePosted;
  String OMR;
  String status;
  String location;
  String name;
  String email;
  String number;
}

class data {
  static int _ind;
  static String _image;
  static String _title;
  static String _description;
  static String _category;
  static String _subcategory;
  static String _typemaker;
  static String _datePosted;
  static String _OMR;
  static String _status;
  static String _loc;
  static String _name;
  static String _email;
  static String _number;
  static Ads _obj;

  static void setimage(String image) {
    _image = image;
  }

  static void settitle(String title) {
    _title = title;
  }

  static void setdescription(String desc) {
    _description = desc;
  }

  static void setcatrgory(String cat) {
    _category = cat;
  }

  static void setad(Ads obj) {
    _obj = obj;
  }

  static Ads getad() {
    return _obj;
  }

  static void setind(int ind) {
    _ind = ind;
  }

  static int getind() {
    return _ind;
  }
}
