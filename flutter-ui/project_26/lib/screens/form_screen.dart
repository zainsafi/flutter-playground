import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  bool isChecked = false;
  String gender = 'Male';
  bool isSwitched = false;
  double sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Components')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // TEXT FIELD
            Text(
              'Text Field',
              style: Theme.of(context).textTheme.displayMedium,
            ),

            const SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'Enter you name',
                hintText: 'Zain Ul Islam',
              ),
            ),
            const SizedBox(height: 12),

            Text('Check Box', style: Theme.of(context).textTheme.displayMedium),
            const SizedBox(height: 12),
            CheckboxListTile(
              value: isChecked,

              onChanged: (value) {
                setState(() {
                  isChecked = value ?? false;
                });
              },
              title: const Text('I agree with the terms'),
              secondary: const Icon(Icons.check_circle),
            ),

            const SizedBox(height: 20),

            // RADIO
            Text(
              'Radio Buttons',
              style: Theme.of(context).textTheme.displayMedium,
            ),

            RadioGroup<String>(
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value!;
                });
              },
              child: Column(
                children: [
                  RadioListTile<String>(
                    visualDensity: VisualDensity(vertical: -4),
                    title: Text('Male'),
                    value: 'Male',
                  ),
                  RadioListTile<String>(
                    visualDensity: VisualDensity(vertical: -4),
                    title: Text('Female'),
                    value: 'Female',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // SWITCH
            Text('Switch', style: Theme.of(context).textTheme.displayMedium),

            SwitchListTile(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = !isSwitched;
                });
              },
              title: const Text('Enable notifications'),
              secondary: const Icon(Icons.notifications),
            ),

            const SizedBox(height: 20),

            // SLIDER
            Text('Slider', style: Theme.of(context).textTheme.displayMedium),

            Padding(
              padding: const EdgeInsets.only(left: 2),
              child: Text('value: ${sliderValue.round()}'),
            ),

            Slider(
              min: 0,
              max: 100,
              value: sliderValue,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),

            const SizedBox(height: 30),

            // BUTTONS
            ElevatedButton(onPressed: () {}, child: const Text('Submit')),

            const SizedBox(height: 10),

            OutlinedButton(onPressed: () {}, child: const Text('Cancel')),

            const SizedBox(height: 10),

            TextButton(onPressed: () {}, child: const Text('Forgot Password?')),
          ],
        ),
      ),
    );
  }
}
