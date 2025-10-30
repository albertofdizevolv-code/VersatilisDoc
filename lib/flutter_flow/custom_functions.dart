import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

DateTime customExpires(int time) {
  final dateTime = DateTime.fromMillisecondsSinceEpoch(time * 1000);
  return dateTime;
}

DateTime? stringToDateTime(String stringData) {
  if (stringData.isEmpty) return null;

  try {
    // Formato ISO 8601: "yyyy-MM-ddTHH:mm:ss" ou "yyyy-MM-dd"
    if (stringData.contains('T') || stringData.contains('-')) {
      // Remove possível "Z" no final se existir
      String cleanString = stringData.replaceAll('Z', '');

      // Tenta parse direto (DateTime.parse aceita ISO 8601)
      return DateTime.parse(cleanString);
    }

    // Formato brasileiro: "dd/MM/yyyy"
    if (stringData.contains('/')) {
      return DateFormat("dd/MM/yyyy").parse(stringData);
    }

    // Se não corresponder a nenhum formato conhecido
    return null;
  } catch (e) {
    return null;
  }
}

String dataCorrectFormat(DateTime entrada) {
  // Como já recebemos um DateTime, só precisamos formatá-lo
  return "${entrada.year.toString().padLeft(4, '0')}-"
      "${entrada.month.toString().padLeft(2, '0')}-"
      "${entrada.day.toString().padLeft(2, '0')}";
}

String? parseToIsoOrZero(String entrada) {
  // Espera entrada no formato "dd/MM/yyyy"
  final partes = entrada.split('/');
  if (partes.length != 3) return null;

  final dia = int.tryParse(partes[0]);
  final mes = int.tryParse(partes[1]);
  final ano = int.tryParse(partes[2]);

  if (dia == null || mes == null || ano == null) return null;

  try {
    final data = DateTime(ano, mes, dia);
    // Verifica se os componentes batem (ex: 31/02/2023 não é válido)
    if (data.day != dia || data.month != mes || data.year != ano) return null;
    // Retorna no formato "yyyy-MM-dd"
    final mm = data.month.toString().padLeft(2, '0');
    final dd = data.day.toString().padLeft(2, '0');
    return '${data.year}-$mm-$dd';
  } catch (_) {
    return null;
  }
}

String converterDataPadrao(String data) {
// Divide a string original pelo caractere "-"
  List<String> partes = data.split('-');

  if (partes.length != 3) {
    throw FormatException("Formato inválido. Use yyyy-mm-dd");
  }

  // partes[0] = ano, partes[1] = mês, partes[2] = dia
  String dia = partes[2];
  String mes = partes[1];
  String ano = partes[0];

  return "$dia/$mes/$ano";
}

String? formatCPF(String? cpf) {
  if (cpf == null) return null;

  // Remove tudo que não for número
  final digits = cpf.replaceAll(RegExp(r'[^0-9]'), '');

  // Verifica se tem 11 dígitos válidos
  if (digits.length != 11) return cpf;

  // Retorna no formato 000.000.000-00
  return '${digits.substring(0, 3)}.${digits.substring(3, 6)}.${digits.substring(6, 9)}-${digits.substring(9)}';
}
