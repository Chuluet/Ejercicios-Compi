import 'dart:collection';

//Ejemplo:
// Input: ["Enano", "Goblin", "Enano", "Prostituta", "Goblin"]
// Output: ["Enano", "Prostituta", "Goblin"]
List<String> duplicado(List<String> lista) {
  // Usamos un LinkedHashSet que mantiene el orden de inserción
  Set<String> map = new LinkedHashSet<String>();

  // Recorremos la lista de principio a fin
  for (int i = 0; i < lista.length; i++) {
    // Si el elemento ya está en el set, lo eliminamos y lo agregamos en la posicion final
    if (map.contains(lista[i])) {
      map.remove(lista[i]);
    }
    // Agregamos el elemento (si ya estaba, ahora se agrega como nuevo al final)
    map.add(lista[i]);
  }

  // Convertimos el set a lista para devolver el resultado
  return map.toList();
}
