import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TalabatMofqa extends StatelessWidget {
  const TalabatMofqa({Key? key}) : super(key: key);

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
                                  "طلبات بالانتظار",
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
                                  "الموافقات المنتهيه",
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
                      SizedBox(
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            primary: Colors.white,
                            backgroundColor: Colors.green,
                          ),
                          onPressed: () {
                            //Navigator.push(context, MaterialPageRoute(builder: (context) =>TalabatMofqa()));
                          },
                          child: Text(
                            "انشاء طلب جديد",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        //scrollDirection: Axis.vertical,
                        child: DataTable(
                          columns: [
                            DataColumn(label: Text('طلبات',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
                            DataColumn(label: Text('تاريخ الطلب',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
                            DataColumn(label: Text('المسئول',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
                            DataColumn(label: Text('الحاله',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
                          ],
                          rows:  [
                            DataRow(cells: [
                              DataCell(Text('اجازه')),
                              DataCell(Text('01/01/23')),
                              DataCell(Text('ADMIN')),
                              DataCell(Text('تمت الموافقه')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('اجازه')),
                              DataCell(Text('02/01/23')),
                              DataCell(Text('ADMIN')),
                              DataCell(Text('تمت الموافقه')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('اجازه')),
                              DataCell(Text('03/01/23')),
                              DataCell(Text('ADMIN')),
                              DataCell(Text('مرفوض')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('استاذن')),
                              DataCell(Text('04/01/23')),
                              DataCell(Text('ADMIN')),
                              DataCell(Text('مرفوض')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('خارج دوام')),
                              DataCell(Text('05/01/23')),
                              DataCell(Text('ADMIN')),
                              DataCell(Text('مرفوض')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('خارج دوام')),
                              DataCell(Text('06/01/23')),
                              DataCell(Text('ADMIN')),
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
