import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:equatable/equatable.dart';
import 'package:pocket_tp/model/accountData.dart';
import 'package:rxdart/rxdart.dart';

part 'account_event.dart';
part 'account_state.dart';

class AccountBloc implements BlocBase {
  final _statusTela = BehaviorSubject<String>();

  Stream<String> get outStatusTela => _statusTela.stream;

  Sink<String> get sinkStatusTela => _statusTela.sink;

  final _errorController = BehaviorSubject<String>();

  Stream<String> get outError => _errorController.stream;

  Sink<String> get sinkError => _errorController.sink;

  final _accntNotFoundController = BehaviorSubject<String>();

  Stream<String> get outAccntNotFound => _accntNotFoundController.stream;

  Sink<String> get sinkAccntNotFound => _accntNotFoundController.sink;


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



}