import 'package:flutter/material.dart';
import 'package:magic_feet/contact.dart';
import 'package:magic_feet/manichiura.dart';
import 'package:magic_feet/price.dart';
import 'package:magic_feet/main.dart';

// Importă pagina principală

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String currentPage;

  const CustomAppBar({super.key, required this.title, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    // Obține lățimea ecranului
    final screenWidth = MediaQuery.of(context).size.width;

    return AppBar(
      backgroundColor: Colors.green.shade800, // Setează culoarea fundalului
      elevation: 4, // Setează o umbră
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo-ul și titlul
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  // Navighează înapoi la pagina principală
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: Image.asset(
                  'lib/assets/logo.png',
                  width: 40,
                  height: 40,
                ),
              ),
              const SizedBox(width: 8),
              Text(title),
            ],
          ),
          // Meniul
          screenWidth > 650
              ? Row( // Afișează meniul complet pe ecrane mai mari
            children: [
              _buildNavItem(context, 'Acasă', 'Acasă', const MyHomePage(title: 'Magic Feet Sibiu')),
              const SizedBox(width: 16),
              _buildNavItem(context, 'Contact', 'Contact', const ContactPage()),
              const SizedBox(width: 16),
              _buildNavItem(context, 'Manichiură', 'Manichiură', const Manichiura()),
              const SizedBox(width: 16),
              _buildNavItem(context, 'Prețuri', 'Prețuri', const PricesPage()),
            ],
          )
              : PopupMenuButton<String>( // Afișează un meniu dropdown pe ecrane mai mici
            icon: const Icon(Icons.menu, color: Colors.white),
            onSelected: (value) {
              if (value == 'Acasă' && currentPage != 'Acasă') {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Magic Feet Sibiu')),
                      (route) => false,
                );
              } else if (value == 'Contact' && currentPage != 'Contact') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactPage()),
                );
              } else if (value == 'Manichiură' && currentPage != 'Manichiură') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Manichiura()),
                );
              } else if (value == 'Prețuri' && currentPage != 'Prețuri') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PricesPage()),
                );
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'Acasă', child: Text('Acasă')),
              const PopupMenuItem(value: 'Contact', child: Text('Contact')),
              const PopupMenuItem(value: 'Manichiură', child: Text('Manichiură')),
              const PopupMenuItem(value: 'Prețuri', child: Text('Prețuri')),
            ],
          ),
        ],
      ),
    );
  }

  // Metodă pentru a crea un element de navigare
  Widget _buildNavItem(BuildContext context, String label, String pageName, Widget destinationPage) {
    return TextButton(
      onPressed: currentPage == pageName
          ? null
          : () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destinationPage),
        );
      },
      child: Text(label, style: const TextStyle(color: Colors.white)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
