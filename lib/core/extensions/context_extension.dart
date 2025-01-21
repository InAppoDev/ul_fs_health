import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  void showSnackBarMessage(String message) {
    // close previous snackbar before showing the new one
    ScaffoldMessenger.of(this).removeCurrentSnackBar();
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(content: Text(message)));
  }

  void showSideBar() {
      Scaffold.of(this).openDrawer();
  }

  void hideSideBar() {
    Scaffold.of(this).closeDrawer();
  }
}
