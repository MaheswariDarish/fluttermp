import 'package:flutter/material.dart';

class OptionsPage extends StatelessWidget {
  OptionsPage({super.key});
  List institutions=["ENGINEERING COLLEGES","MODEL POLYTECHNICS COLLEGES","COLLEGES OF APPLIED SCIENCES","TECHNICAL HIGHER SECONDARY","MODEL FINISHING SCHOOLS","REGIONAL CENTERS"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       leading: BackButton(color: Theme.of(context).colorScheme.background,),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text("INSTITUTIONS"),
        centerTitle: true,
      ),
      body:ListView.builder(
    padding: const EdgeInsets.all(8),
    itemCount: institutions.length,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        height: 50,
        child: Row(
              children: [
                Expanded(
                  child: Center(child: Text('${institutions[index]}')),
                ),
                Icon(Icons.arrow_forward),
              ],
          ),
        //color: Colors.amber[colorCodes[index]],
        //child: Center(child: Text('${institutions[index]}')),
      );
    }
  ),
    );
  }
}