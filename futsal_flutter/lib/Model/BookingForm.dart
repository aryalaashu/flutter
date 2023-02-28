import 'package:flutter/material.dart';
import 'package:futsal_flutter/Model/Dashboard.dart';

class FutsalBookingForm extends StatefulWidget {
  @override
  _FutsalBookingFormState createState() => _FutsalBookingFormState();
}

class _FutsalBookingFormState extends State<FutsalBookingForm> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _dateController = TextEditingController();
  final _timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Futsal Booking Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name'),
            SizedBox(height: 8.0),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Enter your name',
                contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text('Email'),
            SizedBox(height: 8.0),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Enter your email',
                contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text('Phone'),
            SizedBox(height: 8.0),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                hintText: 'Enter your phone number',
                contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text('Date'),
            SizedBox(height: 8.0),
            TextField(
              controller: _dateController,
              decoration: InputDecoration(
                hintText: 'Enter the date of booking',
                contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text('Time'),
            SizedBox(height: 8.0),
            TextField(
              controller: _timeController,
              decoration: InputDecoration(
                hintText: 'Enter the time of booking',
                contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 32.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FutsalBookingDashboard(),
                    ),
                  );
                },
                child: Text('Book Now'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
