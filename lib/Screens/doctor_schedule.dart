import 'package:flutter/material.dart';
import 'package:login_backend/widget/hospital_visit.dart';
import 'package:login_backend/widget/popup.dart';
import 'package:login_backend/widget/video_consult.dart';

class DoctorSchedule extends StatefulWidget {
  const DoctorSchedule({Key? key}) : super(key: key);

  @override
  State<DoctorSchedule> createState() => _DoctorScheduleState();
}

class _DoctorScheduleState extends State<DoctorSchedule>
    with TickerProviderStateMixin {
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 24),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/doctor_image.png'),
                  SizedBox(
                    width: size.width * .1,
                  ),
                  Text(
                    'Dr. John\nCardiologist\n10 years\nExperience',
                    style: TextStyle(fontSize: 22),
                  ),
                ],
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
                  Text('Hospital\n   Visit'),
                  Text('  Video\nConsult'),
                ],
              ),
              Container(
                height: size.height * .52,
                //color: Colors.amber,
                child: TabBarView(
                    controller: _tabController,
                    children: [HospitalVisitTab(), VideoConsultTab()]),
              ),
              SizedBox(
                width: size.width,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(context: context,
                        builder: (BuildContext context)=>Popup());
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xffFCA136))),
                  child: Text(
                    'Proceed',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
