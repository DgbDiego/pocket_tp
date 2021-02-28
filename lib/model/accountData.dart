import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'accountData.g.dart';

AccountData accountDataFromJson(String str) => AccountData.fromJson(json.decode(str));

String accountDataToJson(AccountData data) => json.encode(data.toJson());

@JsonSerializable()
class AccountData {
  String isValid;
  String isActive;
  String accntName;
  String accntContactName;
  String accntEmail;
  String accntCellPhnNum;
  String accntMainPhNum;
  String accntProfileId;
  String accntId;
  String accntBusNum;
  String countryDocNumber;
  String countryProfile;
  String REFFERED_BY_ACCOUNT_ID;
  String bankAccountNumber;
  String bankAccountDigit;
  String bankRoutingNumber;
  String bankCode;
  String bankName;
  String currency;
  String currencySymbol;
  String docRequired;
  String biRequired;
  String authorization;
  String avaliableBalance;
  String address;
  String addressComplement;
  String addressNumber;
  String city;
  String state;
  String country;
  String neighborhood;
  String postalCode;
  String birthDate;
  String generalRecord;
  String accntType;
  String language;

  AccountData.padrao();

  AccountData({
    this.isValid,
    this.isActive,
    this.accntName,
    this.accntContactName,
    this.accntEmail,
    this.accntCellPhnNum,
    this.accntMainPhNum,
    this.accntProfileId,
    this.accntId,
    this.accntBusNum,
    this.countryDocNumber,
    this.countryProfile,
    this.REFFERED_BY_ACCOUNT_ID,
    this.bankAccountNumber,
    this.bankAccountDigit,
    this.bankRoutingNumber,
    this.bankCode,
    this.bankName,
    this.currency,
    this.currencySymbol,
    this.docRequired,
    this.biRequired,
    this.authorization,
    this.avaliableBalance,
    this.address,
    this.addressComplement,
    this.addressNumber,
    this.city,
    this.state,
    this.country,
    this.neighborhood,
    this.postalCode,
    this.birthDate,
    this.generalRecord,
    this.accntType,
    this.language
  });

  factory AccountData.fromJson(Map<String, dynamic> json) => _$AccountDataFromJson(json);

  Map<String, dynamic> toJson() => _$AccountDataToJson(this);

}