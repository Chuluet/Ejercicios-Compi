
import 'dart:collection';

LinkedHashMap frecuencia(String palabra){
  List<String> palabras = palabra.toLowerCase().split(RegExp(r'[^a-záéíóúüñ]+'));
  HashMap map = HashMap<String, int>();
  for (String p in palabras) {

    map.putIfAbsent(p, () => 0);
    map[p] = map[p] + 1;
  }
  var entradasOrdenadas = map.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));
  return LinkedHashMap.fromEntries(entradasOrdenadas);
}
