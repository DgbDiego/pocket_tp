import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:pocket_tp/model/accountData.dart';
import 'package:rxdart/rxdart.dart';


class AccountBloc implements BlocBase {

  AccountBloc accountBloc = AccountBloc();

  var _autoValidateController = BehaviorSubject<bool>.seeded(false);

  Stream<bool> get outAutoValidate => _autoValidateController.stream;

  Sink<bool> get inAutoValidate => _autoValidateController.sink;

  final _statusTela = BehaviorSubject<String>();

  Stream<String> get outStatusTela => _statusTela.stream;

  Sink<String> get sinkStatusTela => _statusTela.sink;

  final _errorController = BehaviorSubject<String>();

  Stream<String> get outError => _errorController.stream;

  Sink<String> get sinkError => _errorController.sink;

  final _accntNotFoundController = BehaviorSubject<String>();

  Stream<String> get outAccntNotFound => _accntNotFoundController.stream;

  Sink<String> get sinkAccntNotFound => _accntNotFoundController.sink;

  final _dataController = BehaviorSubject<AccountData>();

  Stream<AccountData> get  outData => _dataController.stream;

  Sink<AccountData> get sinkData => _dataController.sink;




  @override
  void addListener(void Function() listener) {
    // TODO: implement addListener
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  // TODO: implement hasListeners
  bool get hasListeners => throw UnimplementedError();

  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
  }

  @override
  void removeListener(void Function() listener) {
    // TODO: implement removeListener
  }

  Future<bool> salvarAccount() async {



    accountBloc.salvarFormularioAccount();


  }

  void salvarFormularioAccount({@required formularioAccount}) async {
    final AccountBloc blocAccount =
        BlocProvider.tag('accountGlobal').getBloc<AccountBloc>();

  }



}