import 'package:faseela/modules/user_screen/user_screen.dart';
import 'package:flutter/material.dart';

import '../login/login_screen.dart';

class Data {
  final String image;
  final String name;
  Data({
    required this.image,
    required this.name,
  });
}

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  List<Data> data = [
    Data(image: "assets/user.png", name: "Hamza"),
    Data(image: "assets/logo1.jpg", name: "Asim"),
    Data(image: "assets/factory.png", name: "Hatem"),
    Data(image: "assets/logo.jpg", name: "Shoroq"),
    Data(image: "assets/user.png", name: "Hamza"),
    Data(image: "assets/logo1.jpg", name: "Hamza"),
    Data(image: "assets/factory.png", name: "Hamza"),
    Data(image: "assets/logo.jpg", name: "Hamza"),
    Data(image: "assets/user.png", name: "Hamza"),
    Data(image: "assets/logo1.jpg", name: "Hamza"),
    Data(image: "assets/factory.png", name: "Hamza"),
    Data(image: "assets/logo.jpg", name: "Hamza"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        titleSpacing: 15.0,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('assets/logo1.jpg'),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "Faseela",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: const Text(
              "SIGN IN",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.grey[300],
                ),
                child: TextFormField(
                  // controller: searchController,
                  cursorColor: Colors.green[600],
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: "Search",
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                height: 30.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildCategoryItem(),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 5.0),
                  itemCount: 10,
                ),
              ),
              Divider(
                height: 30.0,
                thickness: 1.0,
                color: Colors.green[600],
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildMainItem(data[index], context),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 15.0),
                itemCount: data.length,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategoryItem({String text = "Category"}) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.lightBlue[900],
        ),
        child: MaterialButton(
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      );

  Widget buildMainItem(Data item, context) => Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey[200],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              item.image,
              width: 100.0,
              height: 100.0,
            ),
            const SizedBox(width: 10.0),
            const Expanded(
              child: Text(
                "Descriptionhe case Description of the case Description of the case Descriptionhe case Description of the case Description of the case",
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15.0),
              ),
            ),
            SizedBox(
              height: 100.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Container(
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.green[600],
                      ),
                      child: TextButton(
                        onPressed: ()
                        {
                          print("show details");
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => UserScreen(imagePath: item.image,))
                          );
                        },
                        child: const Text(
                          "Show Details",
                          style: TextStyle(color: Colors.white, fontSize: 10.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
}
