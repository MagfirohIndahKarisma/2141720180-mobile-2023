import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Wisata Gunung di Batu',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Batu, Malang, Indonesia',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        Icon(Icons.star, color: Colors.red,),
        const Text('41'),
      ],
    ),
  );
  
  Widget buttonSection = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
       _buildButtonColumn(color, Icons.call, 'CALL'),
       _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
       _buildButtonColumn(color, Icons.share, 'SHARE'),
    ],
  );

  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: const Text(
      'Dahulu, Coban Talun merupakan tempat pembuangan jenazah pemberontak yang terlibat dalam peristiwa G30S/PKI di Malang. Kini, Coban Talun telah bersih dan menjadi destinasi wisata yang tidak pernah sepi dari pengunjung.'
      '\n'
      '\n'
      'Nama: Magfiroh Indah Karisma'
      '\n'
      'NIM: 2141720180',
      softWrap: true,
    ),
  );

  return MaterialApp(
  title: 'Flutter layout: Magfiroh Indah Karisma (2141720180)',
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Flutter layout demo'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/Talun.jpg',
            fit: BoxFit.cover,
            width: 600,
            height: 240,
          ),
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    ),
  );
}

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}