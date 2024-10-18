import 'package:ecommerce_app_ui/components/bottom_nav_bar.dart';
import 'package:ecommerce_app_ui/pages/cart_page.dart';
import 'package:ecommerce_app_ui/pages/shopping_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  // Navigationable pages
  final List<Widget> _pages = [const ShoppingPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    // Home page
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedPage],
      
      // App bar
      drawer: Drawer(
        elevation: 0.0,
        backgroundColor: Colors.grey[800],
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.transparent, // Set this if you want no background
                    border: Border(
                      bottom: BorderSide.none, // Remove the bottom border/line
                    ),
                  ),
                  child: Image.asset(
                    "assets/images/nike_logo.png",
                    color: Colors.white,
                  ),
                ),
                const Padding(
                  padding:  EdgeInsets.symmetric(
                    horizontal: 35.0, vertical: 12.0),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading:  Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 25.0,
                    ),
                    title:  Text(
                      "Home",
                      style: TextStyle(fontSize: 18.0),
                    ),
                    textColor: Colors.white,
                  ),
                ),
                const Padding(
                  padding:  EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                      size: 25.0,
                    ),
                    title: Text(
                      "About",
                      style: TextStyle(fontSize: 18.0),
                    ),
                    textColor: Colors.white,
                  ),
                ),
              ],
            ),
            
            const Spacer(), // Add a Spacer to push the logout option down
            
            const Padding(
              padding: EdgeInsets.only(left: 25.0, bottom: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                  size: 25.0,
                ),
                title: Text(
                  "Log Out",
                  style: TextStyle(fontSize: 18.0),
                ),
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
      
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu),
            );
          },
        ),
      ),
    );
  }
}
