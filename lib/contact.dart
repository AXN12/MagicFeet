import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_app_bar.dart';
import 'footer.dart'; // Importează Footer

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication); // Deschide în browser
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Contact', currentPage: 'Contact'), // Folosește CustomAppBar
      body: Stack(
        children: [
          // Imaginea de fundal
          Positioned.fill(
            child: Image.asset(
              'lib/assets/background.png', // Aici pui imaginea ta de fundal
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _buildContactCard(
                        context,
                        icon: Icons.phone,
                        title: '0722 180 401',
                        url: 'tel:0722180401',
                      ),
                      const SizedBox(height: 16), // Spațiu între carduri
                      _buildContactCard(
                        context,
                        icon: Icons.facebook,
                        title: 'Facebook',
                        url: 'https://www.facebook.com/p/MAGIC-FEET-SIBIU-100088397910432/',
                      ),
                      const SizedBox(height: 16), // Spațiu între carduri
                      _buildContactCard(
                        context,
                        icon: Icons.camera_alt, // Iconă pentru Instagram
                        title: 'Instagram',
                        url: 'https://www.instagram.com/magicfeetalina/',
                      ),
                      const SizedBox(height: 16), // Spațiu între carduri
                      _buildContactCard(
                        context,
                        icon: Icons.map, // Iconă pentru Google Maps
                        title: 'Deschide Google Maps',
                        subtitle: 'Strada Măgura 36, Sibiu', // Subtitlu cu adresa
                        url: 'https://www.google.com/maps/search/?api=1&query=Strada+Măgura+36,+Sibiu',
                      ),
                    ],
                  ),
                ),
              ),
              // Adaugă Footer-ul aici
              const Footer(), // Include Footer-ul în partea de jos
            ],
          ),
        ],
      ),
    );
  }

  // Funcție pentru a construi un card de contact
  Widget _buildContactCard(BuildContext context, {required IconData icon, required String title, required String url, String? subtitle}) {
    return SizedBox(
      width: 500, // Lățimea maximă a cardului
      child: GestureDetector(
        onTap: () => _launchURL(url),
        child: Card(
          elevation: 4,
          child: ListTile(
            leading: Icon(icon),
            title: Text(title),
            subtitle: subtitle != null ? Text(subtitle) : null, // Subtitlu opțional
            trailing: const Icon(Icons.arrow_forward),
          ),
        ),
      ),
    );
  }
}
