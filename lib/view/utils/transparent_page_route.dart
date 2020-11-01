import 'package:flutter/material.dart';

transparentPageRoute({nextPage}) => PageRouteBuilder(
      pageBuilder: (context, _, __) => nextPage,
      opaque: false,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          Scaffold(
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  bottom: 32,
                  left: 20,
                  right: 20,
                ),
                child: child)),
        backgroundColor: Colors.transparent,
      ),
    );
