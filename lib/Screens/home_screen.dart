import 'package:flutter/material.dart';
import 'package:login_backend/widget/departmet_list_tab.dart';
import 'package:login_backend/widget/recources_list_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this, initialIndex: 0)
      ..addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/hospital.png'),
            SizedBox(height: size.height*.015,),
            Text(
                'Timings:- From 9:00A.M -5:00 P.M\nEmergency Timings- Open 24 Hours\nContact:- 88888xxx88\nDirections ',
              style: TextStyle(
                fontSize: 22
              ),
            ),
            TabBar(
              isScrollable: true,
              indicatorPadding: EdgeInsets.all(10),
              labelColor: Color(0xff00B48B),
              unselectedLabelColor: Colors.black,
              labelStyle: TextStyle(fontSize: 30),
              labelPadding:
                  EdgeInsets.only(left: 35, right: 35, top: 15, bottom: 15),
              controller: _tabController,
              indicatorColor: Color(0xff00B48B),
              tabs: [
                Text('Department'),
                Text('Resources'),
              ],
            ),
            Container(
              //color: Colors.amber,
              width: size.width,
              height: size.height,
              child: TabBarView(controller: _tabController,
                  children: [
                    DepartmentListTab(),
                    ResourceListTab()
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
