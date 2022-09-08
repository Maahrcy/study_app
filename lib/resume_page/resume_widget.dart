import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_app/resume_page/detalhes_grid.dart';

import '../domain/resumo.dart';

class ResumeWidget extends StatefulWidget {
  const ResumeWidget({Key? key, required this.resume}) : super(key: key);

  final Resumo resume;
  @override
  State<ResumeWidget> createState() => _ResumeWidgetState();
}

class _ResumeWidgetState extends State<ResumeWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetalhesGrid(
                resume: widget.resume,
              );
            },
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    fit: BoxFit.fill,
                    child: Text(
                     widget.resume.titulo,
                      style: const TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  //Text(widget.pacoteTuristico.transporte),
                  const SizedBox(height: 8),
                  Wrap(
                    children: [
                      const Icon(Icons.wb_sunny_outlined),
                      const SizedBox(width: 4),
                      //Text('${widget.pacoteTuristico.numDiarias} Diárias'),
                      const SizedBox(width: 8),
                      Row(
                        children: [
                          const Icon(Icons.person_outline),
                          const SizedBox(width: 4),
                          //Text('${widget.pacoteTuristico.numPessoas} Pessoa'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  //Text('A partir de R\$ ${widget.pacoteTuristico.precoAntigo}'),
                  Wrap(
                    children: [
                      /*Text(
                        'R\$ ${widget.pacoteTuristico.precoAtual}',
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),*/
                      const SizedBox(width: 8),
                      /*Text(
                        'Taxa Grátis em até ${widget.pacoteTuristico.numParcelas}x',
                      ),*/
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Cancelamento Grátis',
                    style: TextStyle(
                        color: Colors.green[700], fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
