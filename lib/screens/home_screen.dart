import 'package:flutter/material.dart';
import 'package:workout_app/widgets/circular_tabs.dart';
import 'package:workout_app/widgets/training_day.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Title(
              color: const Color(0xFF212020),
              child: const Text(
                "Workout",
                style: TextStyle(color: Color(0xFF896CFE)),
              )),
          bottom: TabBar(
            tabs: [
              CircularTabs(tabName: "Beginner"),
              CircularTabs(
                tabName: "Intermediate",
              ),
              CircularTabs(
                tabName: "Advance",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          // Center(child: Text("This is Beginner Tab's view"),),
          ListView(
            children: [
              TrainingDay(
                  trainingName: "Functional Training",
                  trainingMinutes: 45,
                  trainingK: 1450,
                  trainingExN: 5,
                  trainingImage: "Image/path/"),
              const Padding(
                padding: EdgeInsets.only(left: 25, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Let's go Beginner", style: TextStyle(fontSize: 20, color: Color(0xFFE2F163)),),
                    Text("Explore different workout style", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: ListTile(
                              title: Text("Beginner Workout ${index + 1}",),
                            subtitle: const Text(""),
                            trailing: const Image(image: AssetImage("")),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              // SizedBox(height: 5,)
            ],
          ),
          ListView(
            children: [
              TrainingDay(
                  trainingName: "Functional Training",
                  trainingMinutes: 45,
                  trainingK: 1450,
                  trainingExN: 5,
                  trainingImage: "Image/path/"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.75,
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        title: Text("Intermediate Workout ${index + 1}"));
                  },
                ),
              ),
              // SizedBox(height: 5,)
            ],
          ),
          ListView(
            children: [
              TrainingDay(
                  trainingName: "Functional Training",
                  trainingMinutes: 45,
                  trainingK: 1450,
                  trainingExN: 5,
                  trainingImage: "Image/path/"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.75,
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        title: Text("Advance Workout ${index + 1}"));
                  },
                ),
              ),
              // SizedBox(height: 5,)
            ],
          ),
        ]),
      ),
    );
  }
}
