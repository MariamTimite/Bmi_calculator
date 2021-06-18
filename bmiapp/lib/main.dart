import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reutilisable.dart';
import 'contenantIcon.dart';

const activeCardColor = Color(0xFF1D1E33);
const largeurDuContainerDuBas = 80.0;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my tittle',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 15,
            title: Text('Calculatrice BMI'),
            backgroundColor: Color(0xFF0A0E21)),
        body: Column(
        
          children: [
            Expanded(
              child: Row
                
              (
                
                children: [
                Expanded(
                  child: FlatButton(
       onPressed: (){},

       {



       }

                  ),
                  
                  
                  ),
                Expanded(
                  child: 
                  Reutilisable
                  (colour: activeCardColor,
                   cardChild: ContenantIcon(
                     icon: FontAwesomeIcons.venus,
                     label:'FEMININ'
                   )
                  ),
                 
                  )
              ]),
            ),
            Expanded(child: Reutilisable(colour: activeCardColor)),
            Expanded(
              child: Row(children: [
                Expanded(
                    child: Reutilisable(
                  colour: activeCardColor,
                )),
                Expanded(child: Reutilisable(colour: activeCardColor))
              ]),
            ),
            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: largeurDuContainerDuBas,
            )
          ],
        ));
  }
}

class FlatButton extends StatelessWidget {
  const FlatButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Reutilisable(
      colour: activeCardColor,
      
        cardChild: ContenantIcon(
          icon: FontAwesomeIcons.mars, 
          label: 'MASCULIN')
        );
  }
}



