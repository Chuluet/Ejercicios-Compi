// Ejemplo:
// List<String> 1 = ["1","2","3","4","5"];
// List<String> 2 = ["A","B"];
// Output: [1, A, 2, B, 3, 4, 5];
// Esta función intercala los elementos de dos listas, l1 y l2.
// List: almacena el resultado intercalado
// sublist: obtiene los elementos restantes desde el índice actual

List<String> intercalar(List<String> l1, List<String> l2) {
  // Creamos una nueva lista vacía que va a contener el resultado intercalado.
  List<String> l = [];

  // Variable para recorrer los índices de ambas listas.
  int i = 0;

  // Mientras ambas listas tengan elementos en la posición i.
  while (i < l1.length && i < l2.length) {
    l.add(l1[i]); // Agregamos el elemento de la lista 1
    l.add(l2[i]); // Luego el elemento de la lista 2
    i++; // Pasamos al siguiente índice
  }

  // Cuando una de las dos listas se queda sin elementos,
  // elegimos la que aún tiene elementos.
  List<String> m = (i < l1.length) ? l1 : l2;

  // Añadimos a la lista final los elementos que quedaron sin intercalar.
  return l + List<String>.from(m.sublist(i));
}
