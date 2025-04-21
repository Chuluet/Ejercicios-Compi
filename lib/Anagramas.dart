import 'dart:collection';




// Estructuras de datos utilizadas:
//- HashMap<String, List<String>>: para agrupar las palabras según una clave única.
// - List<List<String>>: para representar el resultado final agrupado.
List<List<String>> anagrama(List<String> palabras) {
  // Mapa para agrupar palabras por su "clave" de letras ordenadas
  var map = HashMap<String, List<String>>();

  for (var p in palabras) {
    // Dividimos la palabra en letras, las ordenamos alfabéticamente
    // y las unimos de nuevo
    var clave = (p.split('')..sort()).join();

    // Si la clave no existe aún en el mapa, se agrega con una lista vacía.
    map.putIfAbsent(clave, () => []);

    // Se agrega la palabra original al grupo correspondiente.
    map[clave]!.add(p);
  }

  // Se retorna una lista con todos los grupos de anagramas encontrados.
  return map.values.toList();
}


