
import 'dart:collection';
import 'dart:collection';

/// Función que cuenta la frecuencia de palabras en una cadena y las ordena
/// de mayor a menor frecuencia.
///
/// Ejemplo:
/// Input: "Hola mundo hola clase estudiantes hola mundo"
/// Output: {hola: 3, mundo: 2, clase: 1, estudiantes: 1}
LinkedHashMap frecuencia(String palabra) {
  // Convertimos el texto a minúsculas y separamos por cualquier cosa que no sea una letra (incluyendo tildes y ñ)
  List<String> palabras = palabra
      .toLowerCase()
      .split(RegExp(r'[^a-záéíóúüñ]+'))
      .where((p) => p.isNotEmpty)
      .toList();

  // Usamos un HashMap para contar las ocurrencias de cada palabra
  HashMap<String, int> map = HashMap<String, int>();

  for (String p in palabras) {
    // Si la palabra no existe en el mapa, se inicializa con 0
    map.putIfAbsent(p, () => 0);
    // Se incrementa el contador de la palabra
    map[p] = map[p]! + 1;
  }

  // Convertimos las entradas a una lista y las ordenamos de mayor a menor frecuencia
  var entradasOrdenadas = map.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  // Retornamos las entradas ordenadas en un LinkedHashMap para mantener el orden
  return LinkedHashMap.fromEntries(entradasOrdenadas);
}
