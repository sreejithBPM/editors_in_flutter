import 'package:bolo_agency_editor/editor_for_agency_user/bolo_agency.dart';
import 'package:bolo_agency_editor/editor_for_agency_user/bolo_user.dart';
import 'package:bolo_agency_editor/editor_for_agencydivision/bolo_agency_division.dart';
import 'package:bolo_agency_editor/editor_for_user_in_division/bolo_user_in_division.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child:  Center(
            child: ElevatedButton( onPressed: () {
                  // Navigate to the new section when the button is pressed
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => UserDetailsEditor(),
                    ),
                  );
                },
            
               child: Text("BOLO USER")),
               
          ),
          
        ),
        Container(
          child: ElevatedButton( onPressed: () {
                    // Navigate to the new section when the button is pressed
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AgencyDetailsEditor(),
                      ),
                    );
                  },
              
                 child: Text("BOLO AGENCY")),
        ),
        Container(
          child: ElevatedButton( onPressed: () {
                    // Navigate to the new section when the button is pressed
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DivisionDetailsEditor(),
                      ),
                    );
                  },
              
                 child: Text("BOLO AGENCYDIVISION")),
        ),
        Container(
          child: ElevatedButton( onPressed: () {
                    // Navigate to the new section when the button is pressed
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => UserInDivisionEditor(),
                      ),
                    );
                  },
              
                 child: Text("BOLO USERINDIVISION")),
        ),
      ],
    );
  }
}


