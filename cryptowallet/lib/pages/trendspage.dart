import 'package:cryptowallet/components/component.dart';
import 'package:cryptowallet/extensions/extension.dart';
import 'package:cryptowallet/models/model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class TrendsPage extends StatefulWidget {
  const TrendsPage({super.key});

  @override
  State<TrendsPage> createState() => _TrendsPageState();
}

class _TrendsPageState extends State<TrendsPage> {
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();

  List<Map<String, dynamic>> _filteredTrends = [];

  @override
  void initState() {
    super.initState();
    _filteredTrends = marketTrends;
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void applyFilter(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredTrends = marketTrends;
      } else {
        _filteredTrends = marketTrends.where((item) {
          final name = item['name'].toString().toLowerCase();
          final shorty = item['shorty'].toString().toLowerCase();
          final searchLower = query.toLowerCase();

          return name.contains(searchLower) || shorty.contains(searchLower);
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        leadingWidth: 80,
        leading: IconButton.filled(
          padding: const EdgeInsets.all(15),
          iconSize: 24,
          style: IconButton.styleFrom(
            backgroundColor:
                Theme.of(context).colorScheme.brightness == Brightness.dark
                ? const Color(0xff393c45)
                : const Color(0xffbcbcbc),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.chevron_left),
        ),
        title: _isSearching
            ? TextField(
                controller: _searchController,
                autofocus: true,
                onSubmitted: applyFilter,
                onChanged: applyFilter,
                onTapOutside: (_) {
                  setState(() {
                    _searchController.clear();
                    _isSearching = !_isSearching;
                  });
                },
                decoration: const InputDecoration(
                  hintText: 'Search...',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.white54),
                ),
                style: const TextStyle(color: Colors.white),
              )
            : Text(
                "Market Trends",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.4,
                ),
              ),
        actions: [
          IconButton.filled(
            padding: const EdgeInsets.all(15),
            iconSize: 24,
            style: IconButton.styleFrom(
              backgroundColor:
                  Theme.of(context).colorScheme.brightness == Brightness.dark
                  ? const Color(0xff393c45)
                  : const Color(0xffbcbcbc),
            ),
            onPressed: () {
              setState(() {
                _isSearching = !_isSearching;
                if (!_isSearching) {
                  _searchController.clear();
                }
              });
            },
            icon: Icon(
              _isSearching ? Iconsax.close_circle : Iconsax.search_favorite,
            ),
          ),
          SizedBox(width: context.wp(2)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: context.hp(2)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: DropdownMenu(
                hintText: "Filters",
                enableFilter: true,
                width: double.infinity,
                menuStyle: MenuStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
                inputDecorationTheme: InputDecorationTheme(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 2,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                dropdownMenuEntries: [
                  const DropdownMenuEntry(value: 'all', label: 'all'),
                  const DropdownMenuEntry(value: 'daily high', label: 'daily high'),
                  const DropdownMenuEntry(value: 'daily low', label: 'daily low'),
                ],
              ),
            ),
            SizedBox(height: context.hp(1)),
            Flexible(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                itemCount: _filteredTrends.length,
                itemBuilder: (context, index) {
                  final item = _filteredTrends[index];
                  return MarketTrend(
                    image: Image.asset(item["icon"], width: 48, height: 48),
                    title: item["name"],
                    subtitle: item["shorty"],
                    price: item["price"],
                    percent: item["percentage"],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
