import 'dart:convert';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pocket_tp/Pages/Consulta.dart';
import 'package:pocket_tp/bloc/account_bloc.dart';
import 'package:pocket_tp/constants.dart';
import 'package:pocket_tp/services/getAccount_service.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{

  @override
  void dispose(){

    super.dispose();
  }

  // final blocAccount = BlocProvider.tag('accountGlobal').getBloc<AccountBloc>();

  TextEditingController _docNumberController = TextEditingController();
  TextEditingController _accntTypeController = TextEditingController();
  TextEditingController _activationKeyController = TextEditingController();
  String dropdownValue = 'User';

  GetAccountService _accntService = GetAccountService();

  @override
  Widget build(BuildContext context) {

    setState(() {
      _accntTypeController.text = dropdownValue;
    });

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        title: Image.asset("imagens/logo_pocket.png", width: 90,),

      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white,
                            Colors.black12
                          ],
                          stops: [0.1, 0.9]
                      )
                  )
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: MediaQuery.of(context).size.width/1.5,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Card(
                        margin: EdgeInsets.all(10),
                        color: Colors.white,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: _docNumberController,
                          cursorColor: Colors.black12,
                          decoration: InputDecoration(
                            labelText: "CPF",
                            contentPadding: EdgeInsets.only(left: 10),
                            hintText: "",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        color: Colors.white,
                        child: Row(

                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Text("   Tipo de Conta"),
                            SizedBox(
                              width: 50,
                            ),


                            DropdownButton<String>(

                              value: dropdownValue,
                              icon: Icon(Icons.keyboard_arrow_down_rounded),
                              iconSize: 22,
                              elevation: 16,
                              onChanged: (String newValue) {
                                setState(() {
                                  dropdownValue = newValue;
                                  _accntTypeController.text = newValue;
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
                          ],
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        color: Colors.white,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: _activationKeyController,
                          cursorColor: Colors.black12,
                          decoration: InputDecoration(
                            labelText: "Chave de Acesso",
                            contentPadding: EdgeInsets.only(left: 10),
                            hintText: "",
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: FlatButton(
                          color: Colors.white,
                          child: Text("ACESSAR"),
                          onPressed: () async {
                            String retorno = null;
                            retorno = await GetAccountService().post_getAccount(
                                _docNumberController.text,
                                _accntTypeController.text,
                                _activationKeyController.text);

                            Map<dynamic, dynamic> actResponse;

                            actResponse = json.decode(retorno);

                            if (actResponse["Errors"] == false
                                && _activationKeyController.text.length > 15
                                && _docNumberController.text.length > 10
                            ) {
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) =>
                                        Consulta(data: retorno,)));
                              });
                            }
                            else if (
                            _docNumberController.text.length < 10
                            ){

                              setState(() {
                                showDialog(
                                    context: context,
                                    builder: (context){
                                      return AlertDialog(
                                        title: Text("Autenticação de Usuário"),
                                        content: Text(
                                          "Campo CPF é obrigatório",
                                        ),
                                        actions: <Widget>[
                                          FlatButton(
                                              onPressed: () => Navigator.pop(context),
                                              child: Text("OK")
                                          )
                                        ],
                                      );
                                    }
                                );
                              });

                            }
                             else if (
                            _activationKeyController.text.length < 15
                            ){

                              setState(() {
                                showDialog(
                                    context: context,
                                    builder: (context){
                                      return AlertDialog(
                                        title: Text("Autenticação de Usuário"),
                                        content: Text(
                                          "Campo Chave de Acesso é obrigatório",
                                        ),
                                        actions: <Widget>[
                                          FlatButton(
                                              onPressed: () => Navigator.pop(context),
                                              child: Text("OK")
                                          )
                                        ],
                                      );
                                    }
                                );
                              });

                            }
                             else {
                              {

                                setState(() {
                                  showDialog(
                                      context: context,
                                      builder: (context){
                                        return AlertDialog(
                                          title: Text("Autenticação de Usuário"),
                                          content: Text(
                                            actResponse["ErrorMessage"].toString(),
                                          ),
                                          actions: <Widget>[
                                            FlatButton(
                                                onPressed: () => Navigator.pop(context),
                                                child: Text("OK")
                                            )
                                          ],
                                        );
                                      }
                                  );
                                });

                              }
                            }

                          },

                        ),
                      ),
                    ],
                  )
                ),
              )
            ],
          ),
        ),

      )

    );


    // TODO: implement build
    // throw UnimplementedError();
  }


noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);


}