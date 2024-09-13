import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Util/responsive.dart';
import 'package:responsive_dashboard/const/const.dart';
import 'package:responsive_dashboard/widget/dashboard_widget.dart';
import 'package:responsive_dashboard/widget/slidemnue_widget.dart';
import 'package:responsive_dashboard/widget/summary_wight.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(
      drawer: !isDesktop
          ? Container(
              color: BackgroundColor,
              width: 250,
              child: SlideMenuWidget(),
            )
          : null,
      endDrawer: Responsive.isMobile(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const SummaryWidget(),
            )
          : null,
      body: SafeArea(
          child: Row(
        children: [
          if (isDesktop)
            const Expanded(
              flex: 2,
              child: SizedBox(
                child: SlideMenuWidget(),
              ),
            ),
          const Expanded(flex: 7, child: DashboardWidget()),
          if (isDesktop)
            const Expanded(
              flex: 3,
              child: SummaryWidget(),
            )
        ],
      )),
    );
  }
}
