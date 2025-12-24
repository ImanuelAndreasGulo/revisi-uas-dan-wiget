import 'package:flutter/material.dart';
import 'package:informatika_app/app/data/models/prodi_data.dart';

class KurikulumPage extends StatelessWidget {
  const KurikulumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kurikulum'),
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
                            Icons.book_rounded,
                            color: Theme.of(context).colorScheme.primary,
                            size: 26,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Mata Kuliah Unggulan',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                        'Mata kuliah yang menjadi keunggulan program studi',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              
              // Grid Mata Kuliah
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.85,
                ),
                itemCount: ProdiData.mataKuliah.length,
                itemBuilder: (context, index) {
                  final mk = ProdiData.mataKuliah[index];
                  return _buildMataKuliahCard(
                    context,
                    mk['nama']!,
                    mk['deskripsi']!,
                    index,
                  );
                },
              ),
              
              const SizedBox(height: 32),
              
              // Metode Pembelajaran Section
              Padding(
                padding: const EdgeInsets.only(left: 4, bottom: 16),
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
                            Icons.school_rounded,
                            color: Theme.of(context).colorScheme.primary,
                            size: 26,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Metode Pembelajaran',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                        'Pendekatan pembelajaran yang kami terapkan',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              
              // List Metode Pembelajaran
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: ProdiData.metodePembelajaran.asMap().entries.map((entry) {
                      final index = entry.key;
                      final metode = entry.value;
                      return Column(
                        children: [
                          if (index > 0) const Divider(height: 24),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(
                                  Icons.check_circle_rounded,
                                  color: Theme.of(context).colorScheme.primary,
                                  size: 24,
                                ),
                              ),
                              const SizedBox(width: 14),
                              Expanded(
                                child: Text(
                                  metode,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMataKuliahCard(
    BuildContext context,
    String nama,
    String deskripsi,
    int index,
  ) {
    final colors = [
      const Color(0xFF1565C0), // Blue
      const Color(0xFF2E7D32), // Green
      const Color(0xFFE65100), // Orange
      const Color(0xFF6A1B9A), // Purple
      const Color(0xFF00695C), // Teal
      const Color(0xFFD84315), // Deep Orange
      const Color(0xFF1976D2), // Light Blue
      const Color(0xFF388E3C), // Light Green
      const Color(0xFF7B1FA2), // Light Purple
    ];
    final color = colors[index % colors.length];
    
    final icons = [
      Icons.psychology_rounded,
      Icons.storage_rounded,
      Icons.science_rounded,
      Icons.code_rounded,
      Icons.lan_rounded,
      Icons.security_rounded,
      Icons.devices_rounded,
      Icons.analytics_rounded,
      Icons.sports_esports_rounded,
    ];
    final icon = icons[index % icons.length];
    
    return Card(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
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
                size: 32,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              nama,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                height: 1.3,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 6),
            Expanded(
              child: Text(
                deskripsi,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  height: 1.4,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
