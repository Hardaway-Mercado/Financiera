import 'package:financiera_pagina/widgets/app_bar_actions.dart';
import 'package:financiera_pagina/widgets/navigation_drawer.dart';
import 'package:financiera_pagina/widgets/quienes_somos_card.dart';

import 'package:flutter/material.dart';

class QuienesSomos extends StatelessWidget {
  const QuienesSomos({super.key});

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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/quienes-somos.jpg',
                      width: double.infinity,
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sobre ProUsuario',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Somos la ',
                      style: TextStyle(fontSize: 18),
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              'Oficina de Servicios y Protección de los Usuarios Financieros',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        TextSpan(
                            text: '  (Prousuario), una dependencia de la ',
                            style: TextStyle(fontSize: 18)),
                        TextSpan(
                          text:
                              'Superintendencia de Bancos de la República\nDominicana',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        TextSpan(
                            text:
                                '(SB). Entre nuestras principales obligaciones, definidas por resolución de la Junta Monetaria, están las de atender las consultas, denuncias y\nreclamaciones que presentan los usuarios con relación a los servicios prestados por las entidades financieras y las demás entidades reguladas por la\nSuperintendencia de Bancos.',
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 1000,
                child: GridView.count(
                  crossAxisCount: isDesktop ? 3 : 1,
                  shrinkWrap: true,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 40,
                  childAspectRatio: 0.9,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    QuienesSomosCard(
                      icon: Icons.emoji_events,
                      title: 'Misión',
                      description:
                          'Velar por el respeto de los derechos de\n los usuarios financieros e impulsar su\n empoderamiento, procurando una\n relación equitativa y armoniosa entre\n los usuarios y sus prestadores de\n servicios financieros.',
                    ),
                    QuienesSomosCard(
                      icon: Icons.visibility_outlined,
                      title: 'Visión',
                      description:
                          'Ser un órgano conciliador, accesible y\n confiable, reconocido por su fortaleza\n institucional y su eficiencia en el\n cumplimiento de sus roles como\n orientador y garante de los derechos de\n los usuarios financieros.',
                    ),
                    QuienesSomosCard(
                      icon: Icons.favorite_border,
                      title: 'Valores',
                      description:
                          '•	Integridad\n• Eficiencia\n• Innovación\n• Compromiso\n• Respeto',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Manifiesto de Servicio',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      'Nuestra principal misión es atender a las entidades supervisadas y a las personas a las que brindamos servicios, priorizando en todo momento\nsu satisfacción. Nos comprometemos firmemente a asumir el desafío de establecer y promover una cultura de servicio sostenible en SB, \nsiguiendo las mejores prácticas internacionales como guía. Este enfoque se traduce en la garantía de proporcionar experiencias memorables \na todas aquellas personas que soliciten nuestros servicios, ya sea personal interno, representantes de las entidades, o el público en general. \nPor ello nos comprometemos a cumplir con los siguientes estándares de servicio:',
                      style: TextStyle(fontSize: 18)),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ));
  }
}
