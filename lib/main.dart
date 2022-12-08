import 'package:flutter/material.dart';
import 'package:modelclass2/operations.dart';
import 'modelcls.dart';

void main() {
  runApp(MaterialApp(home: const MyApp(),));
}
Operation op=new Operation();
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 4/2,
    ),
        itemCount: op.getlen(),
        itemBuilder: (context,int i){
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              color: op.cn[i].c,
            ),
              child: Center(
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icon(op.icons(),color: op.iconcolor(),size: 50,),
                    Text(op.cn[i].name,style: TextStyle(fontSize: 20,),),
                  ],
                ),
              ),
            ),
          );
        }),);
  }
}



