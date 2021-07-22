bool validadorDuracionEscalaInvalida(
  String turno,
  List<String> turnosValidos,
) {
  if (turnosValidos.contains(turno)) {
    return true;
  } else {
    return false;
  }
}
