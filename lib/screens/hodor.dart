import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HodorScreen extends StatefulWidget {
  const HodorScreen({Key? key}) : super(key: key);

  @override
  State<HodorScreen> createState() => _HodorScreenState();
}

class _HodorScreenState extends State<HodorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                              DataCell(Text('08:00')),
                              DataCell(Text('05:00')),
                              DataCell(Text('9')),
                              DataCell(Text('01/01/23')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('الاحد')),
                              DataCell(Text('08:00')),
                              DataCell(Text('05:00')),
                              DataCell(Text('9')),
                              DataCell(Text('02/01/23')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('الاتنين')),
                              DataCell(Text('08:00')),
                              DataCell(Text('05:00')),
                              DataCell(Text('9')),
                              DataCell(Text('03/01/23')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('الثلاثاء')),
                              DataCell(Text('08:00')),
                              DataCell(Text('05:00')),
                              DataCell(Text('9')),
                              DataCell(Text('04/01/23')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('الاربعاء')),
                              DataCell(Text('08:00')),
                              DataCell(Text('05:00')),
                              DataCell(Text('9')),
                              DataCell(Text('05/01/23')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('الخميس')),
                              DataCell(Text('08:00')),
                              DataCell(Text('05:00')),
                              DataCell(Text('9')),
                              DataCell(Text('06/01/23')),
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
      ),
    );
  }
}
