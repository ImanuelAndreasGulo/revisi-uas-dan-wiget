import 'package:flutter/material.dart';
import 'profil_page.dart';
import 'visi_misi_page.dart';
import 'kurikulum_page.dart';
import 'fasilitas_page.dart';
import 'kegiatan_prestasi_page.dart';
import 'prospek_lulusan_page.dart';
import 'kontak_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  // List halaman yang akan ditampilkan di BottomNavigationBar
  final List<Widget> _pages = [
    const ProfilPage(),
    const VisiMisiPage(),
    const KurikulumPage(),
    const FasilitasPage(),
  ];

  // List untuk menu tambahan di Drawer
  final List<Map<String, dynamic>> _drawerMenu = [
    {
      'title': 'Kegiatan & Prestasi',
      'icon': Icons.emoji_events,
      'page': const KegiatanPrestasiPage(),
    },
    {
      'title': 'Prospek Lulusan',
      'icon': Icons.work_outline,
      'page': const ProspekLulusanPage(),
    },
    {
      'title': 'Kontak',
      'icon': Icons.contact_phone,
      'page': const KontakPage(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Drawer untuk menu tambahan
      drawer: Drawer(
        child: Column(
          children: [
            // Modern Drawer Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(24, 56, 24, 24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.secondary,
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                      'asset/hmiflogo.png',
                      width: 48,
                      height: 48,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.school,
                          size: 48,
                          color: Color(0xFF1565C0),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Company Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Program Studi Teknik Informatika',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            
            // Menu Items
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 8),
                children: [
                  // Menu Utama
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
                    child: Text(
                      'MENU UTAMA',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                  _buildDrawerItem(
                    context,
                    icon: Icons.account_balance_rounded,
                    title: 'Profil',
                    isSelected: _currentIndex == 0,
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                  ),
                  _buildDrawerItem(
                    context,
                    icon: Icons.visibility_rounded,
                    title: 'Visi & Misi',
                    isSelected: _currentIndex == 1,
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        _currentIndex = 1;
                      });
                    },
                  ),
                  _buildDrawerItem(
                    context,
                    icon: Icons.book_rounded,
                    title: 'Kurikulum',
                    isSelected: _currentIndex == 2,
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        _currentIndex = 2;
                      });
                    },
                  ),
                  _buildDrawerItem(
                    context,
                    icon: Icons.computer_rounded,
                    title: 'Fasilitas',
                    isSelected: _currentIndex == 3,
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        _currentIndex = 3;
                      });
                    },
                  ),
                  
                  const Divider(height: 24),
                  
                  // Menu Tambahan
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
                    child: Text(
                      'LAINNYA',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                  ..._drawerMenu.map((menu) => _buildDrawerItem(
                    context,
                    icon: menu['icon'],
                    title: menu['title'],
                    isSelected: false,
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => menu['page']),
                      );
                    },
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
      
      // Body - tampilkan halaman sesuai index
      body: _pages[_currentIndex],
      
      // Bottom Navigation Bar - Modern & Clean
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_rounded),
              label: 'Profil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.visibility_rounded),
              label: 'Visi & Misi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_rounded),
              label: 'Kurikulum',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.computer_rounded),
              label: 'Fasilitas',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: isSelected 
          ? Theme.of(context).colorScheme.primary.withOpacity(0.1)
          : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: isSelected 
            ? Theme.of(context).colorScheme.primary
            : Colors.grey[600],
          size: 24,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            color: isSelected 
              ? Theme.of(context).colorScheme.primary
              : Colors.grey[800],
          ),
        ),
        onTap: onTap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
