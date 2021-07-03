<p align="center">
  <img src="https://i.imgur.com/bHw6nAC.png" alt="logo" width="400">
</p>
<br>

Officium Flutter es una aplicación móvil multiplataforma  desarrollado para el proyecto Officium elaborado utilizando
los conceptos de "Arquitectura Hexagonal" o "Puertos y Adaptadores" para obtener una capa de dominio y capa de aplicación
que se desacopla del framework principal, en este caso "Flutter" y de otros detalles de implementación, como lo es la 
utilización de API's y servicios para obtener datos.

### :page_facing_up: Tabla de Contenidos

---

Este README consiste de las siguientes partes, listadas a continuación:

- [:page_facing_up: Tabla de Contenidos](#page_facing_up-tabla-de-contenidos)
- [:man_technologist: Colaboradores de Desarrollo](#man_technologist-colaboradores-de-desarrollo)
- [:computer: Stack de Tecnologías](#computer-stack-de-tecnologías)
- [:wrench: Instalación de la Aplicación](#wrench-instalación-de-la-aplicación)
- [:hammer: Construcción de la Aplicación (build)](#hammer-construcción-de-la-aplicación-build)
- [:electric_plug: Ejecución de la Aplicación](#electric_plug-ejecución-de-la-aplicación)
- [:test_tube: Ejecución de las Pruebas Automatizadas](#test_tube-ejecución-de-las-pruebas-automatizadas)
- [:mag_right: Referencias](#mag_right-referencias)

Adicionalmente, se utilizan las siguientes plantillas para el repositorio:

- [Commit](https://github.com/OrangeSoft-Team/readme-guide/blob/main/Commit.md)
- [Pull Request](https://github.com/OrangeSoft-Team/readme-guide/blob/main/Pull_Request.md)
- [Issue](https://github.com/OrangeSoft-Team/readme-guide/blob/main/Issue.md)

### :man_technologist: Colaboradores de Desarrollo

---

| Nombre y Apellido    | Usuario    | Enlace                        |
| -------------------- | ---------- | ----------------------------- |
| Andrés De Armas      | AndresG75  | https://github.com/AndresG75  |
| Leonardo Ruiz        | iSlidex    | https://github.com/iSlidex    |
| Steven Dávila         | SDRADCodex | https://github.com/SDRADCodex |

### :computer: Stack de Tecnologías

---

| Logo                                                                                                                                        | Tipo                       | Nombre         | Enlace de Descarga                       | Versión |
| ------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------- | -------------- | ---------------------------------------- | ------- |
| <img src="https://cdn.worldvectorlogo.com/logos/dart.svg" width="24">                                                                       | Lenguaje                   | Dart           | https://dart.dev/                        | 2.13    |
| <img src="https://upload.wikimedia.org/wikipedia/commons/e/e3/Android_Studio_Icon_%282014-2019%29.svg" width="24">                          | Ambiente de ejecución      | Android Studio | https://developer.android.com/studio     | 4.2.1   |
| <img src="https://plugins.jetbrains.com/files/12129/118174/icon/pluginIcon.svg" width="24">                                                 | Manejador de Estado        | BloC           | https://bloclibrary.dev/#/               | 7.0.0   |
| <img src="https://logowik.com/content/uploads/images/flutter5786.jpg" width="24">                                                           | Framework                  | Flutter        | https://flutter.dev/                     | 2.2     |
| <img src="https://cdn.worldvectorlogo.com/logos/dart.svg" width="24">                                                           | Testing                    | Mockito          | https://pub.dev/packages/mockito   | 4.1.1 |
| <img src="https://cdn.worldvectorlogo.com/logos/dart.svg" width="24">                                                                       | Linter                     | Linter         | https://pub.dev/packages/linter          | 1.6.1   | 

### :wrench: Instalación de la Aplicación

---

Para realizar la instalación de la aplicación, es necesario realizar los siguientes pasos:

- Cree una copia local del repositorio en su dispositivo.

- Luego, ejecute el siguiente comando dentro de la carpeta para obtener el stack tecnológico de frameworks y librerías de las cuales depende la aplicación:

  `flutter pub get`

### :hammer: Construcción de la Aplicación (build)

---

Para llevar a cabo la puesta en producción de esta aplicación, debe realizar los siguientes pasos:

- Ejecute el siguiente comando en una consola de comandos cualquiera situada en la carpeta de la aplicación:

  `flutter build`

### :electric_plug: Ejecución de la Aplicación

---

Para la ejecución de la aplicación debe sencillamente escribir el siguiente comandos en una consola de comandos situada en la carpeta de la aplicación:

- Directo en consola:

  `flutter run`

O bien, desde Visual Studio Code, o Android Studio, ejecutar F5 para ejecutar la aplicación de acuerdo al emulador seleccionado.

  `F5`

### :test_tube: Ejecución de las Pruebas Automatizadas

---

Esta aplicación consta de tres tipos de pruebas automatizables ejecutables, las cuales se pueden ejecutar de manera individual o en conjunto a través de los siguientes comandos en una consola de comandos situada en la carpeta del proyecto:

- Todas las pruebas (unitarias, integración, aceptación):

  `flutter test`

- Pruebas unitarias:

  `flutter test --tags "unit_test"`

- Pruebas de integración:

  `flutter test --tags "integration"`

- Pruebas de aceptación:

  `flutter test --tags "acceptance"`

### :mag_right: Referencias

---

- [Domain Driven Design en Flutter - Dart](https://resocoder.com/2020/03/09/flutter-firebase-ddd-course-1-domain-driven-design-principles/)
- [Documentación oficial de Flutter](https://flutter.dev/docs)
- [Ejemplo de "Clean Arquitecture + DDD" en Flutter](https://github.com/ResoCoder/finished-flutter-firebase-ddd-course)
- [El patrón BloC en Flutter](https://xurxodev.com/el-patron-bloc-junto-a-clean-architecture-en-flutter/)
- [Un Flutter más Limpio Vol. 1](https://medium.com/comunidad-flutter/un-flutter-m%C3%A1s-limpio-vol-1-intro-a-clean-9b718344d9c4)
- [Implementación ejemplo de "Arquitectura Hexagonal" del libro "Get Your Hands Dirty On Clean Arquitecture" y estructura de carpetas recomendada](https://github.com/thombergs/buckpal)
- [Explicación de principios SOLID con ejemplos de código](https://www.baeldung.com/solid-principles)
- [Implementación de "Arquitectura Hexagonal" y explicación de conceptos utilizando código Dart](https://pub.dev/packages/flutter_clean_architecture)
