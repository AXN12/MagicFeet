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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                // Imaginea de fundal
                Positioned.fill(
                  child: Image.asset(
                    'lib/assets/backgroundmaini.jpg', // Imaginea de fundal
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height * 0.4, // Ajustăm înălțimea imaginii de fundal
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 150), // Distanță pentru text față de partea superioară

                      // Descrierea salonului și a serviciilor de manichiură
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.85, // Container mai mic și responsive
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9), // Opacitate mai ridicată
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 8,
                              ),
                            ],
                          ),
                          child: const Text(
                            'Cu 3 ani de experiență și numeroase cursuri de perfecționare, '
                                'te invit să descoperi servicii profesionale de manichiură, '
                                'pentru unghii sănătoase și un stil rafinat care te vor face să te simți cu adevărat răsfățată.',
                            style: TextStyle(fontSize: 20, height: 1.5), // Font mai mic și linie mai spațiată
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30), // Mai mult spațiu între secțiuni

                      // Galeria de imagini
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.85, // Galeria responsive
                            height: MediaQuery.of(context).size.width * 0.85, // Păstrăm proporțiile pătrate
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 8,
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                images[_currentIndex],
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          // Săgeți pentru navigare
                          Positioned(
                            left: 15,
                            child: GestureDetector(
                              onTap: _previousImage,
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white.withOpacity(0.8),
                                size: 40,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 15,
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
                      const SizedBox(height: 30), // Mai mult spațiu între galerie și tabel

                      // Tabelul cu prețuri
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        margin: const EdgeInsets.symmetric(horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8), // Fundal transparent pentru tabel
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        child: Table(
                          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                          border: TableBorder.all(color: Colors.grey.withOpacity(0.8)),
                          children: const [
                            TableRow(
                              decoration: BoxDecoration(
                                color: Colors.lightGreenAccent, // Fundal pentru header
                              ),
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Text('Serviciu', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18), textAlign: TextAlign.center),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Text('Preț', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18), textAlign: TextAlign.center),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Manichiură clasică', style: TextStyle(fontSize: 16)),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('50 RON', style: TextStyle(fontSize: 16)),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Ojă semipermanentă apex', style: TextStyle(fontSize: 16)),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('90 RON', style: TextStyle(fontSize: 16)),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Întreținere gel', style: TextStyle(fontSize: 16)),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('110 RON', style: TextStyle(fontSize: 16)),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Construcție gel', style: TextStyle(fontSize: 16)),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('135 RON', style: TextStyle(fontSize: 16)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30), // Mai mult spațiu între tabel și buton

                      // Butonul Instagram
                      ElevatedButton(
                        onPressed: _launchURL,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pinkAccent, // Fundal roz pentru buton
                          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0), // Padding pentru buton
                          textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // Stil text
                        ),
                        child: const Text('Urmărește-ne pe Instagram!'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Footer(), // Footer-ul
          ],
        ),
      ),
    );
  }
}
