import 'package:flutter/material.dart';

class TrainingDay extends StatefulWidget {
  String trainingName;
  int trainingMinutes;
  int trainingK;
  int trainingExN;
  String trainingImage;
  TrainingDay(
      {super.key,
      required this.trainingName,
      required this.trainingMinutes,
      required this.trainingK,
      required this.trainingExN,
      required this.trainingImage});

  @override
  State<TrainingDay> createState() => _TrainingDayState();
}

class _TrainingDayState extends State<TrainingDay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.3,
      color: const Color(0xFFB3A0FF),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.78,
          height: MediaQuery.of(context).size.height * 0.23,
          decoration: BoxDecoration(
            // image: DecorationImage(image: ),
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.height * 0.03,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Color(0xFFE2F163),
                    ),
                    child: const Center(
                      child: Text("Training of the Day"),
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.78,
                height: MediaQuery.of(context).size.height * 0.045,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Color(0x212020E5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              widget.trainingName,
                              style: const TextStyle(color: Color(0xFFE2F163)),
                            ),
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                "${widget.trainingMinutes} minutes",
                                style: const TextStyle(fontSize: 10),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "${widget.trainingK} kcal",
                                style: const TextStyle(fontSize: 10),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                "${widget.trainingExN} Exercises",
                                style: const TextStyle(fontSize: 10),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.star))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
