import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../sections/navBar/navBarLogo.dart';
import '../../widget/aboutMeText.dart';
import '../../widget/communityIconBtn.dart';
import '../../widget/toolsTech.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:universal_html/html.dart' as html;

class AboutDesktop extends StatelessWidget {
  final _communityLogoHeight = [50.0, 70.0, 30.0];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      height: height,
      color: Colors.grey[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "\nAbout Me",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.075,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: AboutMeText(
                  fontSize: width <= 1100 ? 14 : 16,
                ),
              ),
              (width <= 950 && width >= 1185)
                  ? Container()
                  : Expanded(child: Container()),
              width >= 1185 ? Expanded(child: ToolsTech()) : ToolsTech()
            ],
          ),
          SizedBox(
            height: height * 0.055,
          ),
          Row(
            children: [
              MaterialButton(
                height: 50,
                hoverColor: kPrimaryColor.withAlpha(150),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: kPrimaryColor)),
                onPressed: () {
                  html.window.open(
                      'https://drive.google.com/uc?export=view&id=1pvTu12I9fJDJ_KerU2q17FqmfHmjTKeK',
                      // "https://drive.google.com/file/d/1pvTu12I9fJDJ_KerU2q17FqmfHmjTKeK/view?usp=sharing"
                      "pdf");
                },
                child: Text(
                  "Resume",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.055,
              ),
              for (int i = 0; i < kCommunityLogo.length; i++)
                CommunityIconBtn(
                  icon: kCommunityLogo[i],
                  link: kCommunityLinks[i],
                  height: _communityLogoHeight[i],
                ),
              Expanded(
                child: Container(),
              ),
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
