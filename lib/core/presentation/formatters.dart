import 'package:intl/intl.dart';

String formatDateTime(DateTime datetime) =>
    DateFormat('MMMEd').format(datetime);
