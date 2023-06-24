import 'package:bayani/screens/maham-youm.dart';
import 'package:bayani/screens/talbat-mofaqa.dart';
import 'package:bayani/widget/newCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hodor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<DataRow> _rows = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _rows = List.generate(
        6,
        (index) => DataRow(cells: [
              DataCell(Text('Row ${index + 1} Column 1')),
              DataCell(Text('Row ${index + 1} Column 2')),
              DataCell(Text('Row ${index + 1} Column 3')),
            ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NewsCard(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      primary: Colors.white,
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>TalabatMofqa()));
                    },
                    child: Text(
                      "طلبات الموافقه",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90)),
                      primary: Colors.white,
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>MahamYoum()));
                    },
                    child: Text(
                      "المهام اليوميه",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90)),
                      primary: Colors.white,
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>HodorScreen()));
                    },
                    child: Text(
                      "الحضور و الانصراف",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          /*SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 6),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(90)),
                                    primary: Colors.white,
                                    backgroundColor: Colors.green,
                                  ),
                                  onPressed: () {
                                    //Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeLayout()));
                                  },
                                  child: Text(
                                    "تسجيل الدخول",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              SizedBox(
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(90)),
                                    primary: Colors.white,
                                    backgroundColor: Colors.red,
                                  ),
                                  onPressed: () {
                                    //Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeLayout()));
                                  },
                                  child: Text(
                                    "تسجيل انصراف",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "حاضر منذ",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "04:30",
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "جدول الحضور والانصراف لاخر 5 ايام",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SingleChildScrollView(
                            //scrollDirection: Axis.vertical,
                            child: DataTable(
                              columns: [
                                DataColumn(label: Text('اليوم',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
                                DataColumn(label: Text('وقت الحضور',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
                                DataColumn(label: Text('وقت الانصراف',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
                                DataColumn(label: Text('ساعات',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
                                DataColumn(label: Text('التاريخ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
                              ],
                              rows:  [
                                DataRow(cells: [
                                  DataCell(Text('السبت')),
                                  DataCell(Text('الاحد')),
                                  DataCell(Text('الاتنين')),
                                  DataCell(Text('الثلاثاء')),
                                  DataCell(Text('الاربعاء')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('الاحد')),
                                  DataCell(Text('صف 2 عمود 2')),
                                  DataCell(Text('صف 2 عمود 3')),
                                  DataCell(Text('صف 2 عمود 4')),
                                  DataCell(Text('صف 2 عمود 5')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('الاتنين')),
                                  DataCell(Text('صف 3 عمود 2')),
                                  DataCell(Text('صف 3 عمود 3')),
                                  DataCell(Text('صف 3 عمود 4')),
                                  DataCell(Text('صف 3 عمود 5')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('الثلاثاء')),
                                  DataCell(Text('صف 4 عمود 2')),
                                  DataCell(Text('صف 4 عمود 3')),
                                  DataCell(Text('صف 4 عمود 4')),
                                  DataCell(Text('صف 4 عمود 5')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('الاربعاء')),
                                  DataCell(Text('صف 5 عمود 2')),
                                  DataCell(Text('صف 5 عمود 3')),
                                  DataCell(Text('صف 5 عمود 4')),
                                  DataCell(Text('صف 5 عمود 5')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('الخميس')),
                                  DataCell(Text('صف 6 عمود 2')),
                                  DataCell(Text('صف 6 عمود 3')),
                                  DataCell(Text('صف 6 عمود 4')),
                                  DataCell(Text('صف 6 عمود 5')),
                                ]),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}
