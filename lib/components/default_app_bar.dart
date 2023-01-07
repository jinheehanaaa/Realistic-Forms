import 'package:flutter/material.dart';
import '../../styles.dart';

class DefaultAppBar extends AppBar {
  @override
  final Widget title =
      Text("User Profile".toUpperCase(), style: Styles.navBarTitle);

  @override
  final IconThemeData iconTheme = IconThemeData(color: Colors.black);

  @override
  final Color backgroundColor = Colors.orange;

  @override
  final bool centerTitle = true;

  @override
  final double elevation = 0.5;
}
