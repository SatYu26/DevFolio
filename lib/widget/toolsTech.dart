import 'package:flutter/material.dart';
import '../widget/toolsTechWidget.dart';
import '../constants.dart';

class ToolsTech extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Technologies I have worked with:\n"),
        Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (int i = 0; i < kTools.length; i++)
                    ToolTechWidget(
                      techName: kTools[i],
                    ),
                  for (int i = 0; i < kTools1.length; i++)
                    (width >= 600 && width <= 950)
                        ? ToolTechWidget(
                            techName: kTools1[i],
                          )
                        : Container(),
                ],
              ),
              (width <= 600 || width >= 950)
                  ? SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    )
                  : SizedBox(),
              (width <= 600 || width >= 950)
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (int i = 0; i < kTools1.length; i++)
                          ToolTechWidget(
                            techName: kTools1[i],
                          ),
                      ],
                    )
                  : Container(),
            ])
      ],
    );
  }
}
