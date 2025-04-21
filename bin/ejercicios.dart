import 'package:ejercicios/Anagramas.dart' as Anagramas;
import 'package:ejercicios/Duplicados.dart' as Duplicados;
import 'package:ejercicios/Frecuencia.dart' as Frecuencia;
import 'package:ejercicios/Intercalar.dart' as Intercalar;
import 'package:ejercicios/LetrasUnicas.dart' as LetrasUnicas;
import 'package:ejercicios/Rangos.dart' as Rangos;
import 'package:ejercicios/Substring.dart' as Substring;
import 'package:ejercicios/Rotacion.dart' as Rotacion;

void main(List<String> arguments) {
  print( {Anagramas.anagrama( ["eat", "tea", "tan", "ate", "nat", "bat"] )});
  print(Substring.indexFinder(  ["man","dog"], "birddogman"));
  print(Rangos.rango(   [0, 1, 2, 4, 5, 7] ));
  print(Duplicados.duplicado( ["apple", "banana", "apple", "orange", "banana"] ));
  print(Rotacion.rotar("uno dos tres cuatro" , 1));
  print(Intercalar.intercalar( ["1","2","3","4","5"], ["A","B"]));
  print(LetrasUnicas.letrasUnicas( ["hola", "casa", "perro", "luz"]));
  print(Frecuencia.frecuencia( "Hola mundo. Hola clase, hola estudiantes!"));
}
