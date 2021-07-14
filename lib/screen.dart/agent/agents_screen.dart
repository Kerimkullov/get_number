import 'package:flutter/material.dart';
import 'package:get_number/screen.dart/get_number_screen.dart/get_number_screen.dart';

class AgentsScreen extends StatefulWidget {
  AgentsScreen({Key? key}) : super(key: key);

  @override
  _AgentsScreenState createState() => _AgentsScreenState();
}

class _AgentsScreenState extends State<AgentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Агенты")),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) => Column(
                  children: [
                    SizedBox(height: 16),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)),
                      child: ListTile(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GetNumberScreen())),
                        leading: Icon(
                          Icons.person_rounded,
                          size: 28,
                          color: Colors.black,
                        ),
                        title: Text("Agent $index",
                            style: TextStyle(fontSize: 20)),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.edit,
                              size: 28,
                              color: Colors.black,
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.delete,
                              size: 28,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
