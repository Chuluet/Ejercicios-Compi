import 'dart:collection';
//Ejemplo:
// Input: ["hola", "casa", "perro", "luz"]
// Output: ["hola", "luz"]
List<String> letrasUnicas(List<String> palabras) {
  // Lista para guardar las palabras que tienen letras únicas
  List<String> l = [];

  // Recorremos cada palabra en la lista
  for (String p in palabras) {
    // Convertimos la palabra en una lista de letras
    List<String> clave = p.split('');

    // Creamos un HashSet a partir de la lista de letras
    // El HashSet solo guarda elementos únicos, así que elimina duplicados automáticamente
    HashSet<String> s = HashSet.from(clave);

    // Si la longitud del HashSet es igual a la de la lista original,
    // significa que no había letras repetidas
    if (s.length == clave.length) {
      l.add(p); // Agregamos la palabra a la lista de resultado
    }
  }

  // Devolvemos la lista de palabras que tienen todas sus letras únicas
  return l;
}