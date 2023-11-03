import 'package:flutter/material.dart';
import 'detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gunung Bromo'),
      ),
      body: ListView.builder(
        itemCount: sportPlaces.length,
        itemBuilder: (context, index) {
          final tempat = sportPlaces[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(tempat: tempat),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.all(12),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(tempat.imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            tempat.name,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            tempat.brand,
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            tempat.description,
                            style: TextStyle(fontSize: 14.0),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Price: ${tempat.price}',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class SportPlace {
  final String name;
  final String brand;
  final String imagePath;
  final String description;
  final String price;

  SportPlace({
    required this.name,
    required this.brand,
    required this.imagePath,
    required this.description,
    required this.price,
  });
}

final List<SportPlace> sportPlaces = [
  SportPlace(
    name: 'Taman nasional tengger Bromo',
    brand: 'Bromo',
    imagePath: 'lib/images/Bromo.jpg',
    description:
        'Salah satu tempat wisata yang sangat populer, bertempatan di Indonesia',
    price: '20.00 USD',
  ),
  SportPlace(
    name: 'Mobil yang dibuat di Indonesia',
    brand: 'Mobilio',
    imagePath: 'lib/images/car.jpg',
    description: 'Salah satu mobil terbaik di Indonesia',
    price: '1,000,000 USD',
  ),
  SportPlace(
    name: 'Taman nasional tengger Bromo',
    brand: 'Bromo',
    imagePath: 'lib/images/Bromo.jpg',
    description:
        'Salah satu tempat wisata yang sangat populer, bertempatan di Indonesia',
    price: '20.00 USD',
  ),
  SportPlace(
    name: 'Mobil yang dibuat di Indonesia',
    brand: 'Mobilio',
    imagePath: 'lib/images/car.jpg',
    description: 'Salah satu mobil terbaik di Indonesia',
    price: '1,000,000 USD',
  ),
  SportPlace(
    name: 'Taman nasional tengger Bromo',
    brand: 'Bromo',
    imagePath: 'lib/images/Bromo.jpg',
    description:
        'Salah satu tempat wisata yang sangat populer, bertempatan di Indonesia',
    price: '20.00 USD',
  ),
  SportPlace(
    name: 'Mobil yang dibuat di Indonesia',
    brand: 'Mobilio',
    imagePath: 'lib/images/car.jpg',
    description: 'Salah satu mobil terbaik di Indonesia',
    price: '1,000,000 USD',
  ),
  SportPlace(
    name: 'Taman nasional tengger Bromo',
    brand: 'Bromo',
    imagePath: 'lib/images/Bromo.jpg',
    description:
        'Salah satu tempat wisata yang sangat populer, bertempatan di Indonesia',
    price: '20.00 USD',
  ),
  SportPlace(
    name: 'Mobil yang dibuat di Indonesia',
    brand: 'Mobilio',
    imagePath: 'lib/images/car.jpg',
    description: 'Salah satu mobil terbaik di Indonesia',
    price: '1,000,000 USD',
  ),
  // Tambahkan item lain di sini...
];
