import 'package:flutter/material.dart';
import '../../animations/bottomAnimation.dart';
import '../../widget/skillsCard.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';

class SkillsDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          Text(
            "\nWhat I Do",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            "I may not be perfect, but I'm surely of some help :)\n\n",
            style: GoogleFonts.montserrat(fontWeight: FontWeight.w200),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: width < 1200
                    ? MainAxisAlignment.spaceEvenly
                    : MainAxisAlignment.center,
                children: [
                  WidgetAnimator(
                    child: SkillsCard(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      skillsIcon: kSkillsIcons[0],
                      skillsTitle: kSkillsTitles[0],
                      skillsDescription: kSkillsDescriptions[0],
                      skillsLink: kSkillsLinks[0],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  WidgetAnimator(
                    child: SkillsCard(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      skillsIcon: kSkillsIcons[1],
                      skillsTitle: kSkillsTitles[1],
                      skillsDescription: kSkillsDescriptions[1],
                      skillsLink: kSkillsLinks[1],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  WidgetAnimator(
                    child: SkillsCard(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      skillsIcon: kSkillsIcons[2],
                      skillsTitle: kSkillsTitles[2],
                      skillsDescription: kSkillsDescriptions[2],
                      skillsLink: kSkillsLinks[2],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  WidgetAnimator(
                    child: SkillsCard(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      skillsIcon: kSkillsIcons[3],
                      skillsTitle: kSkillsTitles[3],
                      skillsDescription: kSkillsDescriptions[3],
                      skillsLink: kSkillsLinks[3],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  WidgetAnimator(
                    child: SkillsCard(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      skillsIcon: kSkillsIcons[4],
                      skillsTitle: kSkillsTitles[4],
                      skillsDescription: kSkillsDescriptions[4],
                      skillsLink: kSkillsLinks[4],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
