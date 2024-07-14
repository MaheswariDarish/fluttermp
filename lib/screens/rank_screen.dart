import 'package:flutter/material.dart';
import 'package:flutter_application_1/api/api_service.dart';

class RankScreen extends StatefulWidget {
  RankScreen({Key? key}) : super(key: key);

  @override
  _RankScreenState createState() => _RankScreenState();
}

class _RankScreenState extends State<RankScreen> {
  Map<String, String> courses = {
    'Computer Science': 'cse',
    'Electronics Engineering': 'electronics and communication',
    'Electrical Engineering': 'electrical end electronic',
    'Civil Engineering': 'civil engineering',
    'Biomedical Engineering': 'electronics and biomed',
    'Mechanical Engineering': 'mech',
  };

  String selectedCourse = 'Computer Science';
  TextEditingController rankController = TextEditingController();

  List<String> colleges = []; // Store fetched colleges here

  void submitRank() async {
    try {
      // Call ApiService to fetch colleges
      var apiResult = await ApiService.getColleges(
        'SM_2024', // Example rank category, adjust as per your API
        courses[selectedCourse]!, // Course key from map
        int.tryParse(rankController.text) ?? 0, // Entered rank
      );

      // Check the type of apiResult
      if (apiResult is List<String>) {
        setState(() {
          colleges = apiResult; // Update state with fetched colleges
        });
      } else {
        print('ApiService.getColleges returned unexpected data type: ${apiResult.runtimeType}');
        // Handle this case according to your application's logic
      }
    } catch (e) {
      print('Error fetching colleges: $e');
      // Handle error as per your app's requirements
    }
  }

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
            color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.4),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: rankController,
                decoration: InputDecoration(
                  labelText: "Rank",
                  labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
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
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
                items: courses.keys.map((String key) {
                  return DropdownMenuItem<String>(
                    value: key,
                    child: Text(key),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedCourse = newValue!;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: submitRank,
                child: const Text("Submit"),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: colleges.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(colleges[index]),
                      // Adjust as per your API response structure
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/api/api_service.dart';

// class RankScreen extends StatefulWidget {
//   RankScreen({Key? key}) : super(key: key);

//   @override
//   _RankScreenState createState() => _RankScreenState();
// }

// class _RankScreenState extends State<RankScreen> {
//   Map<String, String> courses = {
//     'Computer Science': 'cse',
//     'Electronics Engineering': 'electronics and communication',
//     'Electrical Engineering': 'electrical end electronic',
//     'Civil Engineering': 'civil engineering',
//     'Biomedical Engineering': 'electronics and biomed',
//     'Mechanical Engineering': 'mech',
//   };

//   String selectedCourse = 'Computer Science';
//   TextEditingController rankController = TextEditingController();

//   List<String> colleges = []; // Store fetched colleges here

//   void submitRank() async {
//     try {
//       // Call ApiService to fetch colleges
//       var apiResult = await ApiService.getColleges(
//         'SM_2024', // Example rank category, adjust as per your API
//         courses[selectedCourse]!, // Course key from map
//         int.tryParse(rankController.text) ?? 0, // Entered rank
//       );

//       // Check the type of apiResult
//       if (apiResult is List<String>) {
//         setState(() {
//           colleges = apiResult; // Update state with fetched colleges
//         });
//       } else {
//         print('ApiService.getColleges returned unexpected data type: ${apiResult.runtimeType}');
//         // Handle this case according to your application's logic
//       }
//     } catch (e) {
//       print('Error fetching colleges: $e');
//       // Handle error as per your app's requirements
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Rank"),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(40.0),
//           child: Container(
//             padding: const EdgeInsets.all(20),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.4),
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 TextField(
//                   controller: rankController,
//                   decoration: InputDecoration(
//                     labelText: "Rank",
//                     labelStyle: TextStyle(
//                       color: Theme.of(context).colorScheme.primary,
//                     ),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 DropdownButton(
//                   value: selectedCourse,
//                   icon: const Icon(Icons.arrow_downward),
//                   iconSize: 24,
//                   iconEnabledColor: Theme.of(context).colorScheme.primary,
//                   elevation: 16,
//                   style: TextStyle(
//                     color: Theme.of(context).colorScheme.primary,
//                   ),
//                   items: courses.keys.map((String key) {
//                     return DropdownMenuItem<String>(
//                       value: key,
//                       child: Text(key),
//                     );
//                   }).toList(),
//                   onChanged: (newValue) {
//                     setState(() {
//                       selectedCourse = newValue!;
//                     });
//                   },
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 ElevatedButton(
//                   onPressed: submitRank,
//                   child: const Text("Submit"),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Expanded(
//                   child: ListView.builder(
//                     shrinkWrap: true,
//                     itemCount: colleges.length,
//                     itemBuilder: (context, index) {
//                       return ListTile(
//                         title: Text(colleges[index]),
//                         // Adjust as per your API response structure
//                         subtitle: Text('College Type'), // Example text, replace with actual type
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
