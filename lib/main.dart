



import 'package:flutter/material.dart';

void main()=>runApp(EmployeeApp());

class EmployeeApp extends StatelessWidget {
  TextEditingController getEmployeeName=TextEditingController();
  TextEditingController getEmployeeCode=TextEditingController();
  TextEditingController getEmployeeDesignation=TextEditingController();
  TextEditingController getEmployeeSalary=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(" Employee App"),
        ),
        body: Container(
          padding: EdgeInsets.only(left:35.5,top: 30.0,right: 35.5,bottom: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

              TextField(
                controller: getEmployeeName,
                decoration: InputDecoration(
                  hintText: " employee name ",
                  border: OutlineInputBorder(
                  ),
                ),
              ),
              SizedBox(height: 10.5),

              TextField(
                controller: getEmployeeCode,
                decoration: InputDecoration(
                  hintText: "employee code",
                  border:OutlineInputBorder()
                ),
              ),

              SizedBox(height: 10.5),

              TextField(
                controller: getEmployeeDesignation,
                decoration: InputDecoration(
                  hintText: "employee designation",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10.5),

              TextField(
                controller: getEmployeeSalary,
                decoration: InputDecoration(
                  hintText: "employee salary",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10.5),

              RaisedButton(
                onPressed: (){
                String getEmpName=getEmployeeName.text;
                String getEmpCode=getEmployeeCode.text;
                String getEmpDesignation=getEmployeeDesignation.text;
                String getEmpSalary=getEmployeeSalary.text;

                print(getEmpName);
                print(getEmpCode);
                print(getEmpDesignation);
                print(getEmpSalary);

              },
                color: Colors.greenAccent
                ,
              child: Text(" SUBMIT"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
