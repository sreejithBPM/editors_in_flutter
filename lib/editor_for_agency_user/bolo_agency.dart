import 'package:flutter/material.dart';



class AgencyDetailsEditor extends StatefulWidget {
  @override
  _AgencyDetailsEditorState createState() => _AgencyDetailsEditorState();
}

class _AgencyDetailsEditorState extends State<AgencyDetailsEditor> {
  // Create TextEditingController for each input field
  TextEditingController boloAgencyIdController = TextEditingController();
  TextEditingController agencyIdController = TextEditingController();
  TextEditingController agencyPublicNameController = TextEditingController();
  TextEditingController agencyProfilePicLinkController = TextEditingController();
  TextEditingController agencyBioController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController emailController = TextEditingController();
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
        title: Text('Agency Details Editor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              _buildTextFieldWithCurvedBorder(
                controller: boloAgencyIdController,
                labelText: 'BoloAgency ID',
              ),
              _buildTextFieldWithCurvedBorder(
                controller: agencyIdController,
                labelText: 'Agency ID',
              ),
              _buildTextFieldWithCurvedBorder(
                controller: agencyPublicNameController,
                labelText: 'Agency Public Name',
              ),
              _buildTextFieldWithCurvedBorder(
                controller: agencyProfilePicLinkController,
                labelText: 'Agency Profile Pic Link',
              ),
              _buildTextFieldWithCurvedBorder(
                controller: agencyBioController,
                labelText: 'Agency Bio',
                maxLines: 5, // Allowing multiple lines for agency bio
              ),
              _buildTextFieldWithCurvedBorder(
                controller: locationController,
                labelText: 'Location',
              ),
              _buildTextFieldWithCurvedBorder(
                controller: phoneController,
                labelText: 'Phone',
              ),
              _buildTextFieldWithCurvedBorder(
                controller: websiteController,
                labelText: 'Website',
              ),
              _buildTextFieldWithCurvedBorder(
                controller: emailController,
                labelText: 'Email',
              ),
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
                    final boloAgencyId = boloAgencyIdController.text;
                    final agencyId = agencyIdController.text;
                    final agencyPublicName = agencyPublicNameController.text;
                    final agencyProfilePicLink = agencyProfilePicLinkController.text;
                    final agencyBio = agencyBioController.text;
                    final location = locationController.text;
                    final phone = phoneController.text;
                    final website = websiteController.text;
                    final email = emailController.text;
                    // final createdBy = createdByController.text;
                    // final createdOn = createdOnController.text;
                    // final createdIP = createdIPController.text;
                    // final modifiedBy = modifiedByController.text;
                    // final modifiedOn = modifiedOnController.text;
                    // final modifiedIP = modifiedIPController.text;

                    // Perform data saving or other actions here

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Agency details saved successfully'),
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
    boloAgencyIdController.dispose();
    agencyIdController.dispose();
    agencyPublicNameController.dispose();
    agencyProfilePicLinkController.dispose();
    agencyBioController.dispose();
    locationController.dispose();
    phoneController.dispose();
    websiteController.dispose();
    emailController.dispose();
    // createdByController.dispose();
    // createdOnController.dispose();
    // createdIPController.dispose();
    // modifiedByController.dispose();
    // modifiedOnController.dispose();
    // modifiedIPController.dispose();
    super.dispose();
  }
}