part of 'account_bloc.dart';

abstract class AccountState extends Equatable {
  const AccountState();
}

class AccountInitial extends AccountState {
  @override
  List<Object> get props => [];
}

class StartAccntState extends AccountState {
  @override
  List<Object> get props => [];

}class SucessAccntState extends AccountState {



  @override
  List<Object> get props => [];

}
