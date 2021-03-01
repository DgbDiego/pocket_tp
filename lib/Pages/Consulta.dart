import 'dart:convert';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pocket_tp/bloc/account_bloc.dart';
import 'package:pocket_tp/constants.dart';
import 'package:pocket_tp/model/accountData.dart';
import 'package:pocket_tp/services/getAccount_service.dart';
import 'package:pocket_tp/services/updateAccountBillInf_service.dart';

class Consulta extends StatefulWidget {

  Consulta({this.data});

  var data;

  @override
  _ConsultaState createState() => _ConsultaState();
}

class _ConsultaState extends State<Consulta>{



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  AccountData acctData = new AccountData();

  Map<dynamic, dynamic> actAccountData;

  final _isValidController = TextEditingController();
  final _isActiveController = TextEditingController();
  final _accntNameController = TextEditingController();
  final _accntContactNameController = TextEditingController();
  final _accntEmailController = TextEditingController();
  final _accntCellPhnNumController = TextEditingController();
  final _accntMainPhNumController = TextEditingController();
  final _accntProfileIdController = TextEditingController();
  final _accntIdController = TextEditingController();
  final _accntBusNumController = TextEditingController();
  final _countryDocNumberController = TextEditingController();
  final _countryProfileController = TextEditingController();
  final _REFFERED_BY_ACCOUNTController = TextEditingController();
  final _bankAccountNumberController = TextEditingController();
  final _bankAccountDigitController = TextEditingController();
  final _bankRoutingNumberController = TextEditingController();
  final _bankCodeController = TextEditingController();
  final _bankNameController = TextEditingController();
  final _currencyController = TextEditingController();
  final _currencySymbolController = TextEditingController();
  final _docRequiredController = TextEditingController();
  final _biRequiredController = TextEditingController();
  final _authorizationController = TextEditingController();
  final _avaliableBalanceController = TextEditingController();
  final _addressController = TextEditingController();
  final _addressComplementController = TextEditingController();
  final _addressNumberController = TextEditingController();
  final _cityController = TextEditingController();
  final _stateController = TextEditingController();
  final _countryController = TextEditingController();
  final _neighborhoodController = TextEditingController();
  final _postalCodeController = TextEditingController();
  final _birthDateController = TextEditingController();
  final _generalRecordController = TextEditingController();
  final _accntTypeController = TextEditingController();
  final _languageController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    setState(() {

      actAccountData = json.decode(widget.data);

      _accntIdController.text = actAccountData['Data']['AccntId'];
      _accntContactNameController.text = actAccountData['Data']['AccntContactName'];
      _addressController.text = actAccountData['Data']['Address'];
      _addressNumberController.text = actAccountData['Data']['AddressNumber'];
      _addressComplementController.text = actAccountData['Data']['AddressComplement'];
      _neighborhoodController.text = actAccountData['Data']['Neighborhood'];
      _cityController.text = actAccountData['Data']['City'];
      _stateController.text = actAccountData['Data']['State'];
      _countryController.text = actAccountData['Data']['Country'];
      _postalCodeController.text = actAccountData['Data']['PostalCode'];

      print ("RODOU DATA");

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
                      vertical: 20.0,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                              "Olá ${_accntContactNameController.text}, tudo bem?",
                            style: TextStyle(fontSize: 28),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                        ),

                        Card(
                            margin: EdgeInsets.all(5),
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    controller: _addressController,
                                    cursorColor: Colors.black12,
                                    decoration: InputDecoration(
                                      labelText: "Endereço",
                                      contentPadding: EdgeInsets.only(left: 10),
                                      hintText: "Endereço",
                                      labelStyle: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    controller: _addressNumberController,
                                    cursorColor: Colors.black12,
                                    decoration: InputDecoration(
                                      labelText: "Número",
                                      contentPadding: EdgeInsets.only(left: 10),
                                      hintText: "Número",
                                      labelStyle: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    controller: _addressComplementController,
                                    cursorColor: Colors.black12,
                                    decoration: InputDecoration(
                                      labelText: "Complemento",
                                      contentPadding: EdgeInsets.only(left: 10),
                                      hintText: "Complemento",
                                      labelStyle: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    controller: _neighborhoodController,
                                    cursorColor: Colors.black12,
                                    decoration: InputDecoration(
                                      labelText: "Bairro",
                                      contentPadding: EdgeInsets.only(left: 10),
                                      hintText: "Bairro",
                                      labelStyle: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    controller: _cityController,
                                    cursorColor: Colors.black12,
                                    decoration: InputDecoration(
                                      labelText: "Cidade",
                                      contentPadding: EdgeInsets.only(left: 10),
                                      hintText: "Cidade",
                                      labelStyle: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    controller: _stateController,
                                    cursorColor: Colors.black12,
                                    decoration: InputDecoration(
                                      labelText: "Estado",
                                      contentPadding: EdgeInsets.only(left: 10),
                                      hintText: "Estado",
                                      labelStyle: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    controller: _countryController,
                                    cursorColor: Colors.black12,
                                    decoration: InputDecoration(
                                      labelText: "País",
                                      contentPadding: EdgeInsets.only(left: 10),
                                      hintText: "País",
                                      labelStyle: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    controller: _postalCodeController,
                                    cursorColor: Colors.black12,
                                    decoration: InputDecoration(
                                      labelText: "CEP",
                                      contentPadding: EdgeInsets.only(left: 10),
                                      hintText: "CEP",
                                      labelStyle: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),


                              ],
                            )
                        ),

                        Padding(
                          padding: EdgeInsets.all(12),
                          child: FlatButton(
                            color: Colors.white,
                            child: Text("Salvar"),
                            onPressed: () async {

                              Map<dynamic, dynamic> actResponse;

                              String retorno = null;
                              retorno = await UpdateAccountBillInf().post_updateAccountBillInf(
                                  _accntIdController.text,
                                  _addressController.text,
                                  _addressComplementController.text,
                                  _addressNumberController.text,
                                  _neighborhoodController.text,
                                  _cityController.text,
                                  _stateController.text,
                                  _postalCodeController.text,
                                  _countryController.text
                              );

                              actResponse = json.decode(retorno);


                              if (actResponse["Errors"] == false){
                                setState(() {
                                  showDialog(
                                      context: context,
                                      builder: (context){
                                        return AlertDialog(
                                          title: Text("Atualização de dados"),
                                          content: Text(
                                            actResponse["Data"],
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

                              } else {

                                setState(() {
                                  showDialog(
                                      context: context,
                                      builder: (context){
                                        return AlertDialog(
                                          title: Text("Atualização de dados"),
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

                              // FocusScope.of(context).requestFocus(FocusNode());
                              // blocAccount.inAutoValidate.add(true);
                              //
                              // bool sucesso = await blocAccount.salvarAccount();
                              //
                              // if (sucesso) {
                              //
                              // }
                            },

                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

        )

    );


    // TODO: implement build
    throw UnimplementedError();
  }


}