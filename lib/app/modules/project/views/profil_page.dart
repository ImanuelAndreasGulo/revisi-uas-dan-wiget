import 'package:flutter/material.dart';
import 'package:informatika_app/app/data/models/prodi_data.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> with TickerProviderStateMixin {
  late AnimationController _logoController;
  late AnimationController _textController;
  late AnimationController _cardController;
  late Animation<double> _logoAnimation;
  late Animation<double> _fadeAnimation;
  double _scrollOffset = 0.0;

  @override
  void initState() {
    super.initState();
    
    // Logo animation (scale & bounce)
    _logoController = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );
    _logoAnimation = CurvedAnimation(
      parent: _logoController,
      curve: Curves.elasticOut,
    );
    
    // Text fade animation
    _textController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _fadeAnimation = CurvedAnimation(
      parent: _textController,
      curve: Curves.easeIn,
    );
    
    // Card animation
    _cardController = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
    );
    
    // Start animations with delay
    Future.delayed(const Duration(milliseconds: 200), () {
      if (mounted) _logoController.forward();
    });
    Future.delayed(const Duration(milliseconds: 400), () {
      if (mounted) _textController.forward();
    });
    Future.delayed(const Duration(milliseconds: 600), () {
      if (mounted) _cardController.forward();
    });
  }

  @override
  void dispose() {
    _logoController.dispose();
    _textController.dispose();
    _cardController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Program Studi'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          setState(() {
            _scrollOffset = notification.metrics.pixels;
          });
          return true;
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header dengan Parallax Background
              Stack(
                children: [
                  // Parallax Background Image
                  Transform.translate(
                    offset: Offset(0, _scrollOffset * 0.4),
                    child: Container(
                      width: double.infinity,
                      height: 420,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/gedung-matana-expanded-1.webp'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      // Gradient Overlay
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.black.withOpacity(0.3),
                              Colors.black.withOpacity(0.7),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Content dengan Animasi
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(24, 120, 24, 50),
                    child: Column(
                      children: [
                        // Animated Logo dengan Scale & Bounce
                        ScaleTransition(
                          scale: _logoAnimation,
                          child: Hero(
                            tag: 'logo-hmif',
                            child: Material(
                              elevation: 20,
                              borderRadius: BorderRadius.circular(30),
                              shadowColor: Colors.black.withOpacity(0.5),
                              child: Container(
                                padding: const EdgeInsets.all(26),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Image.asset(
                                  'asset/hmiflogo.png',
                                  height: 130,
                                  width: 130,
                                  fit: BoxFit.contain,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Icon(
                                      Icons.computer_rounded,
                                      size: 130,
                                      color: Theme.of(context).colorScheme.primary,
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        // Animated Text dengan Fade
                        FadeTransition(
                          opacity: _fadeAnimation,
                          child: Column(
                            children: [
                              Text(
                                ProdiData.namaProdi,
                                style: const TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  letterSpacing: 0.8,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black87,
                                      blurRadius: 20,
                                      offset: Offset(0, 4),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 12),
                              Text(
                                ProdiData.fakultas,
                                style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black87,
                                      blurRadius: 15,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                ProdiData.universitas,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white.withOpacity(0.95),
                                  shadows: const [
                                    Shadow(
                                      color: Colors.black87,
                                      blurRadius: 15,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              
              // Content Section dengan Animasi
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    // Animated Info Cards
                    Row(
                      children: [
                        Expanded(
                          child: _buildAnimatedInfoCard(
                            context,
                            icon: Icons.school_rounded,
                            title: 'Jenjang',
                            value: ProdiData.jenjang,
                            color: const Color(0xFF1565C0),
                            delay: 100,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _buildAnimatedInfoCard(
                            context,
                            icon: Icons.verified_rounded,
                            title: 'Akreditasi',
                            value: ProdiData.akreditasi,
                            color: const Color(0xFF2E7D32),
                            delay: 200,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 28),
                    
                    // Deskripsi Card dengan Animasi
                    _buildAnimatedDescriptionCard(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedInfoCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String value,
    required Color color,
    required int delay,
  }) {
    return TweenAnimationBuilder<double>(
      duration: Duration(milliseconds: 700 + delay),
      tween: Tween(begin: 0.0, end: 1.0),
      curve: Curves.easeOutBack,
      builder: (context, animValue, child) {
        return Transform.scale(
          scale: animValue,
          child: Opacity(
            opacity: animValue,
            child: InkWell(
              onTap: () {
                // Tap animation
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('$title: $value'),
                    duration: const Duration(seconds: 1),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              borderRadius: BorderRadius.circular(16),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: color.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Icon(icon, color: color, size: 32),
                      ),
                      const SizedBox(height: 14),
                      Text(
                        title,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.grey[600],
                            ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        value,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildAnimatedDescriptionCard(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 900),
      tween: Tween(begin: 0.0, end: 1.0),
      curve: Curves.easeOut,
      builder: (context, animValue, child) {
        return Transform.translate(
          offset: Offset(0, 30 * (1 - animValue)),
          child: Opacity(
            opacity: animValue,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.info_outline_rounded,
                            color: Theme.of(context).colorScheme.primary,
                            size: 26,
                          ),
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: Text(
                            'Tentang Program Studi',
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 18),
                    Text(
                      ProdiData.deskripsi,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            height: 1.7,
                          ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
