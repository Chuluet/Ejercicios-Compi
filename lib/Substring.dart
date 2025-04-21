
// Ejemplo de ejecución:
// String s = "barfoothefoobarman";
// List<String> words = ["foo", "bar"];
// Output esperado: [0, 9]

List<int> indexFinder(List<String> words, String s) {
  // Lista para guardar los índices donde se encuentran substrings válidos
  List<int> index = [];

  // Longitud total de la concatenación de todas las palabras
  int length = totalLength(words);

  // Iteramos sobre cada substring de tamaño `length` en el string `s`
  for (int i = 0; i <= s.length - length; i++) {
    // Obtenemos el substring actual de longitud total
    String sub = s.substring(i, i + length);

    // Bandera para verificar si todas las palabras están en el substring
    bool b = true;

    // Verificamos si cada palabra está contenida en el substring
    for (String p in words) {
      if (!sub.contains(p)) {
        b = false;
        break; // Si falta una, salimos del bucle
      }
    }

    // Si todas las palabras estaban, guardamos el índice
    if (b) {
      index.add(i);
    }
  }

  // Retornamos todos los índices encontrados
  return index;
}

/// Función auxiliar que suma la longitud total de todas las palabras
int totalLength(List<String> words) {
  int length = 0;
  for (String p in words) {
    length += p.length;
  }
  return length;
}
