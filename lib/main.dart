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
      home: const MyHomePage(title: 'Magic Feet Sibiu by Alina Țilea'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Magic Feet Sibiu', currentPage: 'Acasă'), // Folosește CustomAppBar aici
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
                                'Magic Feet Sibiu\n by Alina Țilea ',
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
                                ' Bine ați venit la Magic Feet Sibiu, un salon specializat '
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
                              const SizedBox(height: 20),

                              // Adăugăm slider-ul pentru imagini de la salon
                              const _SalonImageSlider(),
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
                                    'Se taie cuticulele, se lăcuiesc unghiile și se oferă un aspect îngrijit.',
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

                              // Adăugăm secțiunea cu lista de servicii
                              ExpansionTile(
                                title: Text('Unghii încarnate (onicocriptoza)'),
                                children: [
                                  ListTile(
                                    title: Text('Tratament pentru unghii încarnate, cunoscut și ca onicocriptoză.'),
                                  ),
                                ],
                              ),
                              ExpansionTile(
                                title: Text('Unghie distrofică (onicogrifoza)'),
                                children: [
                                  ListTile(
                                    title: Text('Tratament pentru unghiile distrofice sau deformate, cunoscut și sub denumirea de onicogrifoză.'),
                                  ),
                                ],
                              ),
                              ExpansionTile(
                                title: Text('Unghii micotice (onicomicoza)'),
                                children: [
                                  ListTile(
                                    title: Text('Tratament pentru unghii afectate de infecții fungice, cunoscute și sub denumirea de onicomicoză.'),
                                  ),
                                ],
                              ),
                              ExpansionTile(
                                title: Text('Bătături (hiperkeratoza)'),
                                children: [
                                  ListTile(
                                    title: Text('Îndepărtarea bătăturilor, cunoscută și ca hiperkeratoză.'),
                                  ),
                                ],
                              ),
                              ExpansionTile(
                                title: Text('Calozități (bătături digitale sau interdigitale)'),
                                children: [
                                  ListTile(
                                    title: Text('Tratament pentru calozități sau bătături digitale și interdigitale.'),
                                  ),
                                ],
                              ),
                              ExpansionTile(
                                title: Text('Veruci plantare (negi)'),
                                children: [
                                  ListTile(
                                    title: Text('Tratament pentru negi plantari.'),
                                  ),
                                ],
                              ),
                              ExpansionTile(
                                title: Text('Călcâie crăpate (ragade)'),
                                children: [
                                  ListTile(
                                    title: Text('Tratament pentru călcâiele crăpate, cunoscut și ca ragade.'),
                                  ),
                                ],
                              ),
                              ExpansionTile(
                                title: Text('Întreținerea și debridarea piciorului diabetic'),
                                children: [
                                  ListTile(
                                    title: Text('Îngrijirea specializată pentru picioarele diabeticilor, inclusiv debridarea.'),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 10),
                              const _ImageSlider(), // Apelăm widgetul nostru de slider
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 30),

                      // Secțiunea despre Alina Nicoleta Țilea cu slider-ul de imagini
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
                                'Alina Nicoleta Țilea',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Fondator Magic Feet Sibiu - Asistent Podolog',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 20),

                              // Slider-ul de imagini pentru Alina Nicoleta Țilea
                              const _AlinaImageSlider(),
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

// Slider-ul de imagini pentru Pedichiura Medicală
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

// Slider-ul de imagini pentru secțiunea Alina Nicoleta Țilea
class _AlinaImageSlider extends StatefulWidget {
  const _AlinaImageSlider({Key? key}) : super(key: key);

  @override
  State<_AlinaImageSlider> createState() => _AlinaImageSliderState();
}

class _AlinaImageSliderState extends State<_AlinaImageSlider> {
  int _currentIndex = 0;

  final List<String> _images = [
    'lib/assets/alina.jpg',
    'lib/assets/alina2.jpg',
    'lib/assets/alina3.jpg',
    'lib/assets/alina4.jpg',
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
class _SalonImageSlider extends StatelessWidget {
  const _SalonImageSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350, // Înălțimea slider-ului
      child: PageView(
        children: [
          Image.asset('lib/assets/salon.jpg', fit: BoxFit.cover),
        ],
      ),
    );
  }
}
