import 'package:app_cepapi/cep_info_widget.dart';
import 'package:flutter/material.dart';
import 'cep.dart';
import 'cep_api.dart';

class CepTela extends StatefulWidget {
  const CepTela({super.key});

  @override
  State<CepTela> createState() => _CepTelaState();
}

class _CepTelaState extends State<CepTela> {
  late Future<Cep> cep;
  @override
  void initState() {
    super.initState();
    cep = CepApi().getCep('57304200');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: buildFutureBuilder());
  }

  buildFutureBuilder() {
    return FutureBuilder<Cep>(
      future: cep,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return CepWidget(cep: snapshot.data);
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
