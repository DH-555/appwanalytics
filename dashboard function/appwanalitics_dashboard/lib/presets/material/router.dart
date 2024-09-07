import 'package:flutter/material.dart';

dRouter({required route, required context}) {
  return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => route,
      ));
}

dRouterReplace({required route, required context}) {
  return Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => route,
      ));
}

dRouterBack({required context}) {
  return Navigator.pop(context);
}
