import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/widgets_controller.dart';

class WidgetsView extends GetView<WidgetsController> {
  const WidgetsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Bentuk Material Design',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              'Kumpulan contoh komponen Material Design Flutter.',
              style: TextStyle(fontSize: 12, color: Colors.black54),
            ),
            const SizedBox(height: 16),
            const Expanded(child: _MaterialWidgetsGrid()),
          ],
        ),
      ),
    );
  }
}

class _MaterialWidgetsGrid extends StatelessWidget {
  const _MaterialWidgetsGrid();

  @override
  Widget build(BuildContext context) {
    final items = _widgetItems;

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 1,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return _WidgetCard(
          icon: item.icon,
          label: item.label,
          colors: item.colors,
          onTap: () => Get.toNamed(item.route),
        );
      },
    );
  }
}

class _WidgetCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final List<Color> colors;
  final VoidCallback onTap;

  const _WidgetCard({
    required this.icon,
    required this.label,
    required this.colors,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 28),
            const SizedBox(height: 8),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _WidgetItem {
  final IconData icon;
  final String label;
  final String route;
  final List<Color> colors;

  const _WidgetItem({
    required this.icon,
    required this.label,
    required this.route,
    required this.colors,
  });
}

const _widgetItems = <_WidgetItem>[
  _WidgetItem(
    icon: Icons.title,
    label: 'AppBar',
    route: Routes.appBar,
    colors: [Color(0xFF00C6FB), Color(0xFF005BEA)],
  ),
  _WidgetItem(
    icon: Icons.apps,
    label: 'MaterialApp',
    route: Routes.materialApp,
    colors: [Color(0xFF43E97B), Color(0xFF38F9D7)],
  ),
  _WidgetItem(
    icon: Icons.layers,
    label: 'Scaffold',
    route: Routes.scaffold,
    colors: [Color(0xFFFFA738), Color(0xFFFFE130)],
  ),
  _WidgetItem(
    icon: Icons.navigation,
    label: 'BottomNavigationBar',
    route: Routes.bottomNavigationBar,
    colors: [Color(0xFFFF512F), Color(0xFFDD2476)],
  ),
  _WidgetItem(
    icon: Icons.navigation_outlined,
    label: 'NavigationBar',
    route: Routes.navigationBar,
    colors: [Color(0xFF4E54C8), Color(0xFF8F94FB)],
  ),
  _WidgetItem(
    icon: Icons.menu,
    label: 'NavigationDrawer',
    route: Routes.navigationDrawer,
    colors: [Color(0xFF2193B0), Color(0xFF6DD5ED)],
  ),
  _WidgetItem(
    icon: Icons.view_sidebar,
    label: 'NavigationRail',
    route: Routes.navigationRail,
    colors: [Color(0xFF56ab2f), Color(0xFFA8E063)],
  ),
  _WidgetItem(
    icon: Icons.menu_open,
    label: 'Drawer',
    route: Routes.drawer,
    colors: [Color(0xFFFFB75E), Color(0xFFED8F03)],
  ),
  _WidgetItem(
    icon: Icons.add,
    label: 'FloatingActionButton',
    route: Routes.floatingActionButton,
    colors: [Color(0xFFEB3349), Color(0xFFF45C43)],
  ),
  _WidgetItem(
    icon: Icons.message,
    label: 'SnackBar',
    route: Routes.snackBar,
    colors: [Color(0xFF614385), Color(0xFF516395)],
  ),
  _WidgetItem(
    icon: Icons.call_to_action,
    label: 'BottomSheet',
    route: Routes.bottomSheet,
    colors: [Color(0xFF606c88), Color(0xFF3f4c6b)],
  ),
  _WidgetItem(
    icon: Icons.credit_card,
    label: 'Card',
    route: Routes.card,
    colors: [Color(0xFF16A085), Color(0xFFF4D03F)],
  ),
  _WidgetItem(
    icon: Icons.label,
    label: 'Chip',
    route: Routes.chip,
    colors: [Color(0xFF1D976C), Color(0xFF93F9B9)],
  ),
  _WidgetItem(
    icon: Icons.label_outline,
    label: 'RawChip',
    route: Routes.rawChip,
    colors: [Color(0xFFFFF200), Color(0xFFFFE000)],
  ),
  _WidgetItem(
    icon: Icons.refresh,
    label: 'CircularProgressIndicator',
    route: Routes.circularProgressIndicator,
    colors: [Color(0xFF8E2DE2), Color(0xFF4A00E0)],
  ),
  _WidgetItem(
    icon: Icons.linear_scale,
    label: 'LinearProgressIndicator',
    route: Routes.linearProgressIndicator,
    colors: [Color(0xFF11998E), Color(0xFF38EF7D)],
  ),
  _WidgetItem(
    icon: Icons.date_range,
    label: 'DatePicker',
    route: Routes.datePicker,
    colors: [Color(0xFFFF512F), Color(0xFFF09819)],
  ),
  _WidgetItem(
    icon: Icons.access_time,
    label: 'TimePicker',
    route: Routes.timePicker,
    colors: [Color(0xFF396afc), Color(0xFF2948ff)],
  ),
];
