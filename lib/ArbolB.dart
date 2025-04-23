// NodoB: representa cada nodo del árbol binario, almacena la llave y referencias a los nodos hijos y al padre
class NodoB<E> {
  E llave;
  NodoB<E>? hijoIzq;
  NodoB<E>? hijoDer;
  NodoB<E>? padre;


  NodoB(this.llave) {
    hijoIzq = null;
    hijoDer = null;
    padre = null;
  }

  // Constructor con todos los valores para inicializar completamente el nodo
  NodoB.conTodo(this.llave, this.hijoIzq, this.hijoDer, this.padre);
}

// ArbolB: estructura del árbol binario que contiene la raíz y los métodos para insertar nodos
class ArbolB {
  NodoB<int>? raiz; // Raíz del árbol


  ArbolB() {
    raiz = null;
  }

  // Metodo para insertar un valor en el árbol
  void insertar(int valor) {
    NodoB<int> nuevo = NodoB(valor); // Creamos un nuevo nodo con el valor proporcionado
    if (raiz == null) {
      raiz = nuevo; // Si el árbol está vacío, el nuevo nodo será la raíz
    } else {
      _insertarRec(raiz!, nuevo); // Llamamos al metodo recursivo para insertar el nodo
    }
  }

  // Metodo recursivo para insertar el nodo en el lugar adecuado
  void _insertarRec(NodoB<int> actual, NodoB<int> nuevo) {
    if (nuevo.llave < actual.llave) { // Si el valor es menor, va al hijo izquierdo
      if (actual.hijoIzq == null) {
        actual.hijoIzq = nuevo; // Insertamos el nuevo nodo en el hijo izquierdo
        nuevo.padre = actual; // Establecemos el padre del nuevo nodo
      } else {
        _insertarRec(actual.hijoIzq!, nuevo); // Recursión para insertar en el hijo izquierdo
      }
    } else { // Si el valor es mayor o igual, va al hijo derecho
      if (actual.hijoDer == null) {
        actual.hijoDer = nuevo; // Insertamos el nuevo nodo en el hijo derecho
        nuevo.padre = actual; // Establecemos el padre del nuevo nodo
      } else {
        _insertarRec(actual.hijoDer!, nuevo); // Recursión para insertar en el hijo derecho
      }
    }
  }
}
