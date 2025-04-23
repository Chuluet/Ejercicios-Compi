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

  NodoB.conTodo(this.llave, this.hijoIzq, this.hijoDer, this.padre);
}

class ArbolB {
  NodoB<int>? raiz;

  ArbolB() {
    raiz = null;
  }

  void insertar(int valor) {
    NodoB<int> nuevo = NodoB(valor);
    if (raiz == null) {
      raiz = nuevo;
    } else {
      _insertarRec(raiz!, nuevo);
    }
  }

  void _insertarRec(NodoB<int> actual, NodoB<int> nuevo) {
    if (nuevo.llave < actual.llave) {
      if (actual.hijoIzq == null) {
        actual.hijoIzq = nuevo;
        nuevo.padre = actual;
      } else {
        _insertarRec(actual.hijoIzq!, nuevo);
      }
    } else {
      if (actual.hijoDer == null) {
        actual.hijoDer = nuevo;
        nuevo.padre = actual;
      } else {
        _insertarRec(actual.hijoDer!, nuevo);
      }
    }
  }
}
