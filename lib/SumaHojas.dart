import 'package:ejercicios/ArbolB.dart';

int sumarHojas(ArbolB a) {
  return sumarHojasNodo(a.raiz); // Llama a la función recursiva comenzando desde la raíz
}

// Función recursiva para sumar los valores de las hojas
int sumarHojasNodo(NodoB<int>? n) {
  if (n == null) return 0; // Caso base: si el nodo es nulo, retorna 0

  // Si el nodo no tiene hijos, es una hoja → se retorna su valor
  if (n.hijoIzq == null && n.hijoDer == null) {
    return n.llave;
  } else {
    // Si tiene hijos, se suma recursivamente el resultado de ambos subárboles
    return sumarHojasNodo(n.hijoIzq) + sumarHojasNodo(n.hijoDer);
  }
}

// Función que construye el árbol binario del ejemplo mencionado
// Estructura del árbol:
//       5
//      / \
//     3   8
//    / \    \
//   1   4    10
// Hojas: 1, 4, 10 → Suma: 15
ArbolB construirArbolEjemplo() {
  ArbolB arbol = ArbolB();
  arbol.insertar(5);
  arbol.insertar(3);
  arbol.insertar(8);
  arbol.insertar(1);
  arbol.insertar(4);
  arbol.insertar(10);
  return arbol;
}
