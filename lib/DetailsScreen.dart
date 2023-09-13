import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final String name, image;

  DetailsScreen(
    this.name,
    this.image,
  );

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  List descList = [
    {
      "name": "ketifo",
      "dis":
          'Kitfo is a traditional Ethiopian dish made from raw minced beef and seasoned with spices. It is typically served with injera. Here\'s how to make kitfo:\n\nIngredients:\n\n- 250g lean beef, minced\n- 1 tablespoon mitmita (Ethiopian spice blend)\n- 1 teaspoon niter kibbeh (clarified butter)\n- Salt to taste\n- Injera (for serving)\n\nInstructions:\n\n1. Mix the minced beef with mitmita and niter kibbeh.\n2. Season with salt to taste and mix well.\n3. Serve the kitfo on a plate, traditionally served raw or lightly cooked.\n4. Enjoy with injera and other accompaniments.',
      "time": "15 min",
      "price": "60"
    },
    {
      "name": "Tebs",
      "dis":
          'Tibs is a popular Ethiopian dish featuring sautéed or grilled meat with spices. It\'s a flavorful and hearty dish. Here\'s how to make tibs:\n\nIngredients:\n\n- 500g beef or lamb, cubed\n- 2 onions, sliced\n- 3 cloves of garlic, minced\n- 2 tablespoons oil or niter kibbeh\n- 1 tablespoon berbere spice\n- Salt and pepper to taste\n- Injera (for serving)\n\nInstructions:\n\n1. Heat oil in a skillet and sauté onions and garlic until golden.\n2. Add meat and cook until browned on all sides.\n3. Stir in berbere spice, salt, and pepper. Cook until spices are fragrant.\n4. Serve the tibs with injera and enjoy the rich flavors.',
      "time": "30 min",
      "price": "70"
    },
    {
      "name": "Beyayinet",
      "dis":
          'Beyayinet is a mixed platter of various Ethiopian dishes. It offers a variety of flavors and textures. Here\'s how to prepare beyayinet:\n\nIngredients:\n\n- Injera\n- Doro Wat (spicy chicken stew)\n- Kitfo (raw minced beef)\n- Tibs (sautéed or grilled meat)\n- Shiro Wat (chickpea stew)\n- Lentil Stew\n- Various vegetable and lentil sides\n\nInstructions:\n\n1. Prepare each dish separately according to their respective recipes.\n2. Arrange the dishes on a large injera-covered platter.\n3. Serve the beyayinet platter with extra injera for scooping and savoring the different flavors.',
      "time": "20min",
      "price": "180"
    },
    {
      "name": "Doro wet",
      "dis":
          'Doro Wet is a classic Ethiopian dish featuring spicy chicken stew. It\'s rich in flavor and often enjoyed during special occasions. Here\'s how to make doro wet:\n\nIngredients:\n\n- 1 whole chicken, cut into pieces\n- 2 onions, finely chopped\n- 3 cloves of garlic, minced\n- 1 tablespoon ginger, minced\n- 2 tablespoons niter kibbeh (clarified butter)\n- 1 tablespoon berbere spice (adjust to taste)\n- Salt to taste\n- Hard-boiled eggs (optional)\n- Injera (for serving)\n\nInstructions:\n\n1. Sauté onions, garlic, and ginger in niter kibbeh until fragrant.\n2. Add berbere spice and salt. Cook for a few minutes.\n3. Add chicken pieces and coat with the spice mixture.\n4. Add enough water to cover the chicken. Simmer until chicken is cooked.\n5. Add hard-boiled eggs for garnish, if desired.\n6. Serve the doro wet with injera and enjoy the flavorful stew.',
      "time": "60 min",
      "price": "75"
    },
    {
      "name": "shiro",
      "dis":
          "Shiro typically refers to Shiro Wat, a traditional Ethiopian dish... Here's a simplified recipe to make Shiro Wat:\n\nIngredients:\n\n1 cup chickpea flour (shiro powder)\n2 onions, finely chopped\n3 cloves of garlic, minced\n2 tablespoons oil or clarified butter (niter kibbeh)\n1 tablespoon berbere spice (adjust to taste)\n1 teaspoon ground paprika\n1 teaspoon ground cumin\nSalt to taste\nWater\nChopped cilantro or parsley (for garnish, optional)\n\nInstructions:\n\nPrepare the Base:\nHeat oil or niter kibbeh in a pot over medium heat. Add chopped onions and sauté until they become soft and translucent.\n\nAdd Spices:\nStir in minced garlic, berbere spice, ground paprika, ground cumin, and a pinch of salt. Cook the spices with the onions for a couple of minutes to release their flavors.\n\nAdd Chickpea Flour:\nGradually add the chickpea flour (shiro powder) while stirring constantly to avoid lumps. Continue to cook the mixture for a few minutes until the chickpea flour is well incorporated with the spices and onions.\n\nAdd Water:\nAdd water while stirring to create a smooth paste. The consistency should be thick, similar to a stew. Keep in mind that Shiro will thicken as it cooks.\n\nSimmer and Cook:\nReduce the heat to low, cover the pot, and let the Shiro simmer for about 20-30 minutes. Stir occasionally to prevent sticking and to ensure even cooking. If the mixture becomes too thick, you can add a bit more water.\n\nTaste and Adjust:\nTaste the Shiro and adjust the seasoning as needed, adding more salt or berbere spice if desired.\n\nServe:\nOnce the Shiro is cooked and has a rich consistency, remove it from the heat. You can garnish it with chopped cilantro or parsley if you like.\n\nServing Suggestions:\nShiro Wat is typically served with injera, a traditional Ethiopian flatbread. The combination of Shiro and injera creates a delicious and satisfying meal.",
      "time": "20 min",
      "price": "50"
    },

    // ... other items in the list
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: Container(
          height: 58,
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 32.0, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(28.0),
              topRight: Radius.circular(28.0),
            ),
          ),
          child: Text(
            "Back",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: 50.0,
            left: 28.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.only(right: 15),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  widget.name,
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 24.0),
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                    text: "\$",
                    style: TextStyle(fontSize: 16, color: Colors.orange),
                  ),
                  TextSpan(
                      text: _getPrice(widget.name),
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange)),
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 4.6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Calories",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "100 Calories",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 36,
                          ),
                          Text(
                            "Time",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            _getTime(widget.name),
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 36,
                          ),
                          Text(
                            "Total Left",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "3 left",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Image.asset(
                      widget.image,
                      height: 250.0,
                      width: 280,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Column(
                children: [
                  Text(
                    "Description",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    _getDescription(widget.name),
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  String _getDescription(String imageName) {
    var description = "";
    for (var item in descList) {
      if (item["name"] == imageName) {
        description = item["dis"];
        break;
      }
    }
    return description;
  }

  String _getTime(String imageName) {
    var time = "";

    for (var item in descList) {
      if (item["name"] == imageName) {
        time = item["time"];

        break;
      }
    }
    return time;
  }

  String _getPrice(String imageName) {
    var price = "";

    for (var item in descList) {
      if (item["name"] == imageName) {
        price = item["price"];

        break;
      }
    }
    return price;
  }
}
