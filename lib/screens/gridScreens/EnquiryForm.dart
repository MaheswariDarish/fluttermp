import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/colors.dart';

class EnquiryForm extends StatefulWidget {
  @override
  _EnquiryFormState createState() => _EnquiryFormState();
}

class _EnquiryFormState extends State<EnquiryForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController grievanceController = TextEditingController();

  void _request() async {
    String url =
        'https://docs.google.com/forms/d/e/1FAIpQLScnQX7JH1NiUsHHT16Xti6Zk2YESEtbtff122JYAWa3tBya5Q/formResponse';

    Map<String, String> headers = {
      "Content-Type": "application/x-www-form-urlencoded",
    };
    // String body = json.encode(...)      //------------> Before
    Map<String, String> requestBody = <String, String>{
      // After
      'entry.236803634': nameController.text,
      'entry.613569396': emailController.text,
      'entry.618993358': grievanceController.text,
    };

    http.Response resp =
        await http.post(Uri.parse(url), headers: headers, body: requestBody);
    print(resp);
    if (resp.statusCode != 200) {
      print('Failed to post ${resp.statusCode}');
    } else {
      print(resp.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enquiry Form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            color: Color.fromARGB(255, 255, 255, 255),
            elevation: 2,
            shadowColor: secondaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 25),
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Color.fromARGB(
                                255, 200, 200, 200), // Light grey color
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 150, 150,
                                150), // Slightly darker grey color
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Color.fromARGB(
                                255, 200, 200, 200), // Light grey color
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 150, 150,
                                150), // Slightly darker grey color
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: grievanceController,
                      decoration: InputDecoration(
                        labelText: 'Grievance',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Color.fromARGB(
                                255, 200, 200, 200), // Light grey color
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 150, 150,
                                150), // Slightly darker grey color
                          ),
                        ),
                      ),
                      minLines: 5,
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your grievance';
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Submitting data')),
                            );
                            _request();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Submitted successfully!'),
                                backgroundColor: Colors.green,
                              ),
                            );
                            nameController.clear();
                            emailController.clear();
                            grievanceController.clear();
                          }
                        },
                        child: Text('Submit'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
