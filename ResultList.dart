import 'package:flutter/material.dart';
class ResultList extends StatelessWidget {
  final List<String> formResults;

  ResultList(this.formResults);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Results'),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView( 
        padding: EdgeInsets.all(16.0),
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: formResults.asMap().entries.map((entry) {
            int index = entry.key;
            String result = entry.value;

            return Card(
              elevation: 3,
              margin: EdgeInsets.only(bottom: 16.0),
              child: ListTile(
                title: Text('Result ${index + 1}'),
                subtitle: Text(result),
              ),
            );
          }).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
