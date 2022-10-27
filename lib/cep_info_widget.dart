import 'package:flutter/material.dart';
import 'cep.dart';

class CepWidget extends StatefulWidget {
  final Cep? cep;
  const CepWidget({super.key, required this.cep});

  @override
  State<CepWidget> createState() => _CepWidgetState();
}

class _CepWidgetState extends State<CepWidget> {
  Cep get cep => widget.cep!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildBody());
  }

  buildBody() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [Text(cep.logradouro!), Text(cep.bairro!), Text(cep.ddd!)],
      ),
    );
  }
}
