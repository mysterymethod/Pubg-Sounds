import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kGunPropertyTextStyle = TextStyle(
  fontSize: 12.0,
  letterSpacing: 1.0,
  color: Color(0xFF1D2136),
  fontWeight: FontWeight.bold,
);

const kAppBarColor = Color(0xFF090E21);

var kARguns = [
  {
    'name': 'akm',
    'damage': '48',
    'magazine': '30',
    'range': '100-400',
    'bulletSpeed': '715',
    'fireRate': '0.100s',
  },
  {
    'name': 'm762',
    'damage': '48',
    'magazine': '30',
    'range': '100-400',
    'bulletSpeed': '783',
    'fireRate': '0.080s',
  },
  {
    'name': 'groza',
    'damage': '48',
    'magazine': '30',
    'range': '100-400',
    'bulletSpeed': '785',
    'fireRate': '0.080s',
  },
  {
    'name': 'mutant',
    'damage': '49',
    'magazine': '20',
    'range': '100-600',
    'bulletSpeed': '780',
    'fireRate': '0.100s',
  },
  {
    'name': 'm416',
    'damage': '41',
    'magazine': '30',
    'range': '100-600',
    'bulletSpeed': '880',
    'fireRate': '0.086s',
  },
  {
    'name': 'aug',
    'damage': '41',
    'magazine': '30',
    'range': '100-500',
    'bulletSpeed': '940',
    'fireRate': '0.0857s',
  },
  {
    'name': 'g36c',
    'damage': '41',
    'magazine': '30',
    'range': '100-600',
    'bulletSpeed': '870',
    'fireRate': '0.0.87s',
  },
  {
    'name': 'm16',
    'damage': '43',
    'magazine': '30',
    'range': '100-500',
    'bulletSpeed': '900',
    'fireRate': '0.075s',
  },
];

var kSMG = [];
