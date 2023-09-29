import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DivisionDetailsEditor(),
    );
  }
}

class DivisionDetailsEditor extends StatefulWidget {
  @override
  _DivisionDetailsEditorState createState() => _DivisionDetailsEditorState();
}

class _DivisionDetailsEditorState extends State<DivisionDetailsEditor> {
  // Create TextEditingController for each input field
  TextEditingController divisionIdController = TextEditingController();
  TextEditingController agencyIdController = TextEditingController();
  TextEditingController boloAgencyIdController = TextEditingController();
  TextEditingController divisionNameController = TextEditingController();
  TextEditingController divisionDescController = TextEditingController();
  // TextEditingController isActiveController = TextEditingController();
  // TextEditingController createdByController = TextEditingController();
  // TextEditingController createdOnController = TextEditingController();
  // TextEditingController createdIPController = TextEditingController();
  // TextEditingController modifiedByController = TextEditingController();
  // TextEditingController modifiedOnController = TextEditingController();
  // TextEditingController modifiedIPController = TextEditingController();

  // Create GlobalKey for the form
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Division Details Editor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              _buildTextFieldWithCurvedBorder(
                controller: divisionIdController,
                labelText: 'Division ID',
              ),
              _buildTextFieldWithCurvedBorder(
                controller: agencyIdController,
                labelText: 'Agency ID',
              ),
              _buildTextFieldWithCurvedBorder(
                controller: boloAgencyIdController,
                labelText: 'BoloAgency ID',
              ),
              _buildTextFieldWithCurvedBorder(
                controller: divisionNameController,
                labelText: 'Division Name',
              ),
              _buildTextFieldWithCurvedBorder(
                controller: divisionDescController,
                labelText: 'Division Description',
                maxLines: 3, // Allowing multiple lines for description
              ),
              // _buildTextFieldWithCurvedBorder(
              //   controller: isActiveController,
              //   labelText: 'Is Active',
              // ),
              // _buildTextFieldWithCurvedBorder(
              //   controller: createdByController,
              //   labelText: 'Created By',
              // ),
              // _buildTextFieldWithCurvedBorder(
              //   controller: createdOnController,
              //   labelText: 'Created On',
              // ),
              // _buildTextFieldWithCurvedBorder(
              //   controller: createdIPController,
              //   labelText: 'Created IP',
              // ),
              // _buildTextFieldWithCurvedBorder(
              //   controller: modifiedByController,
              //   labelText: 'Modified By',
              // ),
              // _buildTextFieldWithCurvedBorder(
              //   controller: modifiedOnController,
              //   labelText: 'Modified On',
              // ),
              // _buildTextFieldWithCurvedBorder(
              //   controller: modifiedIPController,
              //   labelText: 'Modified IP',
              // ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Save the data to your backend or perform other actions
                    // You can access the entered data using the controllers
                    final divisionId = divisionIdController.text;
                    final agencyId = agencyIdController.text;
                    final boloAgencyId = boloAgencyIdController.text;
                    final divisionName = divisionNameController.text;
                    final divisionDesc = divisionDescController.text;
                    // final isActive = isActiveController.text;
                    // final createdBy = createdByController.text;
                    // final createdOn = createdOnController.text;
                    // final createdIP = createdIPController.text;
                    // final modifiedBy = modifiedByController.text;
                    // final modifiedOn = modifiedOnController.text;
                    // final modifiedIP = modifiedIPController.text;

                    // Perform data saving or other actions here

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Division details saved successfully'),
                      ),
                    );
                  }
                },
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFieldWithCurvedBorder({
    required TextEditingController controller,
    required String labelText,
    int maxLines = 1,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          border: InputBorder.none,
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return '$labelText is required';
          }
          return null;
        },
        maxLines: maxLines,
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of the controllers to free up resources when the widget is disposed
    divisionIdController.dispose();
    agencyIdController.dispose();
    boloAgencyIdController.dispose();
    divisionNameController.dispose();
    divisionDescController.dispose();
    // isActiveController.dispose();
    // createdByController.dispose();
    // createdOnController.dispose();
    // createdIPController.dispose();
    // modifiedByController.dispose();
    // modifiedOnController.dispose();
    // modifiedIPController.dispose();
    super.dispose();
  }
}