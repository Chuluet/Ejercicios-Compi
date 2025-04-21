
// Ejemplo de ejecución:
// print(rango([0, 1, 2, 4, 6, 7, 9]));
// Salida esperada: ["0->2", "4", "6->7", "9"]


List<String> rango(List<int> n) {
  // Lista que almacenará los rangos como strings.
  List<String> ran = [];

  // Índice que marca el inicio de una secuencia consecutiva.
  int inicio = 0;

  // Recorremos la lista
  for (int i = 0; i < n.length; i++) {
    // Verificamos si estamos al final o si la secuencia se rompe.
    if (i == n.length - 1 || n[i] + 1 != n[i + 1]) {
      if (inicio == i) {
        // Si no hubo secuencia, añadimos solo ese número.
        ran.add("${n[i]}");
      } else {
        // Si hubo secuencia, añadimos el rango desde el inicio hasta el actual.
        ran.add("${n[inicio]}->${n[i]}");
      }
      // Actualizamos el inicio para la siguiente posible secuencia.
      inicio = i + 1;
    }
  }

  return ran;
}
