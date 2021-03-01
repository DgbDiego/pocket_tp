import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:pocket_tp/constants.dart';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart';

class UpdateAccountBillInf {

  UpdateAccountBillInf(){

  }

  Future<dynamic> post_updateAccountBillInf(
      @required AccntId,
      @required Address,
      @required AddressComplement,
      @required AddressNumber,
      @required Neighborhood,
      @required City,
      @required State,
      @required PostalCode,
      @required Country,

      ) async {

    HttpClient client = new HttpClient();
    client.badCertificateCallback = ((X509Certificate cert, String host, int port) => true);

    String url = URL_UpdateAccountBillInf
        +'?AccntId=${AccntId}'
        +'&Address=${Address}'
        +'&AddressComplement=${AddressComplement}'
        +'&AddressNumber=${AddressNumber}'
        +'&Neighborhood=${Neighborhood}'
        +'&City=${City}'
        +'&State=${State}'
        +'&PostalCode=${PostalCode}'
        +'&Country=${Country}';

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