import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  bool isChecked = false;
  bool isSwitched = false;

  String selectedGender = 'Male';

  double sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Components')),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            
            // TEXT FIELD
            Text('Text Field', style: Theme.of(context).textTheme.titleLarge),

            const SizedBox(height: 10),

            TextField(
              decoration: const InputDecoration(
                labelText: 'Enter your name',
                hintText: 'Zain',
                prefixIcon: Icon(Icons.person),
              ),
            ),

            const SizedBox(height: 30),

            // CHECKBOX
            Text('Checkbox', style: Theme.of(context).textTheme.titleLarge),

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
              style: Theme.of(context).textTheme.titleLarge,
            ),

            RadioListTile<String>(
              value: 'Male',
              groupValue: selectedGender,
              onChanged: (value) {
                setState(() {
                  selectedGender = value!;
                });
              },
              title: const Text('Male'),
            ),

            RadioListTile<String>(
              value: 'Female',
              groupValue: selectedGender,
              onChanged: (value) {
                setState(() {
                  selectedGender = value!;
                });
              },
              title: const Text('Female'),
            ),

            const SizedBox(height: 20),

            // SWITCH
            Text('Switch', style: Theme.of(context).textTheme.titleLarge),

            SwitchListTile(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
              title: const Text('Enable notifications'),
              secondary: const Icon(Icons.notifications),
            ),

            const SizedBox(height: 20),

            // SLIDER
            Text('Slider', style: Theme.of(context).textTheme.titleLarge),

            Text('Value: ${sliderValue.round()}'),

            Slider(
              value: sliderValue,
              min: 0,
              max: 100,
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
