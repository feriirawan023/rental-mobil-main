import 'package:flutter/material.dart';
import 'package:rent_car/data/rental.dart';

class DetailScreen extends StatelessWidget {
  final rental rentals;

  const DetailScreen({Key? key, required this.rentals}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(30, 107, 135, 100),
        title: Text(rentals.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipRRect(
              child: Image.asset(
                rentals.image,
                width: 150,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            rentals.name,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Color.fromRGBO(30, 107, 135, 100)),
          ),
          Text('Biaya Sewa : ${rentals.sewa}'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Spesifikasi : ${rentals.spesifikasi}',
              maxLines: 15,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
