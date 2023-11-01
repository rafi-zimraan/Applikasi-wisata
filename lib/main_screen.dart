import 'package:flutter/material.dart';
import 'detail_screen.dart'; // Import file detail_screen.dart

class MainScreen extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MainScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gunung Bromo'),
      ),
      body: ListView.builder(
        itemCount: sportCars.length,
        itemBuilder: (context, index) {
          final tempat = sportCars[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(tempat: tempat),
                ),
              );
            },
            child: Card(
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage(tempat.imagePath),
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            tempat.name,
                            style: const TextStyle(fontSize: 16.0),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(tempat.brand),
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

// ignore: camel_case_types
class sportPlace {
  final String name;
  final String brand;
  final String imagePath;
  final String description;
  final String price; // Tambahkan atribut harga

  sportPlace({
    required this.name,
    required this.brand,
    required this.imagePath,
    required this.description,
    required this.price,
  });
}

final List<sportPlace> sportCars = [
  sportPlace(
    name: 'Taman nasional tengger Bromo',
    brand: 'Bromo',
    imagePath: 'lib/images/Bromo.jpg',
    description:
        'Salah satu tempat wisata yang sangat populer, bertempatan di Indonesia ',
    price: '20.00 USD',
  ),
  sportPlace(
    name: 'Mobil yang di buat di indonesia ',
    brand: 'Mobilio',
    imagePath: 'lib/images/car.jpg',
    description:
        'Salah satu Mobile terbaik di indonesia, bertempatan di Indonesia ',
    price: '1,000,000 USD',
  ),
  sportPlace(
    name: 'Restauran prancisco',
    brand: 'Restauran',
    imagePath: 'lib/images/restauran.jpg',
    description:
        'Salah satu restauran yang menenya ala eropa, bertempatan di Indonesia ',
    price: '13,,000 USD',
  ),
  sportPlace(
    name: 'Taman nasional tengger Bromo',
    brand: 'Bromo',
    imagePath: 'lib/images/Bromo.jpg',
    description:
        'Salah satu tempat wisata yang sangat populer, bertempatan di Indonesia ',
    price: '1,000,000 USD',
  ),
  sportPlace(
    name: 'Taman nasional tengger Bromo',
    brand: 'Bromo',
    imagePath: 'lib/images/car.jpg',
    description:
        'Salah satu tempat wisata yang sangat populer, bertempatan di Indonesia ',
    price: '1,000,000 USD',
  ),
  sportPlace(
    name: 'Restauran prancisco',
    brand: 'Restauran',
    imagePath: 'lib/images/restauran.jpg',
    description:
        'Salah satu restauran yang menenya ala eropa, bertempatan di Indonesia ',
    price: '13,,000 USD',
  ),
  sportPlace(
    name: 'Taman nasional tengger Bromo',
    brand: 'Bromo',
    imagePath: 'lib/images/Bromo.jpg',
    description:
        'Salah satu tempat wisata yang sangat populer, bertempatan di Indonesia ',
    price: '1,000,000 USD',
  ),
  sportPlace(
    name: 'Taman nasional tengger Bromo',
    brand: 'Bromo',
    imagePath: 'lib/images/car.jpg',
    description:
        'Salah satu tempat wisata yang sangat populer, bertempatan di Indonesia ',
    price: '1,000,000 USD',
  ),
];
