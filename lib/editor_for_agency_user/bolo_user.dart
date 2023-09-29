import 'package:flutter/material.dart';

class UserDetailsEditor extends StatefulWidget {
  @override
  _UserDetailsEditorState createState() => _UserDetailsEditorState();
}

class _UserDetailsEditorState extends State<UserDetailsEditor> {
  // Create TextEditingController for each input field
  TextEditingController agencyIdController = TextEditingController();
  TextEditingController boloAgencyIdController = TextEditingController();
  TextEditingController userIdController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController officialEmailController = TextEditingController();
  TextEditingController personalEmailController = TextEditingController();
  TextEditingController officialPhoneController = TextEditingController();
  TextEditingController personalPhoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController personalWebsiteController = TextEditingController();
  TextEditingController facebookLinkController = TextEditingController();
  TextEditingController instagramLinkController = TextEditingController();

  // Create GlobalKey for the form
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details Editor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              _buildTextFieldWithCurvedBorder(
                controller: agencyIdController,
                labelText: 'Agency ID',
              ),
              _buildTextFieldWithCurvedBorder(
                controller: boloAgencyIdController,
                labelText: 'Bolo Agency ID',
              ),
              _buildTextFieldWithCurvedBorder(
                controller: userIdController,
                labelText: 'User ID',
              ),
              _buildTextFieldWithCurvedBorder(
                controller: userNameController,
                labelText: 'User Name',
              ),
              _buildTextFieldWithCurvedBorder(
                controller: officialEmailController,
                labelText: 'Official Email',
              ),
              _buildTextFieldWithCurvedBorder(
                controller: personalEmailController,
                labelText: 'Personal Email',
              ),
              _buildTextFieldWithCurvedBorder(
                controller: officialPhoneController,
                labelText: 'Official Phone',
              ),
              _buildTextFieldWithCurvedBorder(
                controller: personalPhoneController,
                labelText: 'Personal Phone',
              ),
              _buildTextFieldWithCurvedBorder(
                controller: addressController,
                labelText: 'Address',
              ),
              _buildTextFieldWithCurvedBorder(
                controller: personalWebsiteController,
                labelText: 'Personal Website',
              ),
              _buildTextFieldWithCurvedBorder(
                controller: facebookLinkController,
                labelText: 'Facebook Link',
              ),
              _buildTextFieldWithCurvedBorder(
                controller: instagramLinkController,
                labelText: 'Instagram Link',
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Save the data to your backend or perform other actions
                    // You can access the entered data using the controllers
                    final agencyId = agencyIdController.text;
                    final boloAgencyId = boloAgencyIdController.text;
                    final userId = userIdController.text;
                    final userName = userNameController.text;
                    final officialEmail = officialEmailController.text;
                    final personalEmail = personalEmailController.text;
                    final officialPhone = officialPhoneController.text;
                    final personalPhone = personalPhoneController.text;
                    final address = addressController.text;
                    final personalWebsite = personalWebsiteController.text;
                    final facebookLink = facebookLinkController.text;
                    final instagramLink = instagramLinkController.text;

                    // Perform data saving or other actions here

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('User details saved successfully'),
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
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of the controllers to free up resources when the widget is disposed
    agencyIdController.dispose();
    boloAgencyIdController.dispose();
    userIdController.dispose();
    userNameController.dispose();
    officialEmailController.dispose();
    personalEmailController.dispose();
    officialPhoneController.dispose();
    personalPhoneController.dispose();
    addressController.dispose();
    personalWebsiteController.dispose();
    facebookLinkController.dispose();
    instagramLinkController.dispose();
    super.dispose();
  }
}