import 'package:flutter/material.dart';
import '../../sections/skills/skillsDesktop.dart';
import '../../sections/skills/skillsMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: SkillsMobile(),
      tablet: SkillsMobile(),
      desktop: SkillsDesktop(),
    );
  }
}
