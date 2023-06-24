import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MahamYoum extends StatelessWidget {
  const MahamYoum({Key? key}) : super(key: key);

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
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 6),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "المهام المتبقيه",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    width: 80,
                                  ),
                                  Text(
                                    "المهام المنتهيه",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "3",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    width: 150,
                                  ),
                                  Text(
                                    "3",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          //scrollDirection: Axis.vertical,
                          child: DataTable(
                            columns: [
                              DataColumn(label: Text('المهمه',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
                              DataColumn(label: Text('التاريخ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
                              DataColumn(label: Text('الوقت المتبقي',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
                              DataColumn(label: Text('الاجراء',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
                              DataColumn(label: Text('الحاله',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
                            ],
                            rows:  [
                              DataRow(cells: [
                                DataCell(Text('مهمه 1')),
                                DataCell(Text('01/01/23')),
                                DataCell(Text('-')),
                                DataCell(Icon(Icons.stop_circle_sharp,color: Colors.red,)),
                                DataCell(Text('تم التسليم')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('مهمه 2')),
                                DataCell(Text('02/01/23')),
                                DataCell(Text('-')),
                                DataCell(Icon(Icons.stop_circle_sharp,color: Colors.red,)),
                                DataCell(Text('تم التسليم')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('مهمه 3')),
                                DataCell(Text('03/01/23')),
                                DataCell(Text('-')),
                                DataCell(Icon(Icons.stop_circle_sharp,color: Colors.red,)),
                                DataCell(Text('تم التسليم')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('مهمه 4')),
                                DataCell(Text('04/01/23')),
                                DataCell(Text('يوم 1')),
                                DataCell(Icon(Icons.not_started_outlined,color: Colors.green,)),
                                DataCell(Text('بالانتظار')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('مهمه 5')),
                                DataCell(Text('05/01/23')),
                                DataCell(Text('يوم 2')),
                                DataCell(Icon(Icons.not_started_outlined,color: Colors.green,)),
                                DataCell(Text('بالانتظار')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('مهمه 6')),
                                DataCell(Text('06/01/23')),
                                DataCell(Text('يوم 3')),
                                DataCell(Icon(Icons.not_started_outlined,color: Colors.green,)),
                                DataCell(Text('بالانتظار')),
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
