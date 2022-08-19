import 'package:airplaneticket/screens/ticket_view.dart';
import 'package:airplaneticket/utils/styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(children: [
        Container(
          padding: EdgeInsets.only(left: 18, right: 18),
          child: Column(
            children: [
              const Gap(50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Good Morning',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black45,
                              fontSize: 17,
                            )),
                        Gap(5),
                        Text(
                          'Book Tickets',
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage('lib/assets/images/plane.png')),
                    ),
                  ),
                ],
              ),
              const Gap(30),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xFFF4F6FD),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Colors.lightGreen,
                      ),
                      const Gap(5),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),
              ), // Search Bar
              const Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Yaklaşan Uçuşlar', style: Styles.headLineStyle3),
                  InkWell(
                    onTap: () {
                      print('Basıldı');
                    },
                    child: Text(
                      'View All',
                      style: Styles.textStyle.copyWith(color: Colors.blue),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        const Gap(20),
        SingleChildScrollView(
          padding: EdgeInsets.only(left: 20),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              TicketViewBox(),
              TicketViewBox(),
            ],
          ),
        )
      ]),
    );
  }
}
