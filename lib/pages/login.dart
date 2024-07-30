import 'package:flutter/material.dart';


class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
  
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.center,

          colors: 
        [
          Color.fromARGB(255, 243, 111, 4),
          Color.fromARGB(255, 235, 121, 28),
            const Color.fromRGBO(255, 152, 0, 1),
            Color.fromARGB(255, 225, 100, 1)
        
        ])
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 1,),
            Padding(
              padding: EdgeInsets.all(2),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 1,),
                 Text("#GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY #GET SASSY",style: TextStyle(color: Colors.white,fontSize: 7,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
                 SizedBox(height: 39,),
                 Text("Login",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
                 SizedBox(height: 1,),
                 Text("Welcome Back!",style: TextStyle(color: Colors.white,fontSize: 20),),

                ],
              ),
            ),
            SizedBox(height: 30,),
            Expanded(
              child:Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))

                ),
                child:Column(
                  children: [
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                                        
                                        decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                      )
                                        ),
                                      ),
                    ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                      )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Positioned(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/Forgotpage');

                    },
                    child: Text('Forgot Password?', style: TextStyle(color: Colors.grey),),
                  )
                  
                  ),
                
                SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/Homepage');
                    },
                   child: Text('LOGIN',style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20),),
                   style: ElevatedButton.styleFrom(
                    backgroundColor:Color.fromARGB(255, 238, 118, 20),
                    foregroundColor:Colors.white
                   ),
                   ),
                   SizedBox(height: 10,),
                   ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/Signinpage');
                    },
                  
                   child: Text('CREATE AN ACC',style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20),),
                   style: ElevatedButton.styleFrom(
                    backgroundColor:Color.fromARGB(255, 238, 118, 20),
                    foregroundColor:Colors.white
                   ),
                   ),
                   SizedBox(height: 20,),
                   Text('Login using', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 18),),
                   SizedBox(height: 20,),
                   Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromARGB(255, 31, 209, 46)
                          ),
                          child: Center(
                            child: Text('Google',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200, fontSize: 20),),
                          ),
                        ),
                      ),
                      SizedBox(width: 30,),
                      Expanded(
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromARGB(255, 45, 170, 228)
                          ),
                          child: Center(
                            child: Text('Facebook',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200, fontSize: 20),),
                          ),
                        ),
                      )
                    ],
                   )
                  ],
                )                
              ),
            )
          ],
        )
        
      ),
    );
  }
}