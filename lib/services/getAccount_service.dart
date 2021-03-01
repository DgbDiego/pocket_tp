import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:pocket_tp/constants.dart';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart';

class GetAccountService{

  GetAccountService(){

  }

  Future<dynamic> post_getAccount(
      @required docNumber,
      @required accntType,
      @required activatationKey
      ) async {

    HttpClient client = new HttpClient();
    client.badCertificateCallback = ((X509Certificate cert, String host, int port) => true);


    String url = URL_GetAccount
        +'?DocNumber=${docNumber}'
        +'&AccntType=${accntType}'
        +'&ActivatationKey=${activatationKey}';

    try{

      HttpClientRequest request = await client.postUrl(Uri.parse(url));

      request.headers.set('content-type', 'application/json');

      HttpClientResponse response = await request.close();

      String reply = await response.transform(utf8.decoder).join();

      return reply;

    }
    catch (e){
      return null;
    }
  }
}