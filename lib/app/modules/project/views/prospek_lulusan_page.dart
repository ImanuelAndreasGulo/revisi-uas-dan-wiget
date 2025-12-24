import 'package:flutter/material.dart';
import 'package:informatika_app/app/data/models/prodi_data.dart';

class ProspekLulusanPage extends StatelessWidget {
  const ProspekLulusanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prospek Lulusan'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Modern Header Card
              Card(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(28),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Theme.of(context).colorScheme.primary,
                        Theme.of(context).colorScheme.secondary,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Icon(
                          Icons.work_outline_rounded,
                          color: Colors.white,
                          size: 48,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Peluang Karier Luas',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 0.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Lulusan kami bekerja di berbagai sektor industri teknologi',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white.withOpacity(0.9),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              
              const SizedBox(height: 28),
              
              // Section Header
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
                            Icons.business_center_rounded,
                            color: Theme.of(context).colorScheme.primary,
                            size: 26,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Bidang Kerja & Karier',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                        'Berbagai pilihan karier yang dapat dijalani',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              
              // Grid Prospek Karier
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.9,
                ),
                itemCount: ProdiData.prospekLulusan.length,
                itemBuilder: (context, index) {
                  final prospek = ProdiData.prospekLulusan[index];
                  return _buildProspekCard(
                    context,
                    prospek['bidang']!,
                    prospek['deskripsi']!,
                    index,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProspekCard(
    BuildContext context,
    String bidang,
    String deskripsi,
    int index,
  ) {
    final icons = [
      Icons.web_rounded, // Front End
      Icons.dns_rounded, // Back End
      Icons.code_rounded, // Full Stack
      Icons.engineering_rounded, // Software Engineer
      Icons.support_agent_rounded, // Tech Support
      Icons.assessment_rounded, // System Analyst
      Icons.lan_rounded, // Network Engineer
      Icons.analytics_rounded, // Data Scientist
      Icons.psychology_rounded, // AI Specialist
      Icons.phone_android_rounded, // Mobile Developer
      Icons.sports_esports_rounded, // Game Developer
    ];
    
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
      const Color(0xFF0097A7), // Cyan
      const Color(0xFFEF6C00), // Amber
    ];
    
    final icon = icons[index % icons.length];
    final color = colors[index % colors.length];
    
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14),
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
                size: 28,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              bidang,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
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
