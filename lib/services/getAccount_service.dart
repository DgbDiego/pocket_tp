import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:pocket_tp/constants.dart';
import 'dart:io';
import 'dart:convert';

class GetAccountService{
  Dio dio;

  GetAccountService(){
    dio = Dio();
    dio.options.baseUrl = URL_GetAccount;
    dio.options.receiveTimeout = 60000;
  }

  Future<dynamic> post_getAccount(
      @required docNumber,
      @required accntType,
      @required activatationKey
      ) async {

    try{
      Response response = await dio.post(URL_GetAccount
      +'?DocNumber=${docNumber}'
      +'?AccntType=${accntType}'
      +'?ActivatationKey=${activatationKey}'
      ).catchError((e){
        print('Erro ao sincronizar  \n\n $e');
      });
      if (response.statusCode == 200) {
        return response.data;
      } else {
        return null;
      }
    }
    catch (e){
      return null;
    }
  }
}