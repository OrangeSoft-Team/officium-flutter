bool validadorDuracionEstimadaValor(
    int valor, int minNumeroValor, int maxNumeroValor) {
  if (valor >= minNumeroValor && valor <= maxNumeroValor) {
    return true;
  } else {
    return false;
  }
}
