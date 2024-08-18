import 'dart:developer';
import 'package:assignment/screen/key_url.dart';
import 'package:assignment/screen/reusable_widget.dart';
import 'package:flutter/material.dart';

class AdmitCard extends StatefulWidget {
  const AdmitCard({super.key});

  @override
  State<AdmitCard> createState() => _AdmitCardState();
}

class _AdmitCardState extends State<AdmitCard> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _admitCard = TextEditingController();
  final TextEditingController _paperShite = TextEditingController();
  String? _gender;
  final TextEditingController _category = TextEditingController();
  final TextEditingController _horizontalReservation = TextEditingController();
  final TextEditingController _state = TextEditingController();
  final TextEditingController _district = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Exam name',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * .90,
            child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  const Text(
                    'Please Upload Admit Card',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),

                  reusableTextField('Your Admit card upload', null, false, _admitCard),

                  const SizedBox(height: 16),

                  reusableTextField('Paper Shite', null, false, _paperShite),

                  const SizedBox(height: 16),

                  DropdownButtonFormField<String>(
                    value: _gender,
                    decoration: InputDecoration(
                      labelText: 'Gender',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                      ),
                    ),
                    hint: const Text('Select Gender'),
                    // Hint text displayed when no value is selected
                    items: <String>['Male', 'Female', 'Other'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _gender = newValue; // Update the selected value
                      });
                    },
                  ),
                  const SizedBox(height: 16),

                  reusableTextField('Category', Icons.ac_unit, true, _category),

                  const SizedBox(height: 16),

                  reusableTextField('Horizontal Reservation', Icons.ac_unit, false, _horizontalReservation),

                  const SizedBox(height: 16),

                  reusableTextField('State', Icons.location_on, false, _state),

                  const SizedBox(height: 16),
                  reusableTextField('District', Icons.location_on, false, _district),

                  const SizedBox(height: 16),

                  reusableButton(context, 'Next', (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const KeyUrl()));
                    log('Admit card: ${_admitCard.text.toString()}');
                    log('Paper Shite: ${_paperShite.text.toString()}');
                    log('Gender: ${_gender.toString()}');
                    log('Category: ${_category.text.toString()}');
                    log('Horizontal Reservation: ${_horizontalReservation.text.toString()}');
                    log('State: ${_state.text.toString()}');
                    log('District: ${_district.text.toString()}');
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
