import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:async';

enum file { ACCOUNT, ACCOUNTDATA }

class FileBloc {
  static Future<File> getFile({@required tipo, @required nomeFile}) async {

    try {
      final diretorio = await getApplicationDocumentsDirectory();
      if (tipo == file.ACCOUNT) {
        return File('${diretorio.path}/account.json');
      } else if (tipo == file.ACCOUNTDATA) {
        return File('${diretorio.path}/accountData.json');
      }
      return null;

    }catch (e) {
      print ("Erro ao buscar arquivo JSON \n\n $e");
    }
  }



}