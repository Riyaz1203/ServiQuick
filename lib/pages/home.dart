// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:serviquick/models/services.dart';
import 'package:serviquick/models/whatsnew.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // ignore: non_constant_identifier_names
  List<ServiceList> Services = [];
  // ignore: non_constant_identifier_names
  List<WhList> Wh = [];

  void getservices() {
    Services = ServiceList.getServices();
  }

  void getWh() {
    Wh = WhList.getWh();
  }

  @override
  Widget build(BuildContext context) {
    getservices();
    getWh();
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: ListView(children: [
        _searchBar(),
        const SizedBox(height: 35),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'What can we help you with?',
                style: TextStyle(
                  color: Color.fromRGBO(27, 29, 33, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            servioffered(),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Whats New',
                style: TextStyle(
                  color: Color.fromRGBO(27, 29, 33, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            whatsnew(),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Recommended Services',
                style: TextStyle(
                  color: Color.fromRGBO(27, 29, 33, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            

          ],
        )
      ]),
    );
  }

  SingleChildScrollView whatsnew() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: Wh
                  .length, // Update itemCount to match the number of items in Wh
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.all(10),
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Center(
                  child: Image.asset(
                    Wh[index]
                        .whhtnew, // Use the image property of the current Wh object
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  SingleChildScrollView servioffered() {
    return SingleChildScrollView(
      child: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 5,
        mainAxisSpacing: 10,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: Services.map((service) {
          return SizedBox(
              height: 50,
              width: 10,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Image.asset(
                      service.icon,
                      height: 50,
                      width: 50,
                    ),
                    Center(
                      child: Text(
                        service.name,
                        style: const TextStyle(fontSize: 10),
                        maxLines: 2, // Set a maximum number of lines
                        // overflow: TextOverflow
                        //     .ellipsis, // Use an ellipsis for overflow
                      ),
                    ),
                  ],
                ),
              ));
        }).toList(),
      ),
    );
  }

  Container _searchBar() {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(top: 0, left: 18, right: 18),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromRGBO(6, 0, 71, 0.073),
            contentPadding: const EdgeInsets.all(15),
            hintText: 'Search service , add location',
            hintStyle: const TextStyle(
                color: Color.fromRGBO(120, 126, 125, 1), fontSize: 15),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset('assets/images/search.svg'),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset('assets/images/filter.svg'),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide.none)),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: SvgPicture.asset('assets/images/applogo.svg', fit: BoxFit.cover),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
    );
  }
}
