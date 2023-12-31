import 'package:flutter/material.dart';

class MyButton extends StatefulWidget{
    @override
    _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State <MyButton>{
    String flutterText="";
    int index = 0;
    List<String> collections = ['Hola', 'Daniela', 'Ya', 'Vamonos'];

    void onPressButton(){
        setState((){
            flutterText = collections[index];
            index = index < 3 ? index +1 : 0;
        });
    }

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: Text("Stateful Widget"),
            ),
            body: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center, 
                        children: <Widget>[
                            Text(
                                flutterText,
                                style: TextStyle(
                                    fontSize: 40.0
                                )),
                            Padding(padding: EdgeInsets.all(10.0),),
                            ElevatedButton(
                                child: Text("Actualizar", style: TextStyle(color: Colors.white),),
                                onPressed: onPressButton,
                            )
                        ],
                    )
                ),
            )
        );
    }
}