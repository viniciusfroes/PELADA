import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 80),
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            height: 600,
                            width: 600,
                            child: Image.network(
                              'https://cdn.jpegmini.com/user/images/slider_puffin_before_mobile.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'Fuluno',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Consultor',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 80),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 80),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Container(
                width: 360,
                height: 1,
                color: Colors.black,
              ),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    child: Image.network(
                      'https://cdn.jpegmini.com/user/images/slider_puffin_before_mobile.jpg',
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text(
                        'vkjswvjwopvmwkovnwipvnwpvn\nvnwpivnwofwfkw0fjweopwpfjkwepjwep\nvnwpivnwofwfkw0fjweopwpfjkwepjwep',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(height: 10),
                      RaisedButton(
                        onPressed: () {},
                        textColor: Colors.white,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xFF0D47A1),
                                Color(0xFF1976D2),
                                Color(0xFF42A5F5),
                              ],
                            ),
                          ),
                          padding: const EdgeInsets.all(4.0),
                          child: const Text('Consultor',
                              style: TextStyle(fontSize: 20)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
