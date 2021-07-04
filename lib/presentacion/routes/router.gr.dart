// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../dominio/oferta_laboral/entidades/oferta_laboral.dart' as _i8;
import '../iniciar_sesion/inicio_sesion.dart' as _i4;
import '../ofertas_laborales/ver_detalle_oferta/detalle_oferta_laboral.dart'
    as _i6;
import '../ofertas_laborales/ver_detalle_oferta/postulacion.dart' as _i7;
import '../ofertas_laborales/ver_lista_ofertas/ver_lista_ofertas.dart' as _i5;
import '../splash/vista_splash.dart' as _i3;

class Router extends _i1.RootStackRouter {
  Router([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    VistaSplashRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.VistaSplash();
        }),
    InicioSesionVistaRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.InicioSesionVista();
        }),
    VerListaOfertasRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.VerListaOfertas();
        }),
    DetalleOfertaRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<DetalleOfertaRouteArgs>();
          return _i6.DetalleOferta(key: args.key, oferta: args.oferta);
        }),
    PostularRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<PostularRouteArgs>();
          return _i7.Postular(key: args.key, oferta: args.oferta);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(VistaSplashRoute.name, path: '/'),
        _i1.RouteConfig(InicioSesionVistaRoute.name,
            path: '/inicio-sesion-vista'),
        _i1.RouteConfig(VerListaOfertasRoute.name, path: '/ver-lista-ofertas'),
        _i1.RouteConfig(DetalleOfertaRoute.name, path: '/detalle-oferta'),
        _i1.RouteConfig(PostularRoute.name, path: '/Postular')
      ];
}

class VistaSplashRoute extends _i1.PageRouteInfo {
  const VistaSplashRoute() : super(name, path: '/');

  static const String name = 'VistaSplashRoute';
}

class InicioSesionVistaRoute extends _i1.PageRouteInfo {
  const InicioSesionVistaRoute() : super(name, path: '/inicio-sesion-vista');

  static const String name = 'InicioSesionVistaRoute';
}

class VerListaOfertasRoute extends _i1.PageRouteInfo {
  const VerListaOfertasRoute() : super(name, path: '/ver-lista-ofertas');

  static const String name = 'VerListaOfertasRoute';
}

class DetalleOfertaRoute extends _i1.PageRouteInfo<DetalleOfertaRouteArgs> {
  DetalleOfertaRoute({_i2.Key? key, required _i8.OfertaLaboral oferta})
      : super(name,
            path: '/detalle-oferta',
            args: DetalleOfertaRouteArgs(key: key, oferta: oferta));

  static const String name = 'DetalleOfertaRoute';
}

class DetalleOfertaRouteArgs {
  const DetalleOfertaRouteArgs({this.key, required this.oferta});

  final _i2.Key? key;

  final _i8.OfertaLaboral oferta;
}

class PostularRoute extends _i1.PageRouteInfo<PostularRouteArgs> {
  PostularRoute({_i2.Key? key, required _i8.OfertaLaboral oferta})
      : super(name,
            path: '/Postular',
            args: PostularRouteArgs(key: key, oferta: oferta));

  static const String name = 'PostularRoute';
}

class PostularRouteArgs {
  const PostularRouteArgs({this.key, required this.oferta});

  final _i2.Key? key;

  final _i8.OfertaLaboral oferta;
}
