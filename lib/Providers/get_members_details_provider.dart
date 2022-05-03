import 'dart:convert';
import 'dart:io';

import 'package:moni_app/Contants/url.dart';
import 'package:moni_app/Models/member_model.dart';
import 'package:http/http.dart' as http;

class MemberProvider {
  Future<MemberModel> getMemberDetail() async {
    final url = "${AppUrl.baseUrl}/api/loans";

    final request = await http.get(Uri.parse(url));

    try {
      if (request.statusCode == 200 || request.statusCode == 201) {
        final memberModel = memberModelFromJson(request.body);

        return memberModel;
      } else {
        final memberModel = memberModelFromJson(request.body);

        throw memberModel.message!;
      }
    } on SocketException catch (_) {
      throw 'Connect to Internet';
    } catch (e) {
      throw e.toString();
    }
  }
}
