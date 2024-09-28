import 'dart:io';

import 'package:intl/intl.dart';

String getNaira() {
  var format =
      NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'NGN');
  return format.currencySymbol;
}

String getDollars() {
  var format =
      NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'USD');
  return format.currencySymbol;
}

String getPounds() {
  var format =
      NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'GBP');
  return format.currencySymbol;
}