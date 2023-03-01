import 'package:flutter/material.dart';

import 'BookingForm.dart';
import 'Profile.dart';
import 'Setting.dart';

class FutsalBookingDashboard extends StatelessWidget {
  final List<Futsal> futsals = [    Futsal(      name: 'Prime Futsal', location: 'Kathmandu', image:  "assets/images/court1.webp",    ),
    Futsal(      name: 'Bhrikutimandap Futsal',      location: 'Bhrikutimandap Funpark',      image: "assets/images/court2.jpg",    ),    Futsal(      name: 'Futsal Arena',      location: 'Bhaktapur',      image: "assets/images/court3.webp",    ),    Futsal(      name: 'Lakeside Futsal',      location: 'Pokhara',      image: "assets/images/court4.jpg",    ),    Futsal(      name: 'Bhudda Futsal',      location: 'Chitwan',      image: "assets/images/court5.jpg",    ),Futsal(      name: 'Bimali Futsal',      location: 'Jhapa',      image:  "assets/images/court6.jpg",    ),  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Futsal Booking System'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Available Futsals',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 50,
                  childAspectRatio: 0.8, // changed to 0.8 for wider image
                ),
                itemCount: futsals.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 400.0, // increased image height to 200.0
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: NetworkImage(futsals[index].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0), // decreased vertical gap to 8.0
                      Text(
                        futsals[index].name,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0), // decreased vertical gap to 8.0
                      Text(
                        futsals[index].location,
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 16.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FutsalBookingForm(),
                            ),
                          );
                        },
                        child: Text('Book Now'),
                      ),
                    ],
                  );
                },
              ),

            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        elevation: 8.0, // Add elevation to give it a shadow effect
        selectedItemColor: Colors.blue, // Change the selected item color
        unselectedItemColor: Colors.grey, // Change the unselected item color
        onTap: (int index) { // Add onTap event to navigate to respective pages
          switch(index) {
            case 0:
            // Do nothing as we are already on the home page
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
              break;
          }
        },
      ),
      );
  }
}



class Futsal {
  final String name;
  final String location;
  final String image;

  Futsal({
    required this.name,
    required this.location,
    required this.image,
  });

}
