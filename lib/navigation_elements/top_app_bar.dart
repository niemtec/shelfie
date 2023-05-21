import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

PreferredSize topAppBar() {
  return PreferredSize(
    preferredSize: const Size.fromHeight(0),
    child: AppBar(
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
  );
}
