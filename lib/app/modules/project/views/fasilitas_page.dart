import 'package:flutter/material.dart';
import 'package:informatika_app/app/data/models/prodi_data.dart';

class FasilitasPage extends StatelessWidget {
  const FasilitasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fasilitas'),
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
                            Icons.computer_rounded,
                            color: Theme.of(context).colorScheme.primary,
                            size: 26,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Fasilitas Pendukung',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                        'Sarana dan prasarana untuk mendukung pembelajaran',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              
              // List Fasilitas (Vertical Layout)
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: ProdiData.fasilitas.length,
                itemBuilder: (context, index) {
                  final fasilitas = ProdiData.fasilitas[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: _buildFasilitasCard(
                      context,
                      fasilitas['nama']!,
                      fasilitas['deskripsi']!,
                      index,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFasilitasCard(
    BuildContext context,
    String nama,
    String deskripsi,
    int index,
  ) {
    final icons = [
      Icons.code_rounded,
      Icons.lan_rounded,
      Icons.phone_android_rounded,
    ];
    
    final colors = [
      const Color(0xFF1565C0), // Blue
      const Color(0xFF2E7D32), // Green  
      const Color(0xFFE65100), // Orange
    ];
    
    final icon = icons[index % icons.length];
    final color = colors[index % colors.length];
    
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(
                icon,
                color: color,
                size: 32,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nama,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    deskripsi,
                    style: Theme.of(context).textTheme.bodyMedium,
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
