import 'package:examp/pages/home_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _indexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: IndexedStack(
            index: _indexPage,
            children: const [
              MyHomePage(title: " Home page"),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _indexPage,
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: "Search"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_repair_service),
                  label: "manager"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  label: "Profile"
              ),
            ],
            onTap: (index){
              setState(() {
                _indexPage = index;
              });
            },
          ),
        ),

      ),
    );
  }
}
