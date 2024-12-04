import 'package:financiera_pagina/widgets/app_bar_actions.dart';
import 'package:financiera_pagina/widgets/navigation_drawer.dart';
import 'package:financiera_pagina/widgets/servicios_card.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Servicios extends StatelessWidget {
  const Servicios({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = MediaQuery.of(context).size.width >= 600;
    return Scaffold(
      appBar: AppBar(
        title: const Text('FinanTech'),
        actions: isDesktop ? const [AppBarActions()] : null,
      ),
      drawer: isDesktop ? null : const CustomNavigationDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Nuestros servicios',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                LayoutBuilder(
                  builder: (context, constraints) {
                    final double gridWidth = constraints.maxWidth > 1000
                        ? 1000
                        : constraints.maxWidth;

                    return SizedBox(
                      width: gridWidth,
                      child: GridView.count(
                        crossAxisCount: isDesktop ? 3 : 1,
                        shrinkWrap: true,
                        mainAxisSpacing: 24,
                        crossAxisSpacing: 24,
                        childAspectRatio: 1.2,
                        physics: const NeverScrollableScrollPhysics(),
                        children: const [
                          ServiciosCard(
                            icon: Icons.savings,
                            title: 'Orientación ciudadana',
                            description:
                                'Solo debes presentar tu inquietud o consulta para ser atendido. Pediremos tus datos generales para fines de registro.',
                          ),
                          ServiciosCard(
                            icon: Icons.credit_card,
                            title: 'Consulta crediticia',
                            description:
                                'El solicitante debe ser la persona que consta en el Certificado de Registro Mercantil y en el Acta de Asamblea como Gerente.',
                          ),
                          ServiciosCard(
                            icon: Icons.attach_money,
                            title: 'Reclamaciones',
                            description:
                                'Las solicitudes incompletas podrán ser subsanadas en un plazo de 10 días hábiles contados a partir del depósito inicial de los documentos.',
                          ),
                          ServiciosCard(
                            icon: Icons.savings,
                            title: 'Información financiera',
                            description:
                                'El solicitante debe ser el titular de la información.',
                          ),
                          ServiciosCard(
                            icon: Icons.credit_card,
                            title: 'Reconsideraciones',
                            description:
                                'Si no estás satisfecho con el resultado del informe emitido por nuestra oficina en virtud de tu reclamación, en un plazo no mayor a 30 días.',
                          ),
                          ServiciosCard(
                            icon: Icons.attach_money,
                            title: 'Quejas y sugerencias',
                            description:
                                'Las quejas son acciones que afectan al usuario. Si el hecho afecta a un tercero, constituye una denuncia, requiriendo la investigación correspondiente ',
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





//  ServiciosCard(
//                             icon: Icons.business,
//                             title: 'Préstamos Empresariales',
//                             description:
//                                 'Impulsa tu negocio con nuestras soluciones financieras',
//                           ),
//                           ServiciosCard(
//                             icon: Icons.home,
//                             title: 'Préstamos Hipotecarios',
//                             description:
//                                 'Haz realidad el sueño de tu casa propia',
//                           ),