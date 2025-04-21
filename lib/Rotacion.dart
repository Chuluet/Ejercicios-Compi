// Ejemplo:
// Input:"uno dos tres cuatro cinco", 2));
// Output: "[cuatro, cinco, uno, dos, tres]"

String rotar(String palabras, int k) {
  // Dividimos la cadena de entrada 'palabras' en una lista de palabras usando el espacio como separador.
  List<String> p = (palabras.split(' ')).toList();
  // Calculamos el número de desplazamientos efectivos, asegurándonos de que k no sea mayor que el número de palabras.
  var n = (k + p.length) % p.length;
  // Creamos una nueva lista 'j' con las últimas 'n' palabras de la lista original.
  var j = List<String>.from(p.sublist(p.length - n));
  // Creamos una lista 'h' con las primeras (p.length - n) palabras de la lista original.
  var h = List<String>.from(p.sublist(0, p.length - n));
  // Concatenamos las dos listas 'j' y 'h' y las convertimos a una cadena de texto usando toString().
  return (j + h).toString();
}
