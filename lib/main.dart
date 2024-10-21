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
      appBar: const CustomAppBar(
          title: 'Magic Feet Sibiu',
          currentPage: 'Acasă'), // Folosește CustomAppBar aici
      body: Stack(
        children: [
          // Imaginea de fundal
          Positioned.fill(
            child: Image.asset(
              'lib/assets/background.png',
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            // Permitem scroll pe întreaga pagină
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
                              LayoutBuilder(
                                builder: (context, constraints) {
                                  // Detectăm dimensiunea ecranului
                                  double screenWidth =
                                      MediaQuery.of(context).size.width;
                                  double textFontSize = screenWidth > 600
                                      ? 22
                                      : 16; // Ajustăm dimensiunea textului

                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Magic Feet Sibiu\nby Alina Țilea',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium
                                            ?.copyWith(
                                              color: Colors.green.shade800,
                                              fontWeight: FontWeight.bold,
                                              fontSize: screenWidth > 600
                                                  ? 28
                                                  : 24, // Ajustăm mărimea titlului
                                            ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 20),
                                      Text(
                                        'Bine ați venit la Magic Feet Sibiu, un salon specializat '
                                        'în pedichiură medicală. Cu o echipă de profesioniști dedicați '
                                        'și cu cele mai moderne echipamente, ne asigurăm că picioarele tale '
                                        'primesc îngrijirea de care au nevoie.',
                                        style: TextStyle(
                                          fontSize: textFontSize,
                                          color: Colors.grey,
                                          height: 1.5,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 20),
                                      Text(
                                        'Indiferent dacă ai nevoie de tratamente pentru afecțiuni specifice '
                                        'ale picioarelor sau pur și simplu dorești o îngrijire profesională, '
                                        'Magic Feet Sibiu îți oferă soluții personalizate și eficiente.',
                                        style: TextStyle(
                                          fontSize: textFontSize,
                                          color: Colors.grey,
                                          height: 1.5,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 20),
                                      Text(
                                        'Vizitează-ne și bucură-te de picioare sănătoase și frumoase!',
                                        style: TextStyle(
                                          fontSize: screenWidth > 600
                                              ? 18
                                              : 14, // Ajustăm dimensiunea textului bold
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 20),
                                      // Slider pentru imagini de la salon
                                      const _SalonImageSlider(),
                                    ],
                                  );
                                },
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
                                'Se taie cuticulele, se lăcuiesc unghiile și se oferă un aspect îngrijit.',
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 10),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10.0),
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
                      // Secțiunea pentru Pedichiura Medicală

                      // Secțiunea pentru Pedichiura Medicală
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 800, // Lățimea maximă a casetei
                        ),
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            // Obținem lățimea ecranului pentru a adapta dimensiunea imaginii
                            double screenWidth =
                                MediaQuery.of(context).size.width;

                            // Setăm dimensiunea imaginii în funcție de lățimea ecranului
                            double imageSize = screenWidth > 600 ? 200 : 150;

                            return Container(
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
                                  const SizedBox(height: 20),
                                  Divider(
                                      thickness: 2, color: Colors.grey[300]),

                                  // Afișăm toate informațiile în mod continuu

                                  // Secțiunea 1: Unghii încarnate (onicocriptoza)
                                  Row(
                                    children: [
                                      Image.asset(
                                        'lib/assets/slide5.jpg',
                                        width: imageSize,
                                        height: imageSize,
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: const Text(
                                          'Unghii încarnate (onicocriptoza): O afecțiune în care marginea unghiei pătrunde în pielea de la marginea degetului, cauzând durere, inflamație și, uneori, infecție.',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  Divider(
                                      thickness: 2, color: Colors.grey[300]),

                                  // Secțiunea 2: Unghie distrofică (onicogrifoza)
                                  Row(
                                    children: [
                                      Image.asset(
                                        'lib/assets/slide3.jpg',
                                        width: imageSize,
                                        height: imageSize,
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: const Text(
                                          'Unghie distrofică (onicogrifoza): O tulburare în care unghia crește deformate și îngroșate, uneori curbată anormal, afectând în special persoanele în vârstă.',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  Divider(
                                      thickness: 2, color: Colors.grey[300]),

                                  // Secțiunea 3: Unghii micotice (onicomicoza)
                                  Row(
                                    children: [
                                      Image.asset(
                                        'lib/assets/med2.jpg',
                                        width: imageSize,
                                        height: imageSize,
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: const Text(
                                          'Unghii micotice (onicomicoza): Infecții fungice ale unghiilor, care cauzează îngroșarea, decolorarea și deformarea unghiei, fiind frecvente la picioare.',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  Divider(
                                      thickness: 2, color: Colors.grey[300]),

                                  // Secțiunea 4: Bătături (hiperkeratoza)
                                  Row(
                                    children: [
                                      Image.asset(
                                        'lib/assets/slide1.jpg',
                                        width: imageSize,
                                        height: imageSize,
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: const Text(
                                          'Bătături (hiperkeratoza): O îngroșare excesivă a stratului superior al pielii, care apare adesea pe picioare în zone de presiune, ca rezultat al frecării sau iritației.',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  Divider(
                                      thickness: 2, color: Colors.grey[300]),

                                  // Secțiunea 5: Calozități (bătături digitale sau interdigitale)
                                  Row(
                                    children: [
                                      Image.asset(
                                        'lib/assets/intradigitale.jpg',
                                        width: imageSize,
                                        height: imageSize,
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: const Text(
                                          'Calozități (bătături digitale sau interdigitale): Zone îngroșate și dure ale pielii care se formează în spațiile dintre degete sau pe degete, de obicei din cauza presiunii sau frecării.',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  Divider(
                                      thickness: 2, color: Colors.grey[300]),

                                  // Secțiunea 6: Veruci plantare (negi)
                                  Row(
                                    children: [
                                      Image.asset(
                                        'lib/assets/slide4.jpg',
                                        width: imageSize,
                                        height: imageSize,
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: const Text(
                                          'Veruci plantare (negi): Creșteri inofensive ale pielii cauzate de infecția cu papilomavirusul uman (HPV), care apar în special pe tălpile picioarelor.',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  Divider(
                                      thickness: 2, color: Colors.grey[300]),

                                  // Secțiunea 7: Călcâie crăpate (ragade)
                                  Row(
                                    children: [
                                      Image.asset(
                                        'lib/assets/ragade.jpg',
                                        width: imageSize,
                                        height: imageSize,
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: const Text(
                                          'Călcâie crăpate (ragade): Fisuri dureroase care se formează pe pielea călcâielor uscate, adesea din cauza deshidratării pielii sau presiunii excesive.',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  Divider(
                                      thickness: 2, color: Colors.grey[300]),

                                  // Secțiunea 8: Întreținerea și debridarea piciorului diabetic
                                  // Row(
                                  //   children: [
                                  //     Image.asset(
                                  //       'lib/assets/imagine_picior_diabetic.png',
                                  //       width: imageSize,
                                  //       height: imageSize,
                                  //     ),
                                  //     const SizedBox(width: 10),
                                  //     Expanded(
                                  //       child: const Text(
                                  //         'Întreținerea și debridarea piciorului diabetic: Îngrijirea specializată pentru persoanele cu diabet, care implică îndepărtarea țesutului mort (debridare) pentru a preveni infecțiile și a stimula vindecarea rănilor la nivelul picioarelor.',
                                  //         style: TextStyle(fontSize: 16),
                                  //       ),
                                  //     ),
                                  //   ],
                                  // ),
                                  // const SizedBox(height: 20),
                                  // Divider(
                                  // thickness: 2, color: Colors.grey[300]),
                                ],
                              ),
                            );
                          },
                        ),
                      ),

                      const SizedBox(height: 30),

                      ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 800, // Lățimea maximă a casetei
                        ),
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            double screenWidth =
                                MediaQuery.of(context).size.width;
                            double imageSize = screenWidth > 600
                                ? 200
                                : screenWidth *
                                    0.4; // Ajustăm dimensiunea imaginii în funcție de lățimea ecranului

                            return Container(
                              padding: const EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Sisteme protecție unghii încarnate',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'Prin diferite tehnici putem ajuta sau controla creșterea unghiei.',
                                    style: TextStyle(fontSize: 18),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 20),

                                  // Secțiunea 1: Spange
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Spange',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      screenWidth > 600
                                          ? Row(
                                              children: [
                                                Image.asset(
                                                  'lib/assets/spange.jpg',
                                                  width: imageSize,
                                                  height: imageSize,
                                                ),
                                                const SizedBox(width: 10),
                                                Expanded(
                                                  child: const Text(
                                                    'Tehnică folosită pentru corectarea unghiilor încarnate prin aplicarea unei protecții care ajută la ghidarea creșterii corecte a unghiei.',
                                                    style:
                                                        TextStyle(fontSize: 16),
                                                  ),
                                                ),
                                              ],
                                            )
                                          : Column(
                                              children: [
                                                Image.asset(
                                                  'lib/assets/spange.jpg',
                                                  width: imageSize,
                                                  height: imageSize,
                                                ),
                                                const SizedBox(height: 10),
                                                const Text(
                                                  'Tehnică folosită pentru corectarea unghiilor încarnate prin aplicarea unei protecții care ajută la ghidarea creșterii corecte a unghiei.',
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                ),
                                              ],
                                            ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),

                                  // Divider între secțiuni
                                  Divider(
                                      thickness: 2, color: Colors.grey[300]),

                                  // Secțiunea 2: Fir titan
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Fir titan',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      screenWidth > 600
                                          ? Row(
                                              children: [
                                                Image.asset(
                                                  'lib/assets/titan.jpg',
                                                  width: imageSize,
                                                  height: imageSize,
                                                ),
                                                const SizedBox(width: 10),
                                                Expanded(
                                                  child: const Text(
                                                    'Un fir subțire din titan este utilizat pentru a corecta forma unghiei, prevenind creșterea în piele și reducând durerea asociată cu unghiile încarnate.',
                                                    style:
                                                        TextStyle(fontSize: 16),
                                                  ),
                                                ),
                                              ],
                                            )
                                          : Column(
                                              children: [
                                                Image.asset(
                                                  'lib/assets/titan.jpg',
                                                  width: imageSize,
                                                  height: imageSize,
                                                ),
                                                const SizedBox(height: 10),
                                                const Text(
                                                  'Un fir subțire din titan este utilizat pentru a corecta forma unghiei, prevenind creșterea în piele și reducând durerea asociată cu unghiile încarnate.',
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                ),
                                              ],
                                            ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),

                                  // Divider între secțiuni
                                  Divider(
                                      thickness: 2, color: Colors.grey[300]),

                                  // Secțiunea 3: Compozit
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Compozit',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      screenWidth > 600
                                          ? Row(
                                              children: [
                                                Image.asset(
                                                  'lib/assets/compozit.jpg',
                                                  width: imageSize,
                                                  height: imageSize,
                                                ),
                                                const SizedBox(width: 10),
                                                Expanded(
                                                  child: const Text(
                                                    'Utilizat pentru a modela unghiile și a le ghida creșterea într-un mod natural și sănătos. Această metodă este ideală pentru prevenirea problemelor viitoare cu unghiile încarnate.',
                                                    style:
                                                        TextStyle(fontSize: 16),
                                                  ),
                                                ),
                                              ],
                                            )
                                          : Column(
                                              children: [
                                                Image.asset(
                                                  'lib/assets/Compozit.jpg',
                                                  width: imageSize,
                                                  height: imageSize,
                                                ),
                                                const SizedBox(height: 10),
                                                const Text(
                                                  'Utilizat pentru a modela unghiile și a le ghida creșterea într-un mod natural și sănătos. Această metodă este ideală pentru prevenirea problemelor viitoare cu unghiile încarnate.',
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                ),
                                              ],
                                            ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),

                                  const SizedBox(height: 10),
                                ],
                              ),
                            );
                          },
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
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Alina Nicoleta Țilea',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Fondator Magic Feet Sibiu - Asistent Podolog',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 20),

                              // Slider-ul de imagini pentru Alina Nicoleta Țilea
                              _AlinaImageSlider(),
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
