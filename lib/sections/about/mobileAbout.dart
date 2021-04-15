import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../sections/navBar/navBarLogo.dart';
import '../../widget/aboutMeText.dart';
import '../../widget/communityIconBtn.dart';
import '../../widget/toolsTech.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:universal_html/html.dart' as html;

class AboutMobile extends StatelessWidget {
  final _communityLogoHeight = [50.0, 60.0, 30.0];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      color: Colors.grey[900],
      child: Column(
        children: [
          Text(
            "About Me",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          AboutMeText(
            textAlign: TextAlign.center,
            fontSize: 13,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          MaterialButton(
            height: 50,
            hoverColor: kPrimaryColor.withAlpha(150),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(color: kPrimaryColor)),
            onPressed: () {
              launchURL(
                  "https://drive.google.com/uc?export=view&id=1pvTu12I9fJDJ_KerU2q17FqmfHmjTKeK");
            },
            child: Text(
              "Resume",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < kCommunityLogo.length; i++)
                CommunityIconBtn(
                  icon: kCommunityLogo[i],
                  link: kCommunityLinks[i],
                  height: _communityLogoHeight[i],
                ),
            ],
          ),
          SizedBox(
            height: height * 0.025,
          ),
          ToolsTech(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              NavBarLogo(
                height: height * 0.04,
              )
            ],
          )
        ],
      ),
    );
  }
}
