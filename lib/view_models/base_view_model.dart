import 'package:flutter/widgets.dart';

class BaseViewModel extends ChangeNotifier {
  void setState() {
    notifyListeners();
  }
}
