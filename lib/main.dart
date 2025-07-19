import 'package:assesment/widgets/appbar.dart';
import 'package:assesment/widgets/cat.dart';
import 'package:assesment/widgets/imageslider.dart';
import 'package:assesment/widgets/navbar.dart';
import 'package:assesment/widgets/productitem.dart';
import 'package:assesment/widgets/sug_cat.dart';
import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlipkartHomePage(),
    );
  }
}

class FlipkartHomePage extends StatelessWidget {
  const FlipkartHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const Navbar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // AppBar & Location Section
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(246, 90, 172, 249),
                      Color.fromARGB(69, 90, 172, 249),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    const CustomAppbar(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          const Icon(Icons.location_on,
                              size: 16, color: Colors.black),
                          const SizedBox(width: 4),
                          const Text(
                            '201013',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 8),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Select delivery location >",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Search Bar
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for products',
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: const Icon(Icons.qr_code_scanner),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),

              // Category Icons
              Container(
                margin: const EdgeInsets.symmetric(vertical: 6.0),
                height:
                    screenHeight * 0.10, 
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryIconWithIcon(
                      icon: Icons.brush,
                      label: 'Beauty',
                    ),
                    CategoryIconWithIcon(
                      icon: Icons.chair,
                      label: 'Home',
                    ),
                    CategoryIconWithIcon(
                      icon: Icons.local_hospital,
                      label: 'Food & Health',
                    ),
                    CategoryIconWithIcon(
                      icon: Icons.child_care,
                      label: 'Toys, Baby',
                    ),
                    CategoryIconWithIcon(
                      icon: Icons.car_repair,
                      label: 'Auto Accessories',
                    ),
                    CategoryIconWithIcon(
                      icon: Icons.sports_soccer,
                      label: 'Sports',
                    ),
                  ],
                ),
              ),

              // Image Slider
              const AutoImageSlider(),

              Container(
                width: double.infinity,
                color: const Color(0xFFB6DCEB),
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        "umang, still looking for these?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: screenHeight * 0.12,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          SuggestionItem(
                            imagePath: 'assets/sug_catimages/s1.jpg',
                            label: 'Mobile ',
                          ),
                          SuggestionItem(
                            imagePath: 'assets/sug_catimages/s2.jpg',
                            label: 'Laptops',
                          ),
                          SuggestionItem(
                            imagePath: 'assets/sug_catimages/s3.jpg',
                            label: 'Mobile Cables',
                          ),
                          SuggestionItem(
                            imagePath: 'assets/sug_catimages/s4.jpg',
                            label: 'Telivision',
                          ),
                          SuggestionItem(
                            imagePath: 'assets/sug_catimages/s2.jpg',
                            label: 'Laptops',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Product List 
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  height: screenHeight * 0.25,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      ProductItem(
                          imagePath: 'assets/products/p1.jpg',
                          label: 'Under ₹399'),
                      ProductItem(
                          imagePath: 'assets/products/p2.jpg',
                          label: 'Under ₹289'),
                      ProductItem(
                          imagePath: 'assets/products/p3.jpg',
                          label: 'Under ₹369'),
                      ProductItem(
                          imagePath: 'assets/products/p3.jpg',
                          label: 'Under ₹369'),
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
}

class CategoryIcon extends StatelessWidget {
  final String label;
  const CategoryIcon({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.category),
          Text(label, style: const TextStyle(fontSize: 10)),
        ],
      ),
    );
  }
}
