import 'package:app/DetailsScreen.dart';
import 'package:app/about.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List freshList = [
    {"image": "assets/images/do.webp", "name": "Doro wet"},
    {"image": "assets/images/t.jpg", "name": "Tebs"},
    {"image": "assets/images/b.jpg", "name": "Beyainet"},
    {"image": "assets/images/k.jpg", "name": "ketifo"},
    {"image": "assets/images/s.jpg", "name": "shiro"},
  ];
  List<Map<String, dynamic>> recommendedList = [
    {"image": "assets/images/k.jpg", "name": "ketifo"},
    {"image": "assets/images/s.jpg", "name": "shiro"},
    {"image": "assets/images/do.webp", "name": "Doro wet"},
    {"image": "assets/images/t.jpg", "name": "Tebs"},
    {"image": "assets/images/b.jpg", "name": "Beyainet"},
  ];

  List<Map<String, dynamic>> filteredList = [];
  List<bool> _isFavoriteList = [];

  // Declare as empty list
  @override
  void initState() {
    super.initState();
    _isFavoriteList = List.generate(recommendedList.length, (_) => false);
    // Initialize _isFavoriteList with false for each item
  }

  // New list to store filtered recipes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Food Recipe",
          style: TextStyle(
            color: Colors.white70,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 49, 47, 47),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 49, 47, 47),
              ),
              child: Text(
                "Menu",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text("Home",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
                // Handle home navigation here
              },
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 1,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Detail",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          freshList[index]["name"],
                          freshList[index]["image"],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            ListTile(
              title: Text(
                "About",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => about(),
                  ),
                );
                // Handle about section navigation here
              },
            ),
            SizedBox(
              height: 300,
            ),
            Align(alignment: Alignment.bottomCenter, child: Text("Version 1.0"))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: 24.0,
            left: 16.0,
            right: 16.0,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 3,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "What do you want to prepare from \nEthiopian Delicious Foods?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23.0,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 45,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(31, 179, 185, 185),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: TextField(
                        onSubmitted: (value) {
                          // Handle search functionality here using the entered value
                          print("Searching for: $value");
                        },
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 25,
                          ),
                          hintText: "Search for recipes",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 45,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(31, 186, 196, 195),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: IconButton(
                      onPressed: () => print("setting"),
                      icon: Icon(Icons.edit_note),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today's Fresh Recipes",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => print('see more recipes'),
                    child: Text(
                      "see All",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.amber[900],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 240,
                child: ListView.builder(
                  itemCount: freshList.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            freshList[index]["name"],
                            freshList[index]["image"],
                          ),
                        ),
                      ),
                      child: Container(
                        height: 280.0,
                        width: 200.0,
                        margin: EdgeInsets.only(right: 32),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(31, 163, 172, 170),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 7,
                              right: -100,
                              bottom: 125,
                              child: Image.asset(
                                freshList[index]["image"],
                                height: 100,
                                width: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                                top: 16,
                                left: 16,
                                child: IconButton(
                                    icon: _isFavoriteList[index]
                                        ? Icon(Icons.favorite,
                                            color: Colors
                                                .white) // Filled red icon when favorited
                                        : Icon(Icons.favorite_border),
                                    onPressed: () {
                                      setState(() {
                                        _isFavoriteList[index] = !_isFavoriteList[
                                            index]; // Toggle the favorite state
                                      });
                                    })),
                            Positioned(
                              top: 135,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Ethiopian Traditional Food",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      freshList[index]["name"],
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: List.generate(
                                        5,
                                        (index) => Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                          size: 16,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "100 calories",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromARGB(
                                          255,
                                          139,
                                          185,
                                          190,
                                        ),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.access_time,
                                              color: Colors.black87,
                                              size: 10,
                                            ),
                                            Text(
                                              "10 mins",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 75,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.food_bank_outlined,
                                              size: 17,
                                            ),
                                            Text(
                                              "Fresh",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => print("see all recommended"),
                    child: Text(
                      "see all",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.amber[900],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: recommendedList.length * 136.0, // Adjust this value
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(), // Disable scrolling
                  itemCount: recommendedList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            recommendedList[index]["name"],
                            recommendedList[index]["image"],
                          ),
                        ),
                      ),
                      child: Container(
                        height: 120,
                        margin: EdgeInsets.only(bottom: 16),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 242, 245, 245),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              recommendedList[index]["image"],
                              height: 180,
                              width: 120,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 25,
                                  vertical: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Ethiopian Foods"),
                                    Text(
                                      recommendedList[index]["name"],
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: List.generate(
                                        5,
                                        (index) => Icon(
                                          Icons.star,
                                          color: Colors.orangeAccent,
                                          size: 16,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.access_time,
                                              color: Colors.black87,
                                              size: 10,
                                            ),
                                            Text(
                                              "10 mins",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 75,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.food_bank_outlined,
                                              size: 17,
                                            ),
                                            Text(
                                              "2 Left",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                  height: 18,
                                  width: 36,
                                  child: IconButton(
                                      icon: _isFavoriteList[index]
                                          ? Icon(Icons.favorite,
                                              color: const Color.fromARGB(
                                                  255,
                                                  255,
                                                  0,
                                                  0)) // Filled red icon when favorited
                                          : Icon(Icons.favorite_border),
                                      onPressed: () {
                                        setState(() {
                                          _isFavoriteList[index] = !_isFavoriteList[
                                              index]; // Toggle the favorite state
                                        });
                                      })),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
