import 'dart:collection'; // Importa las colecciones, incluyendo Queue para BFS

import 'ArbolB.dart'; // Importa la clase del árbol binario y NodoB

// Función que retorna una lista de listas con los niveles del árbol
List<List<int>> niveles(ArbolB arbol) {
  List<List<int>> resultado = []; // Lista para almacenar los niveles

  // Si el árbol está vacío, se retorna una lista vacía
  if (arbol.raiz == null) return resultado;

  Queue<NodoB<int>> cola = Queue(); // Cola para recorrido por niveles (BFS)
  cola.add(arbol.raiz!); // Se añade la raíz a la cola

  // Mientras haya nodos por visitar
  while (cola.isNotEmpty) {
    int t = cola.length; // Número de nodos en el nivel actual
    List<int> nivelActual = []; // Lista para almacenar los nodos de este nivel

    // Procesamos todos los nodos del nivel actual
    for (int i = 0; i < t; i++) {
      NodoB<int> actual = cola.removeFirst(); // Extrae el primer nodo
      nivelActual.add(actual.llave); // Agrega su valor a la lista del nivel

      // Agrega sus hijos a la cola (si existen)
      if (actual.hijoIzq != null) cola.add(actual.hijoIzq!);
      if (actual.hijoDer != null) cola.add(actual.hijoDer!);
    }

    // Agrega el nivel procesado al resultado
    resultado.add(nivelActual);
  }

  return resultado; // Retorna la lista de niveles
}

//Ejemplo de ejecucion
//        1
//       / \
//      2   3
//     / \
//    4   5
// output [[1], [2, 3], [4, 5]]
ArbolB arbolB() {
  ArbolB arbol = ArbolB(); // Crea el árbol
  NodoB<int> nodo1 = NodoB(1);
  NodoB<int> nodo2 = NodoB(2);
  NodoB<int> nodo3 = NodoB(3);
  NodoB<int> nodo4 = NodoB(4);
  NodoB<int> nodo5 = NodoB(5);

  // Conexiones de los nodos para formar la estructura deseada
  nodo1.hijoIzq = nodo2;
  nodo1.hijoDer = nodo3;

  nodo2.padre = nodo1;
  nodo3.padre = nodo1;

  nodo2.hijoIzq = nodo4;
  nodo2.hijoDer = nodo5;

  nodo4.padre = nodo2;
  nodo5.padre = nodo2;

  // Se establece el nodo1 como raíz del árbol
  arbol.raiz = nodo1;

  return arbol; // Retorna el árbol construido
}
