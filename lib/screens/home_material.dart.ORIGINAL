import 'package:flutter/material.dart';
import '../components/default_app_bar.dart';
import '../models/user.dart';

// Original file
class HomeMaterial extends StatefulWidget {
  @override
  _HomeMaterialState createState() => _HomeMaterialState();
}

class _HomeMaterialState extends State<HomeMaterial> {
  final _formKey = GlobalKey<FormState>();
  final _user = User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Profile')),
      appBar: DefaultAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Builder(
          builder: (context) => Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Full Name
                TextFormField(
                  decoration: InputDecoration(labelText: 'First name'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your first name';
                    }
                  },
                  onSaved: (val) => setState(() => _user.firstName = val!),
                ),
                TextFormField(
                    decoration: InputDecoration(labelText: 'Last name'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your last name.';
                      }
                    },
                    onSaved: (val) => setState(() => _user.lastName = val!)),
                // Subscribe Toggle
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                  child: Text('Subscribe'),
                ),
                SwitchListTile(
                    title: const Text('Monthly Newsletter'),
                    value: _user.newsletter,
                    onChanged: (bool val) =>
                        setState(() => _user.newsletter = val)),
                // Interest Checkbox
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                  child: Text('Interests'),
                ),
                CheckboxListTile(
                    title: const Text('Golang'),
                    value: _user.passions[User.PassionCooking],
                    onChanged: (val) {
                      setState(
                          () => _user.passions[User.PassionCooking] = val!);
                    }),
                CheckboxListTile(
                    title: const Text('Dart'),
                    value: _user.passions[User.PassionTraveling],
                    onChanged: (val) {
                      setState(
                          () => _user.passions[User.PassionTraveling] = val!);
                    }),
                CheckboxListTile(
                    title: const Text('Java'),
                    value: _user.passions[User.PassionHiking],
                    onChanged: (val) {
                      setState(() => _user.passions[User.PassionHiking] = val!);
                    }),
                // Save Button
                Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 16.0),
                    child: ElevatedButton(
                        onPressed: () {
                          final form = _formKey.currentState;
                          if (form!.validate()) {
                            form.save();
                            _user.save();
                            _showDialog(context);
                          }
                        },
                        child: Text('Save'))),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _showDialog(BuildContext context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Submitting form')));
  }
}
