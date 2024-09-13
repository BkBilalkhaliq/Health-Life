import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/slidemanu_model.dart';

class SlideManueData {
  final manu = <SlideManuModel>[
    SlideManuModel(icon: Icons.home, title: "Dashboard"),
    SlideManuModel(icon: Icons.person, title: "Profile"),
    SlideManuModel(icon: Icons.run_circle, title: "Exersice"),
    SlideManuModel(icon: Icons.settings, title: "Settings"),
    SlideManuModel(icon: Icons.history, title: "History"),
    SlideManuModel(icon: Icons.logout, title: "SignOut"),
  ];
}
