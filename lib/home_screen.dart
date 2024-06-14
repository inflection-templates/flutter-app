

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_app/doctor_screen.dart';
import 'package:flutter_app/doctor.dart';  // Import the shared Doctor class

class HomeScreen extends StatelessWidget {
  final List<String> catNames = [
    "Dental",
    "Heart",
    "Eye",
    "Brain",
    "Ear"
  ];

  final List<Icon> catIcons = [
    Icon(MdiIcons.toothOutline, color: Colors.purple, size: 30),
    Icon(MdiIcons.heart, color: Colors.purple, size: 30),
    Icon(MdiIcons.eye, color: Colors.purple, size: 30),
    Icon(MdiIcons.brain, color: Colors.purple, size: 30),
    Icon(MdiIcons.earHearing, color: Colors.purple, size: 30),
  ];

  final List<Doctor> doctors = [
    Doctor(
      name: "Dr. Govind Shah",
      specialty: "Orthrologist",
      imagePath: "assets/images/D2.jpg",
      rating: 4.9, 
      about: 'Dr. Govind is an experienced cardiologist with over 10 years of experience in treating Ortho issues,\n knowledgeable and skilled in performing surgery on the spine, legs, and feet using updated techniques and technology. ',
      reviews: [
        Review(
          reviewerName: " Govind Shah",
          reviewDate: "1 day ago",
          reviewText: " He is not only an Excellent Doctor , he is simple, superb Human being, Sober, approachable, a Great Social Worker",
          reviewerImage: "assets/images/D2.jpg",
        ),
        Review(
          reviewerName: "Govind Shah",
          reviewDate: "3 days ago",
          reviewText: "Highly recommend Dr. Govind!",
          reviewerImage: "assets/images/D2.jpg",
        ),
      ],
    ),
    Doctor(
      name: "Dr. Priya Mehta",
      specialty: "Cardiologist",
      imagePath: "assets/images/D3.jpg",
      rating: 4.8, 
      about: 'Dr. Priya Mehta is known for her exceptional care and dedication.\n she is pecialise in diagnosing, treating and preventing diseases that mainly affect the heart and blood vessels. ',
      reviews: [
        Review(
          reviewerName: "Dr. Priya Mehta",
          reviewDate: "2 days ago",
          reviewText: " Very good doctor and kind at heart. Gives maximum time to hear patient views",
          reviewerImage: "assets/images/D3.jpg",
        ),
        Review(
          reviewerName: "Dr. Priya Mehta",
          reviewDate: "4 days ago",
          reviewText: "I trust Dr. Priya with my heart health.",
          reviewerImage: "assets/images/D3.jpg",
        ),
      ],
    ),
    Doctor(
      name: "Dr. Rakesh Singh",
      specialty: "Dermatologist",
      imagePath: "assets/images/D1.jpg",
      rating: 4.7, 
      about: 'Dr. Rakesh Singh specializes Exceptional dermatologist with years of experience diagnosing and treating a variety of skin conditions.\n  Excel at being kind and understanding to patients. Proficient in a variety of treatments, \n including laser therapy and injecting.',
      reviews: [
        Review(
          reviewerName: "Dr. Rakesh Singh",
          reviewDate: "3 days ago",
          reviewText: "Dr. Rakesh is very attentive and skilled.",
          reviewerImage: "assets/images/D1.jpg",
        ),
      ],
    ),
    Doctor(
      name: "Dr. Kavita Gupta",
      specialty: "Neurologist",
      imagePath: "assets/images/D5.jpg",
      rating: 4.6, 
      about: 'Dr. Kavita Gupta has extensive experience in neurology.',
      reviews: [
        Review(
          reviewerName:  "Dr. Kavita Gupta",
          reviewDate: "5 days ago",
          reviewText: "Dr. Kavita is  highly trained clinicians capable of diagnosing complex conditions \n through detailed history and physical examination, including testing of\n mental status, vision, speech, strength, sensation, coordination, reflexes, and gait.",
          reviewerImage: "assets/images/D5.jpg",
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage("assets/images/D1.jpg"),
                          ),
                          SizedBox(width: 15),
                          Text(
                            "Hi, User",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 1,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Icon(
                                Icons.notifications_outlined,
                                size: 20,
                                color: Colors.purple,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20, left: 15, right: 15),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 3,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here..",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "Symptoms",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 100,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: catNames.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 15,
                              ),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: catIcons[index],
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              catNames[index],
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "Our Best Doctors",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ),
                Container(
                  height: 340,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: doctors.length,
                    itemBuilder: (context, index) {
                      final doctor = doctors[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DoctorScreen(doctor: doctor),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  doctor.imagePath,
                                  height: 200,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    doctor.name,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                  ),
                                  Text(
                                    doctor.specialty,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        doctor.rating.toString(),
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black.withOpacity(0.6),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
