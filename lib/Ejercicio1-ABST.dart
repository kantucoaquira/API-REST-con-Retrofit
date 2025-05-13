void main() {
  final calculadora = CalculadoraConcreta();

  // Llamamos a la función general que espera una Operacion
  usarOperacion(calculadora);
}

/// Esta función recibe cualquier clase que implemente la clase abstracta
void usarOperacion(Operacion op) {
  int a = 10;
  int b = 5;
  print('Suma: ${op.suma(a, b)}');
  print('Resta: ${op.resta(a, b)}');
  print('Multiplicación: ${op.multiplicacion(a, b)}');
}

/// Clase abstracta que define la interfaz
abstract class Operacion {
  int suma(int a, int b);
  int resta(int a, int b);
  int multiplicacion(int a, int b);
}

/// Clase que implementa todos los métodos de la interfaz
class CalculadoraConcreta implements Operacion {
  @override
  int suma(int a, int b) => a + b;

  @override
  int resta(int a, int b) => a - b;

  @override
  int multiplicacion(int a, int b) => a * b;
}
