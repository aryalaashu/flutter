import 'package:flutter/material.dart';

import 'BookingForm.dart';

class FutsalBookingDashboard extends StatelessWidget {
  final List<Futsal> futsals = [    Futsal(      name: 'Prime Futsal', location: 'Kathmandu', image:  "assets/images/court1.webp",    ),
    Futsal(      name: 'Bhrikutimandap Futsal',      location: 'Bhrikutimandap Funpark',      image: "assets/images/court2.jpg",    ),    Futsal(      name: 'Futsal Arena',      location: 'Bhaktapur',      image: "assets/images/court3.webp",    ),    Futsal(      name: 'Lakeside FUtsal',      location: 'Pokhara',      image: "assets/images/court4.jpg",    ),    Futsal(      name: 'Bhudda Futsal',      location: 'Chitwan',      image: "assets/images/court5.jpg",    ),Futsal(      name: 'Bimali Futsal',      location: 'Jhapa',      image:  "assets/images/court6.jpg",    ),  ];

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
        currentIndex: 0,
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
      ),
    );
  }
}



class Futsal {
  final String name;
  final String location;
  final String image; // new field to store image asset path or URL

  Futsal({
    required this.name,
    required this.location,
    required this.image,
  });

}
