// ignore: avoid_web_libraries_in_flutter
import 'package:universal_html/html.dart' as html;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../animations/entranceFader.dart';
import '../constants.dart';
import '../sections/about/about.dart';
import '../sections/contact/contact.dart';
import '../sections/home/home.dart';
import '../sections/navBar/navBarLogo.dart';
import '../sections/portfolio/portfolio.dart';
import '../sections/services/services.dart';
import '../widget/arrowOnTop.dart';
import '../widget/footer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ScrollController _scrollController =
      ScrollController(initialScrollOffset: 25.0);
  ItemScrollController _itemScrollController = ItemScrollController();
  ItemPositionsListener _itemPositionListener = ItemPositionsListener.create();

  final List<String> _sectionsName = [
    "Home",
    "About",
    "Services",
    "Projects",
    "Contact"
  ];

  final List<IconData> _sectionsIcons = [
    Icons.home,
    Icons.person,
    Icons.settings,
    Icons.build,
    Icons.phone,
  ];

  void _scroll(int i) {
    _itemScrollController.scrollTo(index: i, duration: Duration(seconds: 1));
  }

  Widget sectionWidget(int i) {
    if (i == 0) {
      return HomePage();
    } else if (i == 1) {
      return About();
    } else if (i == 2) {
      return Services();
    } else if (i == 3) {
      return Portfolio();
    } else if (i == 4) {
      return Contact();
    } else if (i == 5) {
      return SizedBox(
        height: 40.0,
      );
    } else if (i == 6) {
      return ArrowOnTop(
        onPressed: () => _scroll(0),
      );
    } else if (i == 7) {
      return Footer();
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: MediaQuery.of(context).size.width > 760
          ? _appBarTabDesktop()
          : AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
      drawer: MediaQuery.of(context).size.width < 760 ? _appBarMobile() : null,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: RawScrollbar(
          controller: _scrollController,
          thumbColor: kPrimaryColor,
          thickness: 5.0,
          child: ScrollablePositionedList.builder(
            itemScrollController: _itemScrollController,
            itemPositionsListener: _itemPositionListener,
            itemCount: 8,
            itemBuilder: (context, index) {
              return sectionWidget(index);
            },
          ),
        ),
      ),
    );
  }

  Widget _appBarActions(String childText, int index, IconData icon) {
    return MediaQuery.of(context).size.width > 760
        ? EntranceFader(
            offset: Offset(0, -20),
            delay: Duration(seconds: 3),
            duration: Duration(seconds: 1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                hoverColor: kPrimaryColor,
                onPressed: () {
                  _scroll(index);
                  Navigator.of(context).pop();
                },
                child: Text(
                  childText,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
                hoverColor: kPrimaryColor,
                onPressed: () {
                  _scroll(index);
                  Navigator.of(context).pop();
                },
                child: ListTile(
                  leading: Icon(
                    icon,
                    color: kPrimaryColor,
                  ),
                  title: Text(
                    childText,
                    style: TextStyle(fontSize: 20),
                  ),
                )),
          );
  }

  Widget _appBarTabDesktop() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      title: MediaQuery.of(context).size.width < 740
          ? EntranceFader(
              duration: Duration(seconds: 1),
              offset: Offset(0, -20),
              delay: Duration(seconds: 3),
              child: NavBarLogo())
          : EntranceFader(
              offset: Offset(0, -20),
              duration: Duration(seconds: 1),
              delay: Duration(seconds: 3),
              child: NavBarLogo(
                height: MediaQuery.of(context).size.height * 0.035,
              ),
            ),
      actions: [
        for (int i = 0; i < _sectionsName.length; i++)
          _appBarActions(_sectionsName[i], i, _sectionsIcons[i]),
        EntranceFader(
          offset: Offset(0, -20),
          delay: Duration(seconds: 3),
          duration: Duration(seconds: 1),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
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
          ),
        ),
      ],
    );
  }

  Widget _appBarMobile() {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: NavBarLogo(
                height: 28,
              ),
            ),
            for (int i = 0; i < _sectionsName.length; i++)
              _appBarActions(_sectionsName[i], i, _sectionsIcons[i]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                hoverColor: kPrimaryColor.withAlpha(150),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: kPrimaryColor)),
                onPressed: () {
                  launchURL(
                      "https://drive.google.com/uc?export=view&id=1pvTu12I9fJDJ_KerU2q17FqmfHmjTKeK");
                },
                child: ListTile(
                  leading: Icon(
                    Icons.book,
                    color: Colors.red,
                  ),
                  title: Text(
                    "Resume",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
