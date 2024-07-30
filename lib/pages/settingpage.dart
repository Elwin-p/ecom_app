import 'package:flutter/material.dart';

class Settingpage extends StatefulWidget {
  const Settingpage({super.key});

  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            colors: [
              Color.fromARGB(255, 243, 111, 4),
              Color.fromARGB(255, 235, 121, 28),
              const Color.fromRGBO(255, 152, 0, 1),
              Color.fromARGB(255, 225, 100, 1)
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.all(2),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 1),
                  Text(
                    "#GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 7,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 1),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Text(
                          'Settings',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                          'Personal Information',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                         ),
                          TextButton(
                              onPressed: () {},
                              child: Text('Change',style: TextStyle(color: Colors.red),),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),

                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('NAME', style: TextStyle(fontSize: 10),),
                              SizedBox(height: 2,),
                              Text('Elwin P', style: TextStyle(fontSize: 18),)
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('DOB', style: TextStyle(fontSize: 10),),
                              SizedBox(height: 2,),
                              Text('19/07/1999', style: TextStyle(fontSize: 18),)
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                         ),
                          TextButton(
                              onPressed: () {},
                              child: Text('Change',style: TextStyle(color: Colors.red),),
                            ),
                          ],
                        ),

                        
                        SizedBox(height: 10),
                        
                          
                            Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('PASSWORD', style: TextStyle(fontSize: 10),),
                              SizedBox(height: 2,),
                              Text('*********', style: TextStyle(fontSize: 18),)
                            ],
                          ),
                        ),
                            SizedBox(width: 10),
                            
                          
                        
                        SizedBox(height: 20),

                        Text(
                          'Notifications',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        NotificationSwitch(
                          title: 'Sales',
                          value: true,
                        ),
                        NotificationSwitch(
                          title: 'New arrivals',
                          value: false,
                        ),
                        NotificationSwitch(
                          title: 'Delivery status changes',
                          value: false,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationSwitch extends StatefulWidget {
  final String title;
  final bool value;

  NotificationSwitch({required this.title, required this.value});

  @override
  _NotificationSwitchState createState() => _NotificationSwitchState();
}

class _NotificationSwitchState extends State<NotificationSwitch> {
  bool _value = false;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(widget.title),
      value: _value,
      onChanged: (bool value) {
        setState(() {
          _value = value;
        });
      },
    );
  }
}

void main() => runApp(MaterialApp(home: Settingpage()));
