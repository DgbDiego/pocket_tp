import 'package:pocket_tp/model/accountData.dart';

import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'account.g.dart';

Account accountFromJson(String str) => Account.fromJson(json.decode(str));

String accountToJson(Account data) => json.encode(data.toJson());

@JsonSerializable()
class Account{
  String errors;
  String accntNotFound;
  AccountData data;

  Account.padrao();

  Account({
    this.errors,
    this.accntNotFound,
    this.data
});

  factory Account.fromJson(Map<String,dynamic> json) => _$AccountFromJson(json);

  Map<String, dynamic> toJson() => _$AccountToJson(this);

}