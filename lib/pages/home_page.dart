import 'dart:async';
//import 'package:eyephoria_pranika_fyp/controller/authentication_controller.dart';
//import 'package:eyephoria_pranika_fyp/pages/loader.dart';
import 'package:eyephoria_pranika_fyp/pages/tabs/buy_tab1.dart';
import 'package:eyephoria_pranika_fyp/pages/tabs/first_tab.dart';
import 'package:eyephoria_pranika_fyp/pages/tabs/profile_tab.dart';
import 'package:eyephoria_pranika_fyp/pages/tabs/book_tab1.dart';
import 'package:eyephoria_pranika_fyp/utils/shared_preds.dart';
import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:tabnavigator/tabnavigator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _tabController = StreamController<AppTab>.broadcast();
  final _initTab = AppTab.home;
  final AuthService authService = AuthService();

  Stream<AppTab> get tabStream => _tabController.stream;

  final _map = <AppTab, TabBuilder>{
    AppTab.home: () {
      return FirstTab();
    },
    AppTab.opticals: () {
      return BuyTab1(
        children: const[],
      );
    },
    AppTab.appointment: () {
      return const BookTab1();
    },
    AppTab.cart: () {
      return Column(
        children: const [],
      );
    },
    AppTab.profile: () {
      return ProfileTab(children: [],);
    //logout button 
    }
  };

  Widget _buildBody() {
    return TabNavigator(
      initialTab: _initTab,
      selectedTabStream: tabStream,
      mappedTabs: _map,
    );
  }

  logout() async {}

  Widget _buildbottomNavigationBar() {
    return StreamBuilder<AppTab>(
      stream: tabStream,
      initialData: _initTab,
      builder: (context, snapshot) {
        return BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color.fromARGB(255, 3, 51, 90),
              ),
              label: 'Home',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.remove_red_eye_sharp, color:  Color.fromARGB(255, 3, 51, 90)),
              label: 'Opticals',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today, color:  Color.fromARGB(255, 3, 51, 90)),
              label: 'Appointments',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, color: Color.fromARGB(255, 3, 51, 90)),
              label: 'Cart',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.face, color:  Color.fromARGB(255, 3, 51, 90)),
              label: 'Profile',
            ),
            
          ],
          currentIndex: snapshot.hasData ? snapshot.data!.value : 0,
          onTap: (value) => _tabController.sink.add(AppTab.byValue(value)),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildbottomNavigationBar(),
    );
  }

  @override
  void dispose() {
    _tabController.close();
    super.dispose();
  }
}

class AppTab extends TabType {
  const AppTab._(int value) : super(value);

  static const home = AppTab._(0);
  static const opticals = AppTab._(1);
  static const appointment = AppTab._(2);
  static const cart = AppTab._(3);
  static const profile = AppTab._(4);

  static AppTab byValue(int value) {
    switch (value) {
      case 0:
        return home;
      case 1:
        return opticals;
      case 2:
        return appointment;
      case 3:
        return cart;
      case 4:
        return profile;
      default:
        throw Exception('no tab for such value');
    }
  }
}
