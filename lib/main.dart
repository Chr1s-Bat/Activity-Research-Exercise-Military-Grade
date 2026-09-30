import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Military Gear Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
      ),
      home: const MilitaryGearScreen(),
    );
  }
}

class MilitaryGearScreen extends StatelessWidget {
  const MilitaryGearScreen({super.key});

  // Local list of modern military gear and weapons data
  final List<Map<String, String>> militaryItems = const [
    {
      "name": "M4 URGI-I",
      "category": "Assault Rifle",
      "description": "Standard-issue 5.56mm tactical assault rifle featuring modular rail systems for optics and attachments.",
      "image": "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%2Fid%2FOIP.n2E8eEAb_hywd4SIiERkfQHaEK%3Fpid%3DApi&f=1&ipt=06b7335d9d338cc87a09bc05c29640c54ddf51d9797e49d380a46410b61617c9&ipo=images"
    },
    {
      "name": "EXFIL Ballistic Helmet",
      "category": "Head Protection",
      "description": "Advanced high-cut ballistic helmet equipped with night vision mounts and side rail accessory slots.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTxUPv2Zr2gomZMISpbpHfM-H76XstStIh9bLoZ7Q12g&s=10"
    },
    {
      "name": "Modular Plate Carrier (MPC)",
      "category": "Body Armor",
      "description": "Heavy-duty tactical vest featuring MOLLE webbing and NIJ Level IV armor plates for maximum ballistic protection.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdJaAvFfXZFpaohnf8pOvw8ddTmOwlTbS7QmV6nV_oJQ&s=10"
    },
    {
      "name": "Glock 19 Gen 5",
      "category": "Sidearm",
      "description": "9mm semi-automatic pistol trusted worldwide by military and law enforcement for reliability and precision.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkUrkVZuxJ-WVAM_ifVEIBoGd4eLVXzgb4Q62pPooj9Q&s=10"
    },
    {
      "name": "AN/PVS-31 BNVD",
      "category": "Optics & Vision",
      "description": "High-performance dual-tube night vision goggles providing superior depth perception in zero-light conditions.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsx6iwMqracZNJIJX78bsl9peJq_4N75jdnkR-R0z2zw&s=10"
    },
    {
      "name": "Barrett M82A1",
      "category": "Anti-Materiel Sniper Rifle",
      "description": "Recoil-operated, semi-automatic .50 BMG rifle designed for long-range engagement and target neutralization.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7pJrAFEYPnSinqfGw2X9B1tPxe9BNUMCegRSyZKo87A&s"
    },
    {
      "name": "Oakley SI Tactical Gloves",
      "category": "Handwear",
      "description": "Heavy-duty carbon fiber knuckle guard gloves built for maximum dexterity, durability, and impact protection.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRueskiZnPkU4RaCm9EaMNF9c1aoFVqgnXb6WVyVNoisA&s=10"
    },
    {
      "name": "Crye Precision G3 Combat Pants",
      "category": "Apparel",
      "description": "Custom-tailored operational combat trousers featuring integrated removable knee pads and stretch fabric.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV0KF2tw90yRbIZlaoSLAbBWFjMIAtWMQ8FAvwxc7RpA&s=10"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modern Military Gear & Weapons'),
        backgroundColor: Colors.grey[900],
      ),
      body: ListView.builder(
        itemCount: militaryItems.length,
        itemBuilder: (context, index) {
          final item = militaryItems[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  item['image']!,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.military_tech, size: 40),
                ),
              ),
              title: Text(
                item['name']!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4),
                  Text(
                    "Category: ${item['category']}",
                    style: TextStyle(
                      color: Colors.greenAccent[400],
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(item['description']!),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}