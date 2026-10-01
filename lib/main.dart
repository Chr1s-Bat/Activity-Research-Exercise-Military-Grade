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

  // Local list of modern military gear with matching native tactical icons
  final List<Map<String, dynamic>> militaryItems = const [
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
    },
    {
      "name": "FN SCAR-H Mk 17",
      "category": "Battle Rifle",
      "description": "Rugged 7.62x51mm NATO combat rifle built for extended range and severe operational environments.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAeuP79D7P7G2c_DYtHrOq_EWnVKQJAPK9ZZ9_dTH7Nw&s=10",
    },
    {
      "name": "HK MP7A2",
      "category": "Personal Defense Weapon",
      "description": "Compact, high-rate-of-fire PDW firing armor-piercing 4.6x30mm rounds for close-quarters combat.",
      "image": "https://upload.wikimedia.org/wikipedia/commons/7/71/MP7_A2.jpg?utm_source=en.wikipedia.org&utm_campaign=index&utm_content=original",
    },
    {
      "name": "SIG Sauer P320-M17",
      "category": "Sidearm",
      "description": "Modular striker-fired service pistol adopted as the standard sidearm for the US Armed Forces.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQp0s9jM5EKmqNzeHagBl24Jg0Oouwp4rC46CiGEPgtg&s=10",
    },
    {
      "name": "Remington M40A6",
      "category": "Sniper Rifle",
      "description": "Bolt-action precision sniper weapon system chambered in 7.62mm NATO for dedicated marksman units.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm2JGwf2ureK_DgLGnNzpyJa3l4DSUfOer25F5kf1aww&s=10",
    },
    {
      "name": "FN M249 SAW",
      "category": "Light Machine Gun",
      "description": "Belt-fed squad automatic weapon providing sustained suppressing fire at the infantry fire-team level.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJM88XW-vWzesHkta3VoK23GdwspY7yvdyDp-CSjFXTw&s=10",
    },
    {
      "name": "M134 Minigun",
      "category": "Rotary Heavy Machine Gun",
      "description": "High-speed multi-barrel rotary machine gun firing up to 4,000 rounds per minute of 7.62mm NATO.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ2rkieqN6E9mKQddy2EVm4XHoWkIvQ9i4kKjXYGlNfA&s",
    },
    {
      "name": "FGM-148 Javelin",
      "category": "Anti-Tank Missile",
      "description": "Man-portable fire-and-forget anti-tank guided missile system featuring infrared guidance and top-attack capability.",
      "image": "https://p.turbosquid.com/ts-thumb/TE/gdq7Wp/Di/anti_tank_missile_fgm_148_javelin_set_002/jpg/1678374550/1920x1080/fit_q87/954ed7a7f6ddc8b798b24603fe76fccf65c4cfd6/anti_tank_missile_fgm_148_javelin_set_002.jpg",
    },
    {
      "name": "Carl Gustaf M4",
      "category": "Recoilless Rifle",
      "description": "Multi-role 84mm anti-armor and bunker-busting weapon system utilized by elite light infantry units.",
      "image": "https://www.army-technology.com/wp-content/uploads/sites/3/2020/07/Image-1-Carl-Gustaf-M4-Multi-Role-Weapon-System-1.jpg",
    },
    {
      "name": "M320 Grenade Launcher",
      "category": "Explosive Weapon",
      "description": "Single-shot 40mm grenade launcher capable of firing high-explosive, smoke, and illumination rounds.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ3lIHA36YmQpeQG6obxuyTPOkgcTQAkr3Dh9jxkiRFw&s=10",
    },
    {
      "name": "Ops-Core FAST SF",
      "category": "Head Protection",
      "description": "Super high-cut ballistic helmet designed with ultra-lightweight composite shells and modular suspension.",
      "image": "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTcS62M61fVIDttmZqMqV1vGkUD9XwZDixh_BHR5efW9w25IpajVf1eqV_Otmftzfly_tPEMXpxezdJCZbYVqVzxgHDEWaXicr_OK4UjPE98k2VGbrYmzc",
    },
    {
      "name": "Crye Precision JPC 2.0",
      "category": "Body Armor",
      "description": "Lightweight, highly scalable minimalist plate carrier built for mobility and rapid gear attachment.",
      "image": "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTSMxiJn59KbDPiiK00Eq--Y41hHw4CyTfevbwHpFS4Jl4wpi10StvjsyF9RdGY9wgb-obVNb3y9wYyQ6o7TOscpJ8QMyG-3-ixgwvg0Ca1sySzhpokrLc",
    },
    {
      "name": "Lowa Zephyr GTX Boots",
      "category": "Footwear",
      "description": "High-performance mid-cut tactical combat boots engineered for stability, traction, and waterproof protection.",
      "image": "https://www.lowasphilippines.com/wp-content/uploads/2026/06/LOWA142-1.jpg",
    },
    {
      "name": "Salomon Quest 4 Forces",
      "category": "Footwear",
      "description": "Rugged tactical assault boots offering advanced ankle support and grip for harsh mountainous terrains.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfYuyXj2VRmPesXpWAL3s3H2h-0HF53btN11acQ4U8PA&s=10",
    },
    {
      "name": "GPNVG-18",
      "category": "Optics & Vision",
      "description": "Ground Panoramic Night Vision Goggle providing an unprecedented 97-degree horizontal field of view.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNHsLXqulv1DzfW4GubcpJKFdLJMe2ee4AJvi19YmQVg&s=10",
    },
    {
      "name": "EOTech EXPS3 Holographic Sight",
      "category": "Weapon Optic",
      "description": "Rugged CQB weapon sight featuring a 68 MOA ring and 1 MOA dot reticle for lightning-fast target acquisition.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTK5x_a-e2aFdrMG_-YDe-JxEyzMQrrkRemVK32wna6LQ&s=10",
    },
    {
      "name": "Trijicon ACOG 4x32",
      "category": "Weapon Optic",
      "description": "Combat-proven magnified rifle scope utilizing fiber optics and tritium for dual-illuminated aiming points.",
      "image": "https://www.trijicon.com/uploads/product-uploads/TA31-D-100288_315-1102-1566238082.jpg",
    },
    {
      "name": "AN/PEQ-15 ATPIAL",
      "category": "Laser Designator",
      "description": "Advanced target pointer/illuminator aiming laser emitting visible and infrared beams for night combat operations.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcULUoBNxMQENNggeIYR5ALgAK9aqSSU-V0fURermOYg&s=10",
    },
    {
      "name": "SureFire M600DF Scout Light",
      "category": "Tactical Illumination",
      "description": "High-output LED weapon light delivering 1,500 lumens of blinding white light for dark clearing procedures.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlcdErUA8nlJtn2RWJzZHj6Vl8NkFgFRjMe3JqCvawdk7OkS_XWwNe8ft9&s=10",
    },
    {
      "name": "Peltor ComTac V Headset",
      "category": "Communications",
      "description": "Tactical communication headset featuring electronic ambient listening protection and crystal-clear radio integration.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYBdqXZA6Q_MOFXR6AkTy-3YWcF9ZFcFEa-Au529q6wA&s=10",
    },
    {
      "name": "Bespoke Tactical Chest Rig",
      "category": "Load Carriage",
      "description": "Lightweight modular platform designed to hold rifle magazines, medical supplies, and secondary communication tools.",
      "image": "https://vancharlioutdoor.com/wp-content/uploads/2026/04/Logo-Branding-Private-Label-Packaging.jpg.webp",
    },
    {
      "name": "Individual First Aid Kit (IFAK)",
      "category": "Medical Gear",
      "description": "Compact trauma kit packed with tourniquets, chest seals, and quick-clot gauze for battlefield life support.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSp5F8FG12YYUanQqBAIuVgCpm3KwE5a-YgN3LnmxUKQ&s=10",
    },
    {
      "name": "SOG Specialty Knives SEAL Pup",
      "category": "Combat Blade",
      "description": "Powder-coated partially serrated tactical knife built for extreme utility, cutting, and survival tasks.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSp5F8FG12YYUanQqBAIuVgCpm3KwE5a-YgN3LnmxUKQ&s=10",
    },
    {
      "name": "Tomahawk Tactical Axe",
      "category": "Breaching Tool",
      "description": "Multi-purpose utility and door-breaching tool featuring a heavy steel head and high-impact fiberglass handle.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRir-S_yHM4Kajx6j0dCuDscZm-z3cznQMbkprxzg9Yhg&s=10",
    },
    {
      "name": "CamelBak Ambush Hydration Pack",
      "category": "Hydration System",
      "description": "Low-profile 3-liter water hydration backpack designed to integrate directly onto modular plate carriers.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCp6XC7mVxHKpHOaRVSU9ncLkyKLlYmCcNBk1rxQFlBg&s=10",
    },
    {
      "name": "Blackhawk CQC Serpa Holster",
      "category": "Holster",
      "description": "Rigid polymer retention holster featuring an immediate passive retention detent and auto-lock release mechanism.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMbNdMXNWJjb7Oc4kmPUAF7Gm0qTIFzKgp194pc40I8Q&s=10",
    },
    {
      "name": "Dräger CBRN Gas Mask",
      "category": "Protective Gear",
      "description": "Full-face respiratory protection mask engineered to filter out chemical, biological, radiological, and nuclear agents.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4BkoApZcL2bEL0zQSU6Io5WoPebzTy2DK5RP6m1aQ0Q&s=10",
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
              leading: CircleAvatar(
                backgroundColor: Colors.green[900],
                foregroundColor: Colors.greenAccent,
                child: Image.network(item['image']!),
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