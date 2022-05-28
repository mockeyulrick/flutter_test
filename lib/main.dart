import 'package:flutter/material.dart';
import './question.dart';
import './reponses.dart';
//void main() {
//  runApp(MyApp());
//}
void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  State <StatefulWidget> createState(){
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _reponseQuestion(){
    setState((){
      _questionIndex = _questionIndex+1 ;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context){
    var _questions =[
      {'questionText':'Votre Couleur préférée',
      'reponse': ['Orange','Bleu','Vert','rouge'],
      },
      {'questionText':'Votre Animal préféré',
      'reponse': ['Chien','Chat','Lapin','Serpent'],
      },
      {'questionText':'Ta marque de Vetement préféré',
      'reponse':['Gucci','Kiabi','Louis Vuitton','Prada'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My app Bar'),),
        body: Column(children:[
          Question(
            _questions[_questionIndex]['questionText'] as String,
          ),
          ...(_questions[_questionIndex]['reponse']as List<String>)
              .map((reponse){
            return  Reponse(_reponseQuestion,reponse);
          }).toList()
        ]
      ,),
      ),
    );
  }
}