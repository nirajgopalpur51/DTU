import 'package:flutter/material.dart';
import 'package:login_backend/Screens/doctors_list.dart';

class DepartmentListTab extends StatefulWidget {
  const DepartmentListTab({Key? key}) : super(key: key);

  @override
  State<DepartmentListTab> createState() => _DepartmentListTabState();
}

class _DepartmentListTabState extends State<DepartmentListTab> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: size.width * .15,
      runSpacing: size.height * .03,
      children: [
        buildDpartment(size, context),
        buildDpartment(size, context),
        buildDpartment(size, context),
        buildDpartment(size, context),
        buildDpartment(size, context),
        buildDpartment(size, context),
      ],
    );
  }

  Container buildDpartment(Size size, BuildContext context) {
    return Container(
      height: size.height * .2,
      width: size.width * .35,
      color: Color(0xff00B48B),
      child: Column(
        children: [
          Image.asset('assets/depa.png'),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DoctorsList(),
                  ));
            },
            child: Text(
              'Proceed',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
