import 'package:flutter/material.dart';

class RankScreen extends StatefulWidget {
  RankScreen({super.key});
  @override
  State<RankScreen> createState() {
    return _RankScreenState();
  }
}

class _RankScreenState extends State<RankScreen> {
  List<String> courses = [
    'Computer Science',
    'Electronics Engineering',
    'Electrical Engineering',
    'Civil Engineering',
    'Biomedical Engineering',
    'Mechanical Engineering',
  ];

  String selectedCourse = 'Computer Science';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rank"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:
                Theme.of(context).colorScheme.primaryContainer.withOpacity(0.4),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(
                    label: Text(
                  "Rank",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                )),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 30,
              ),
              DropdownButton(
                  value: selectedCourse,
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  iconEnabledColor: Theme.of(context).colorScheme.primary,
                  elevation: 16,
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                  items: courses.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      selectedCourse = newValue!;
                    });
                  }),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
