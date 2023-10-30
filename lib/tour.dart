// ignore_for_file: camel_case_types

class tourPlace {
  String name;
  String location;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;
  String imageAsset;
  List<String> imageUrls;

  tourPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageUrls,
  });
}

// ignore: non_constant_identifier_names
var TourDicodingAtHome = [
  tourPlace(
    name: 'Pantai Watu kodok',
    location: 'Gunung Kidul',
    description:
        'Berada di kabupaten Gunung Kidul, yang berlokasi di daerah pantai watu kodok.',
    openDays: 'Open Everyday',
    openTime: '00.00 - 24.00',
    ticketPrice: 'Rp 50.000',
    imageAsset: 'lib/images/images1.jpg',
    imageUrls: [
      'https://asset.kompas.com/crops/A5cXbkevWJPpmXQ_198MFFsOE4k=/0x0:1000x667/750x500/data/photo/2020/06/27/5ef7129a3f9e6.jpg',
      'https://cdn.antaranews.com/cache/1200x800/2020/06/24/IMG-20200624-WA0001_5.jpg'
    ],
  ),
  tourPlace(
    name: 'Bromo Tengger Semeru Nation Park',
    location: 'Taman Nasional Bromo',
    description:
        'Memiliki Pegunungan dan padang pasir serta camp untuk cmaping.',
    openDays: 'sunday',
    openTime: '00.00 - 24.00',
    ticketPrice: 'Rp 100.000',
    imageAsset: 'lib/images/Bromo.jpg',
    imageUrls: [
      'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Bromo-Semeru-Batok-Widodaren.jpg/800px-Bromo-Semeru-Batok-Widodaren.jpg',
      'https://www.indonesia.travel/content/dam/indtravelrevamp/id-id/ide-liburan/6-aktivitas-seru-yang-wajib-dicoba-saat-ke-taman-nasional-bromo-tengger-semeru/jip-bromo.jpg',
      'https://cdn.antaranews.com/cache/1200x800/2020/12/28/Bromo-Tengger-Semeru-8.jpg',
    ],
  ),
  tourPlace(
    name: 'Jalan Asia Afrika',
    location: 'Kota Bandung',
    description:
        'Jalan Asia Afrika di Bandung memiliki kaitan yang sangat erat dengan pendirian kota Kembang ini. Karena pada saat itu, Gubernur Jenderal Herman Willem Deaendels dari Belanda menancapkan tongkatnya saat memerintahkan pendirian kota ini, yang kemudian diabadikan menjadi tugu Bandung Nol Kilometer.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: 'Free',
    imageAsset: 'lib/images/asia_afrika.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/0d/c2/e7/e6/quotes-kota-bandung.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/17/f4/44/01/jalan-asia-afrika.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-s/0a/ef/36/e2/jalan-asia-afrika.jpg',
    ],
  ),
  tourPlace(
    name: 'Musiom Angkut',
    location: 'Malang',
    description:
        'Musium yang berada di malang ini, mempunyai berpuluh-puluh mobil yang sangat antik, dan terawat',
    openDays: 'Open Everyday',
    openTime: '06:00 - 24:00',
    ticketPrice: 'Rp 30.000',
    imageAsset: 'lib/images/museum.jpg',
    imageUrls: [
      'https://nahwatravel.co.id/wp-content/uploads/2022/05/Museum-Angkut-Malang.jpg',
      'https://asset.kompas.com/crops/wojNHrzpxHdm9bRHpcTs5GpS2dI=/0x0:0x0/780x390/data/photo/2015/04/09/124859920150408RAM-MUSEUM-191780x390.JPG',
      'https://katalogwisata.com/wp-content/uploads/2016/01/Museum-Angkut-4.jpg',
    ],
  ),
];
