import 'package:flutter/material.dart';

class UserInDivisionEditor extends StatefulWidget {
  @override
  _UserInDivisionEditorState createState() => _UserInDivisionEditorState();
}

class _UserInDivisionEditorState extends State<UserInDivisionEditor> {
  // Create TextEditingController for UserInDivision ID
  TextEditingController userInDivisionIdController = TextEditingController();

  // Create GlobalKey for the form
  final _formKey = GlobalKey<FormState>();

  // Create dropdown values and initial values
  String? selectedAgencyId; // Initialize as null
  String? selectedDivisionId; // Initialize as null
  String? selectedBoloUserId; // Initialize as null

  List<String> agencyIds = ["Agency1", "Agency2", "Agency3"];
  List<String> divisionIds = ["Division1", "Division2", "Division3"];
  List<String> boloUserIds = ["User1", "User2", "User3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User In Division Editor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              _buildTextFieldWithCurvedBorder(
                controller: userInDivisionIdController,
                labelText: 'UserInDivision ID',
              ),
              SizedBox(height: 10.0),
              DropdownButtonFormField<String>(
                value: selectedAgencyId,
                items: agencyIds.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedAgencyId = newValue;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Agency ID',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                validator: (value) {
                  if (value == null) {
                    return 'Agency ID is required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0),
              DropdownButtonFormField<String>(
                value: selectedDivisionId,
                items: divisionIds.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedDivisionId = newValue;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Division ID',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                validator: (value) {
                  if (value == null) {
                    return 'Division ID is required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0),
              DropdownButtonFormField<String>(
                value: selectedBoloUserId,
                items: boloUserIds.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedBoloUserId = newValue;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'BoloUser ID',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                validator: (value) {
                  if (value == null) {
                    return 'BoloUser ID is required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Save the data to your backend or perform other actions
                    // You can access the selected values using the variables:
                    // selectedAgencyId, selectedDivisionId, selectedBoloUserId
                    // and the UserInDivision ID using userInDivisionIdController.text

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('User In Division details saved successfully'),
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
    TextEditingController? controller,
    String? labelText,
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
          if (value == null || value.isEmpty) {
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
    // Dispose of the controller to free up resources when the widget is disposed
    userInDivisionIdController.dispose();
    super.dispose();
  }
}