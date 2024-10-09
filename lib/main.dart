import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'footer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic Feet Sibiu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme(
          primary: Colors.green.shade800,
          primaryContainer: Colors.green.shade700,
          secondary: Colors.grey,
          secondaryContainer: Colors.grey.shade300,
          surface: Colors.white,
          onPrimary: Colors.white,
          onSecondary: Colors.black,
          onSurface: Colors.black,
          error: Colors.red,
          onError: Colors.white,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Magic Feet Sibiu'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imaginea de fundal
          Positioned.fill(
            child: Image.asset(
              'lib/assets/background.png',
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView( // Permitem scroll pe întreaga pagină
            child: Column(
              children: [
                // Utilizăm CustomAppBar
                CustomAppBar(title: title, currentPage: 'Acasă'),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Caseta de descriere a salonului
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 800, // Lățimea maximă a casetei
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Magic Feet Sibiu',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(
                                  color: Colors.green.shade800,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'Bine ați venit la Magic Feet Sibiu, un salon specializat '
                                    'în pedichiură medicală. Cu o echipă de profesioniști dedicați '
                                    'și cu cele mai moderne echipamente, ne asigurăm că picioarele tale '
                                    'primesc îngrijirea de care au nevoie.',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.grey,
                                  height: 1.5,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'Indiferent dacă ai nevoie de tratamente pentru afecțiuni specifice '
                                    'ale picioarelor sau pur și simplu dorești o îngrijire profesională, '
                                    'Magic Feet Sibiu îți oferă soluții personalizate și eficiente.',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.grey,
                                  height: 1.5,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'Vizitează-ne și bucură-te de picioare sănătoase și frumoase!',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),

                      // Secțiunea pentru Pedichiura Simplă
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 800, // Lățimea maximă a casetei
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Pedichiura Simplă',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Pedichiura simplă se concentrează pe înfrumusețarea picioarelor. '
                                    'Se taie cuticulele, se lachează unghiile și se oferă un aspect îngrijit.',
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 10),
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 10.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'lib/assets/photo1.png',
                                    fit: BoxFit.cover,
                                    height: 250,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),

                      // Secțiunea pentru Pedichiura Medicală
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 800, // Lățimea maximă a casetei
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Pedichiura Medicală',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Pedichiura medicală este un tratament specializat pentru afecțiunile picioarelor. '
                                    'Aceasta include îndepărtarea bătăturilor, unghiilor incarnate și îngrijirea pielii.',
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 10),

                              // Adăugăm slider-ul de imagini
                              const _ImageSlider(), // Apelăm widgetul nostru de slider
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),

                      // Secțiunea despre Alina Nicoleta Tilea
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 800, // Lățimea maximă a casetei
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Despre Alina Nicoleta Tilea',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'TEST TEST TEST !!!!!!Alina Nicoleta Tilea este fondatoarea Magic Feet Sibiu și specialistă în pedichiură medicală. '
                                    'A absolvit numeroase cursuri de perfecționare și are o experiență vastă în domeniu. '
                                    'Alina este recunoscută pentru dedicarea sa în oferirea de soluții personalizate pentru sănătatea picioarelor.',
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 10),
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 10.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'lib/assets/alina.jpg',
                                    fit: BoxFit.cover,
                                    height: 250,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),

                      // Secțiunea pentru Contact
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 800, // Lățimea maximă a casetei
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Contact',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Pentru programări sau informații suplimentare, ne poți contacta la:',
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Telefon: 123-456-7890\n'
                                    'Email: contact@magicfeet.ro\n'
                                    'Adresă: Strada Exemplu, nr. 10, Sibiu',
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),

                      // Footer
                      const Footer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ImageSlider extends StatefulWidget {
  const _ImageSlider({Key? key}) : super(key: key);

  @override
  State<_ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<_ImageSlider> {
  int _currentIndex = 0;

  final List<String> _images = [
    'lib/assets/slide1.jpg',
    'lib/assets/slide2.jpg',
    'lib/assets/slide3.jpg',
    'lib/assets/slide4.jpg',
    'lib/assets/slide5.jpg',
  ];

  void _nextImage() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _images.length;
    });
  }

  void _previousImage() {
    setState(() {
      _currentIndex = (_currentIndex - 1 + _images.length) % _images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Imaginea curentă - ajustată la dimensiuni pătrate
        Container(
          constraints: const BoxConstraints(
            maxWidth: 400, // Limita de lățime pentru imagini
            maxHeight: 400, // Limita de înălțime pentru imagini
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              _images[_currentIndex],
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ),
        const SizedBox(height: 10),

        // Săgeată stânga (Previous)
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.green,
              onPressed: _previousImage,
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              color: Colors.green,
              onPressed: _nextImage,
            ),
          ],
        ),
      ],
    );
  }
}
