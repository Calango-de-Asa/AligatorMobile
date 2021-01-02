import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            'Aligator',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      );
}
