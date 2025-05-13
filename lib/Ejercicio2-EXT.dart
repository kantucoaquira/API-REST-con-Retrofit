void main() {
  final miCalculadora = CalculadoraEspecial('Casio');

  print(miCalculadora);
  print('Suma: ${miCalculadora.suma(10, 5)}');
  print('Resta: ${miCalculadora.resta(10, 5)}');
  print('Multiplicación: ${miCalculadora.multiplicacion(10, 5)}');
}

/// Clase base CON implementación de métodos
class Operacion {
  int suma(int a, int b) => a + b;
  int resta(int a, int b) => a - b;
  int multiplicacion(int a, int b) => a * b;
}

/// Clase derivada que extiende la funcionalidad
class CalculadoraEspecial extends Operacion {
  String modelo;

  CalculadoraEspecial(this.modelo);

  @override
  String toString() => 'Calculadora modelo: $modelo';
}
