import 'package:flutter/material.dart';
import 'package:informatika_app/app/data/models/prodi_data.dart';

class KontakPage extends StatelessWidget {
  const KontakPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kontak'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              Padding(
                padding: const EdgeInsets.only(left: 4, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.contact_phone_rounded,
                            color: Theme.of(context).colorScheme.primary,
                            size: 26,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Hubungi Kami',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                        'Informasi kontak Program Studi ${ProdiData.namaProdi}',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              
              // Alamat
              _buildContactCard(
                context,
                icon: Icons.location_on_rounded,
                title: 'Alamat',
                content: ProdiData.alamat,
                color: const Color(0xFFD32F2F),
              ),
              
              const SizedBox(height: 12),
              
              // Email
              _buildContactCard(
                context,
                icon: Icons.email_rounded,
                title: 'Email',
                content: ProdiData.email,
                color: const Color(0xFF1565C0),
              ),
              
              const SizedBox(height: 12),
              
              // Telepon
              _buildContactCard(
                context,
                icon: Icons.phone_rounded,
                title: 'Telepon',
                content: ProdiData.phone,
                color: const Color(0xFF2E7D32),
              ),
              
              const SizedBox(height: 12),
              
              // Website
              _buildContactCard(
                context,
                icon: Icons.language_rounded,
                title: 'Website',
                content: ProdiData.website,
                color: const Color(0xFF6A1B9A),
              ),
              
              const SizedBox(height: 12),
              
              // Instagram
              _buildContactCard(
                context,
                icon: Icons.camera_alt_rounded,
                title: 'Instagram',
                content: ProdiData.instagram,
                color: const Color(0xFFE91E63),
              ),
              
              const SizedBox(height: 24),
              
              // Info Card
              Card(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Theme.of(context).colorScheme.primary.withOpacity(0.08),
                        Theme.of(context).colorScheme.secondary.withOpacity(0.05),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.info_outline_rounded,
                          color: Theme.of(context).colorScheme.primary,
                          size: 28,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          'Kami siap membantu Anda untuk informasi lebih lanjut mengenai program studi',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContactCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String content,
    required Color color,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                icon,
                color: color,
                size: 26,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    content,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
