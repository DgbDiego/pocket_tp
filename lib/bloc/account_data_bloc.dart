import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:equatable/equatable.dart';
import 'package:rxdart/rxdart.dart';

class AccountDataBloc implements BlocBase {

  final _isValidController = BehaviorSubject<String>();
  final _isActiveController = BehaviorSubject<String>();
  final _accntNameController = BehaviorSubject<String>();
  final _accntContactNameController = BehaviorSubject<String>();
  final _accntEmailController = BehaviorSubject<String>();
  final _accntCellPhnNumController = BehaviorSubject<String>();
  final _accntMainPhNumController = BehaviorSubject<String>();
  final _accntProfileIdController = BehaviorSubject<String>();
  final _accntIdController = BehaviorSubject<String>();
  final _accntBusNumController = BehaviorSubject<String>();
  final _countryDocNumberController = BehaviorSubject<String>();
  final _countryProfileController = BehaviorSubject<String>();
  final _REFFERED_BY_ACCOUNTController = BehaviorSubject<String>();
  final _bankAccountNumberController = BehaviorSubject<String>();
  final _bankAccountDigitController = BehaviorSubject<String>();
  final _bankRoutingNumberController = BehaviorSubject<String>();
  final _bankCodeController = BehaviorSubject<String>();
  final _bankNameController = BehaviorSubject<String>();
  final _currencyController = BehaviorSubject<String>();
  final _currencySymbolController = BehaviorSubject<String>();
  final _docRequiredController = BehaviorSubject<String>();
  final _biRequiredController = BehaviorSubject<String>();
  final _authorizationController = BehaviorSubject<String>();
  final _avaliableBalanceController = BehaviorSubject<String>();
  final _addressController = BehaviorSubject<String>();
  final _addressComplementController = BehaviorSubject<String>();
  final _addressNumberController = BehaviorSubject<String>();
  final _cityController = BehaviorSubject<String>();
  final _stateController = BehaviorSubject<String>();
  final _countryController = BehaviorSubject<String>();
  final _neighborhoodController = BehaviorSubject<String>();
  final _postalCodeController = BehaviorSubject<String>();
  final _birthDateController = BehaviorSubject<String>();
  final _generalRecordController = BehaviorSubject<String>();
  final _accntTypeController = BehaviorSubject<String>();
  final _languageController = BehaviorSubject<String>();

  Stream<String> get outIsValid => _isValidController.stream;
  Stream<String> get outIsActive => _isActiveController.stream;
  Stream<String> get outAccntName => _accntNameController.stream;
  Stream<String> get outAccntContactName => _accntContactNameController.stream;
  Stream<String> get outAccntEmail => _accntEmailController.stream;
  Stream<String> get outAccntCellPhnNum => _accntCellPhnNumController.stream;
  Stream<String> get outAccntMainPhNum => _accntMainPhNumController.stream;
  Stream<String> get outAccntProfileId => _accntProfileIdController.stream;
  Stream<String> get outAccntId => _accntIdController.stream;
  Stream<String> get outAccntBusNum => _accntBusNumController.stream;
  Stream<String> get outCountryDocNumber => _countryDocNumberController.stream;
  Stream<String> get outCountryProfile => _countryProfileController.stream;
  Stream<String> get outREFFERED_BY_ACCOUNT => _REFFERED_BY_ACCOUNTController.stream;
  Stream<String> get outBankAccountNumber => _bankAccountNumberController.stream;
  Stream<String> get outBankAccountDigit => _bankAccountDigitController.stream;
  Stream<String> get outBankRoutingNumber => _bankRoutingNumberController.stream;
  Stream<String> get outBankCode => _bankCodeController.stream;
  Stream<String> get outBankName => _bankNameController.stream;
  Stream<String> get outCurrency => _currencyController.stream;
  Stream<String> get outCurrencySymbol => _currencySymbolController.stream;
  Stream<String> get outDocRequired => _docRequiredController.stream;
  Stream<String> get outBiRequired => _biRequiredController.stream;
  Stream<String> get outAuthorization => _authorizationController.stream;
  Stream<String> get outAvaliableBalance => _avaliableBalanceController.stream;
  Stream<String> get outAddress => _addressController.stream;
  Stream<String> get outAddressComplement => _addressComplementController.stream;
  Stream<String> get outAddressNumber => _addressNumberController.stream;
  Stream<String> get outCity => _cityController.stream;
  Stream<String> get outState => _stateController.stream;
  Stream<String> get outCountry => _countryController.stream;
  Stream<String> get outNeighborhood => _neighborhoodController.stream;
  Stream<String> get outPostalCode => _postalCodeController.stream;
  Stream<String> get outBirthDate => _birthDateController.stream;
  Stream<String> get outGeneralRecord => _generalRecordController.stream;
  Stream<String> get outAccntType => _accntTypeController.stream;
  Stream<String> get outLanguage => _languageController.stream;

  Sink<String> get sinkIsValid => _isValidController.sink;
  Sink<String> get sinkIsActive => _isActiveController.sink;
  Sink<String> get sinkAccntName => _accntNameController.sink;
  Sink<String> get sinkAccntContactName => _accntContactNameController.sink;
  Sink<String> get sinkAccntEmail => _accntEmailController.sink;
  Sink<String> get sinkAccntCellPhnNum => _accntCellPhnNumController.sink;
  Sink<String> get sinkAccntMainPhNum => _accntMainPhNumController.sink;
  Sink<String> get sinkAccntProfileId => _accntProfileIdController.sink;
  Sink<String> get sinkAccntId => _accntIdController.sink;
  Sink<String> get sinkAccntBusNum => _accntBusNumController.sink;
  Sink<String> get sinkCountryDocNumber => _countryDocNumberController.sink;
  Sink<String> get sinkCountryProfile => _countryProfileController.sink;
  Sink<String> get sinkREFFERED_BY_ACCOUNT => _REFFERED_BY_ACCOUNTController.sink;
  Sink<String> get sinkBankAccountNumber => _bankAccountNumberController.sink;
  Sink<String> get sinkBankAccountDigit => _bankAccountDigitController.sink;
  Sink<String> get sinkBankRoutingNumber => _bankRoutingNumberController.sink;
  Sink<String> get sinkBankCode => _bankCodeController.sink;
  Sink<String> get sinkBankName => _bankNameController.sink;
  Sink<String> get sinkCurrency => _currencyController.sink;
  Sink<String> get sinkCurrencySymbol => _currencySymbolController.sink;
  Sink<String> get sinkDocRequired => _docRequiredController.sink;
  Sink<String> get sinkBiRequired => _biRequiredController.sink;
  Sink<String> get sinkAuthorization => _authorizationController.sink;
  Sink<String> get sinkAvaliableBalance => _avaliableBalanceController.sink;
  Sink<String> get sinkAddress => _addressController.sink;
  Sink<String> get sinkAddressComplement => _addressComplementController.sink;
  Sink<String> get sinkAddressNumber => _addressNumberController.sink;
  Sink<String> get sinkCity => _cityController.sink;
  Sink<String> get sinkState => _stateController.sink;
  Sink<String> get sinkCountry => _countryController.sink;
  Sink<String> get sinkNeighborhood => _neighborhoodController.sink;
  Sink<String> get sinkPostalCode => _postalCodeController.sink;
  Sink<String> get sinkBirthDate => _birthDateController.sink;
  Sink<String> get sinkGeneralRecord => _generalRecordController.sink;
  Sink<String> get sinkAccntType => _accntTypeController.sink;
  Sink<String> get sinkLanguage => _languageController.sink;



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
