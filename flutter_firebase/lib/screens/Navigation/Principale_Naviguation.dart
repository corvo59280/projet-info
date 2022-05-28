import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/Home/Page_home_screen.dart';
import 'package:flutter_firebase/screens/Publication/Page_Publication_VACANCE.dart';
import 'package:flutter_firebase/screens/Publication/Page_Publication2.dart';
import 'package:flutter_firebase/screens/Search/page_recherche_ECAM.dart';
import 'package:flutter_firebase/screens/Search/page_recherche_Vacance.dart';

class Principale extends StatefulWidget {
  const Principale({Key? key}) : super(key: key);

  @override
  State<Principale> createState() => _PrincipaleState();
}

class _PrincipaleState extends State<Principale> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        controller: _pageController,
        children: [
          Pagehomescreen(),
          PageRechercheEcam(),
          Publication2(),
        ],
      ),
      //TAP-BAR
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 57, 148, 117),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });

          _pageController.jumpToPage(_currentIndex);
        },
        showSelectedLabels: true,
        selectedItemColor: Color.fromARGB(
            255, 255, 255, 255), //Couleur de l'item selectionné dans la tapbar
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle,
            ),
            label: 'Add',
          ),
        ],
      ),
    );
  }
}
