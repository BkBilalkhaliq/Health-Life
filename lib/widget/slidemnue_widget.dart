import 'package:flutter/material.dart';
import 'package:responsive_dashboard/const/const.dart';
import 'package:responsive_dashboard/data/slidemanu_data.dart';

class SlideMenuWidget extends StatefulWidget {
  const SlideMenuWidget({super.key});

  @override
  State<SlideMenuWidget> createState() => _SlideMenuWidgetState();
}

class _SlideMenuWidgetState extends State<SlideMenuWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = SlideManueData();

    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: ListView.builder(
          itemCount: data.manu.length,
          itemBuilder: (context, index) => BulidManuEntry(data, index),
        ));
  }

  Widget BulidManuEntry(SlideManueData data, int index) {
    final isseleted = selectedIndex == index;

    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(6.0)),
          color: isseleted ? SelectionColor : Colors.transparent),
      child: InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
              child: Icon(
                data.manu[index].icon,
                color: isseleted ? Colors.black : Colors.grey,
              ),
            ),
            Text(
              data.manu[index].title,
              style: TextStyle(
                  fontSize: 16,
                  color: isseleted ? Colors.black : Colors.grey,
                  fontWeight: isseleted ? FontWeight.w600 : FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
