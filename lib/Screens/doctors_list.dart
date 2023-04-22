import 'package:flutter/material.dart';
import 'package:login_backend/Screens/doctor_schedule.dart';

class DoctorsList extends StatefulWidget {
  const DoctorsList({Key? key}) : super(key: key);

  @override
  State<DoctorsList> createState() => _DoctorsListState();
}

class _DoctorsListState extends State<DoctorsList> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                  onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorSchedule(),));},
          child: buildDocDes(size)),
              InkWell(
                  onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorSchedule(),));},
          child: buildDocDes(size)),
              InkWell(
                  onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorSchedule(),));},
          child: buildDocDes(size)),
              InkWell(
                  onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorSchedule(),));},
          child: buildDocDes(size)),
              InkWell(
                  onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorSchedule(),));},
          child: buildDocDes(size)),
              InkWell(
                  onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorSchedule(),));},
          child: buildDocDes(size)),

            ],
          ),
        ),
      ),
    );
  }

  Widget buildDocDes(Size size) {
    return Column(
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
        SizedBox(height: size.height*.015,)
      ],
    );
  }
}
