import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

Widget svgRender(String fileName) {
  return SvgPicture.asset(fileName);
}
