import 'package:AligatorMobile/core/presentation/formatters.dart';
import 'package:AligatorMobile/features/domain/entities/alert.dart';
import 'package:flutter/material.dart';

class AlertDisplay extends StatelessWidget {
  final Alert _alert;
  AlertDisplay(this._alert);

  @override
  Widget build(BuildContext context) => Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _firstLine(),
              _secondLine(),
            ],
          ),
        ),
      );

  _firstLine() => RichText(
        text: TextSpan(
          text: _alert.postedBy.name,
          children: [
            TextSpan(
              text: ': ${_alert.message}',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
          style: TextStyle(
            color: Colors.black,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  _secondLine() => Row(
        children: [
          Icon(Icons.access_time),
          Text(' ${formatDateTime(_alert.created)}'),
        ],
      );
}
