part of 'account_bloc.dart';

abstract class AccountEvent extends Equatable {
  const AccountEvent();
}

class getAccountEvent extends AccountEvent {
  final String docNumber;
  final String accntType;
  final String activationKey;

  getAccountEvent(this.docNumber, this.accntType, this.activationKey);

  @override
  List<Object> get props => [docNumber, accntType, activationKey];

}
