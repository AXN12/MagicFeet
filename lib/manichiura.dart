import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Importă url_launcher pentru a deschide linkuri externe
import 'package:magic_feet/custom_app_bar.dart';
import 'footer.dart'; // Importă footer

class Manichiura extends StatefulWidget {
  const Manichiura({super.key});

  @override
  State<Manichiura> createState() => _ManichiuraState();
}

class _ManichiuraState extends State<Manichiura> {
  // Indexul curent al imaginii în galerie
  int _currentIndex = 0;

  // Lista imaginilor din galerie
  final List<String> images = [
    'lib/assets/pedi1.jpg',
    'lib/assets/pedi2.jpg',
    'lib/assets/pedi4.jpg',
    'lib/assets/pedi5.jpg',
    'lib/assets/pedi6.jpg',
    'lib/assets/mani1.jpg',
    'lib/assets/mani2.jpg',
    'lib/assets/mani3.jpg',
    'lib/assets/mani4.jpg',
    'lib/assets/mani5.jpg',
    'lib/assets/mani6.jpg',
    'lib/assets/mani7.jpg',
    'lib/assets/mani8.jpg',
    'lib/assets/mani9.jpg',
    'lib/assets/mani10.jpg',
    'lib/assets/mani11.jpg',
    'lib/assets/mani12.jpg',
    'lib/assets/mani13.jpg',
  ];

  // Funcția pentru a trece la imaginea următoare
  void _nextImage() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % images.length;
    });
  }

  // Funcția pentru a trece la imaginea anterioară
  void _previousImage() {
    setState(() {
      _currentIndex = (_currentIndex - 1 + images.length) % images.length;
    });
  }

  // Funcție pentru a lansa URL-ul Instagram
  Future<void> _launchURL() async {
    const url = 'https://www.instagram.com/anatilea.nailtech/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Manichiură', currentPage: 'Manichiură'), // Folosește CustomAppBar aici
      body: SingleChildScrollView( // Învăluim întreaga coloană în SingleChildScrollView
        child: Column(
          mainAxisSize: MainAxisSize.min, // Permitem coloană să ocupe doar spațiul necesar
          children: [
            Stack(
              children: [
                // Imaginea de fundal
                Positioned.fill(
                  child: Image.asset(
                    'lib/assets/backgroundmaini.jpg', // Imaginea de fundal
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Descrierea salonului și a serviciilor de manichiură
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.85, // Container mai mic
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.8), // Opacitate pentru text
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            'Cu o experiență de peste 4 ani în domeniul manichiurii, Magic Feet Sibiu a realizat sute de programări și a oferit servicii de cea mai înaltă calitate. '
                                'Fie că este vorba de o manichiură clasică sau de tratamente specializate, garantăm un rezultat impecabil și durabil. Îți oferim servicii adaptate nevoilor tale, '
                                'folosind cele mai noi tehnologii și produse de top pentru a-ți oferi un aspect frumos și sănătos al unghiilor.',
                            style: TextStyle(fontSize: 24),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Galeria de imagini
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          // Imaginea curentă - ajustată la dimensiuni pătrate
                          Container(
                            constraints: const BoxConstraints(
                              maxWidth: 400, // Limita de lățime pentru imagini
                              maxHeight: 400, // Limita de înălțime pentru imagini
                            ),
                            child: Image.asset(
                              images[_currentIndex],
                              width: double.infinity, // Lățimea imaginii să se potrivească cu containerul
                              height: double.infinity, // Înălțimea imaginii să se potrivească cu containerul
                              fit: BoxFit.cover,
                            ),
                          ),

                          // Săgeată stânga (Previous)
                          Positioned(
                            left: 10,
                            child: GestureDetector(
                              onTap: _previousImage,
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white.withOpacity(0.8),
                                size: 40,
                              ),
                            ),
                          ),

                          // Săgeată dreapta (Next)
                          Positioned(
                            right: 10,
                            child: GestureDetector(
                              onTap: _nextImage,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white.withOpacity(0.8),
                                size: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20), // Distanță între galerie și tabel

                      // Tabelul cu prețuri
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5), // Fundal transparent pentru tabel
                          borderRadius: BorderRadius.circular(10), // Rounding for table edges
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.85, // Tabel mai îngust
                          child: Table(
                            border: TableBorder.all(color: Colors.grey.withOpacity(0.8)), // Limite pentru tabel
                            children: const [
                              TableRow(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Serviciu', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)), // Mărime mai mare
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Preț', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)), // Mărime mai mare
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('1. Manichiură clasica/curățare', style: TextStyle(fontSize: 18)), // Mărime mai mare
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('50 RON', style: TextStyle(fontSize: 18)), // Mărime mai mare
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('2. Ojă semipermanentă apex', style: TextStyle(fontSize: 18)), // Mărime mai mare
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('90 RON', style: TextStyle(fontSize: 18)), // Mărime mai mare
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('3. Întreținere gel schimbarea arhitecturii', style: TextStyle(fontSize: 18)), // Mărime mai mare
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('135 RON', style: TextStyle(fontSize: 18)), // Mărime mai mare
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('4. Întreținere gel', style: TextStyle(fontSize: 18)), // Mărime mai mare
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('110 RON', style: TextStyle(fontSize: 18)), // Mărime mai mare
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('5. Construcție gel', style: TextStyle(fontSize: 18)), // Mărime mai mare
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('135 RON', style: TextStyle(fontSize: 18)), // Mărime mai mare
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('6. Îndepărtare material + curățare', style: TextStyle(fontSize: 18)), // Mărime mai mare
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('70 RON', style: TextStyle(fontSize: 18)), // Mărime mai mare
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20), // Distanță între tabel și buton

                      // Butonul Instagram
                      ElevatedButton(
                        onPressed: _launchURL,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70, // Fundal verde pentru buton
                          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0), // Padding pentru buton
                          textStyle: const TextStyle(fontSize: 24), // Mărime text
                        ),
                        child: const Text('Urmărește-ne pe Instagram!'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Footer(), // Aici adăugăm footer-ul
          ],
        ),
      ),
    );
  }
}
