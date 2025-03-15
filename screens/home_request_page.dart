import 'package:flutter/material.dart';

class HomeRequestPage extends StatelessWidget {
  const HomeRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Request")),
      body: SingleChildScrollView(
        // Wraps the Column to prevent overflow
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text("Enter Details",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  _buildTextField("Name"),
                  _buildTextField("Roll No"),
                  _buildTextField("Branch"),
                  _buildTextField("Year"),
                  _buildTextField("Date of Leaving"),
                  _buildTextField("Time of Leaving"),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Submit logic
                    },
                    child: const Text("Submit"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
