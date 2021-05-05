import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Colors
Color kPrimaryColor = Color(0xffC0392B);

// Social Media
const kSocialIcons = [
  "https://img.icons8.com/ios-filled/480/ffffff/mail.png",
  "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
  "https://img.icons8.com/android/480/ffffff/twitter.png",
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  "https://img.icons8.com/material-rounded/384/ffffff/github.png",
  "https://img.icons8.com/ios-filled/480/ffffff/code.png"
];

const kSocialLinks = [
  "mailto:goyalsatyam8@gmail.com",
  "https://www.instagram.com/s.a.t.y.u_/",
  "https://twitter.com/SatYug26",
  "https://www.linkedin.com/in/satyu26/",
  "https://github.com/SatYu26",
  "https://leetcode.com/satyu/",
];

// URL Launcher
void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

// Community
final kCommunityLogo = [
  'assets/srm.png',
  'assets/mlsa.png',
  'assets/dsc.png'
];

final kCommunityLinks = [
  "https://www.srmist.edu.in/",
  "https://studentambassadors.microsoft.com/",
  "https://dscsrm.com/"
];

// Tools & Tech
final kTools = ["Flutter", "Dart", "Python", "JavaScript", "C++"];

final kTools1 = ["React.js", "HTML", "CSS",  "Node.js", "ML"];

// services
final kSkillsIcons = [
  "assets/services/app.png",
  "assets/services/ui.png",
  "assets/services/rapid.png",
  "assets/services/ml.jpg",
  "assets/services/open.png",
];

final kSkillsTitles = [
  "Flutter App Development",
  "React Web Development",
  "Rapid Prototyping",
  "Machine Learning",
  "Open Source - GitHub",
];

final kSkillsDescriptions = [
  "I am experienced and skilled in app development using Flutter, also i am specially good at UI/UX designing part, and i am trying to improve my skills more and design Complete apps.",
  "Although it has not been too long since i started working on React.js, but still i have gained genuine skills and experience in web development through various projects.",
  "Having a startup idea? Or maybe just want a prototype for your clients? With Flutter I can get you basic version of your app in no time and you are good to go for your project in future.",
  "I love doing Deep Learning and Machine Learning, i am not too much skilled in this but i can definitely create some great work with the experience and knowledge i have gathered through numerous projects.",
  "I love working for the community and give my contribution towards greater good, therefore i have been quite active in community and have made numerous contributions to many communities",
];

final kSkillsLinks = [
  "https://drive.google.com/file/d/19PZLP-2fCmwDy2Zi9Ieuh5RyykNhbAM5/view?usp=sharing",
  "https://drive.google.com/file/d/1Bt2ZN18kwU9CKAOGXmrKruNSOhz-robB/view?usp=sharing",
  "https://www.fiverr.com/share/qjERXd",
  "https://drive.google.com/file/d/1rCEBf7TI34DotIIy5VLXMmRZRpdctW5e/view?usp=sharing",
  "https://github.com/SatYu26"
];

// projects
final kProjectsBanner = [
  "assets/projects/flashB.png",
  "assets/projects/wearB.png",
  "assets/projects/maskB.png",
  "assets/projects/catchMeB.png",
];

final kProjectsIcons = [
  "assets/projects/flash.png",
  "assets/projects/wearos.png",
  "assets/projects/mask.png",
  "assets/projects/portfolio.png",
];

final kProjectsTitles = [
  "Flash Type",
  "Wear OS",
  "Mask Detection App",
  "Catch Me Portfolio",
];

final kProjectsDescriptions = [
  "It is a Web App created using React.js to check the typing speed and accuracy of the person.",
  "Our application is the world’s first deployment of an idea based on network radio where we provide independent radio stations for a smartwatch running Wear OS.",
  "Here I’ve developed an application to detect face masks in the smartphone. This application works in real time.",
  "It is Portfolio website created using simple HTML, CSS and JavaScript but wait! There some twist in it. Visit it and have a look.",
];

final kProjectsLinks = [
  "https://github.com/SatYu26/Flash-Type",
  "https://github.com/SatYu26/Wear-OS-Radio-Flutter",
  "https://github.com/SatYu26/2021-Solution-Challenge-Submission",
  "https://github.com/SatYu26/Catch-Me-Portfolio",
];

// Contact
final kContactIcons = [
  Icons.home,
  Icons.phone,
  Icons.mail,
];

final kContactTitles = [
  "Location",
  "Phone",
  "Email",
];

final kContactDetails = [
  "Bhuj, India",
  "(+91) 7550264699",
  "Goyalsatyam8@gmail.com"
];

final kContactLinks = [
  "https://goo.gl/maps/BDgab7yZwauzKihu5",
  "tel:+917550264699",
  "mailto:goyalsatyam8@gmail.com",
];
