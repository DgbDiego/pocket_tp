import 'package:flutter/material.dart';
import 'package:pocket_tp/constants.dart';
import 'package:pocket_tp/services/getAccount_service.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{

  TextEditingController _controllerDocNumber = TextEditingController();
  TextEditingController _controllerAccntType = TextEditingController();
  TextEditingController _controllerActivationKey = TextEditingController();
  String dropdownValue = 'User';


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        title: Image.asset("imagens/logo_pocket.png", width: 90,),

      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(10),
            color: Colors.white,
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: _controllerDocNumber,
              cursorColor: Colors.black12,
              decoration: InputDecoration(

                contentPadding: EdgeInsets.only(left: 10),
                hintText: "CPF",
                labelStyle: TextStyle(color: Colors.green),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            color: Colors.white,
            child: DropdownButton<String>(
              value: dropdownValue,
              icon: Icon(Icons.keyboard_arrow_down_rounded),
              iconSize: 22,
              elevation: 16,
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                  _controllerAccntType.text = newValue;
                });
              },
              items: <String>['User', 'Business']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),


            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            color: Colors.white,
            child: TextFormField(
              keyboardType: TextInputType.text,
              controller: _controllerActivationKey,
              cursorColor: Colors.black12,
              decoration: InputDecoration(

                contentPadding: EdgeInsets.only(left: 10),
                hintText: "Chave de Acesso",
                labelStyle: TextStyle(color: Colors.green),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: FlatButton(
              color: Colors.white,
              child: Text("ACESSAR"),
              onPressed: (){

                print('ABC');

              },

            ),
          ),
        ],
      )

    );


    // TODO: implement build
    // throw UnimplementedError();
  }


noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);


}