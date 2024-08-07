import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 198, 148, 221),
        centerTitle: true,
        title: Text(
         "Login Screen",
          style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 61, 128, 74)),
       ),
      ),
      body: SingleChildScrollView( //scroll page
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           Image.asset(
            "assets/lavenderPic.png",
             height: 300,
              width: 300,            
             
             ),
             SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Enter username"),
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Enter Password"),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 191, 109, 230),
                      ),
                      child: const Row( // عشان اكتب من اليمين لليسار
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.login,
                            color: Color.fromARGB(255, 29, 73, 38),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "Login",
                            style: TextStyle(
                              color: Color.fromARGB(255, 29, 73, 38),
                              fontSize: 25,
                              fontWeight: FontWeight.bold, // Set the font weight to bold
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}