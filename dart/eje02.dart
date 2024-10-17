import 'dart:io';

// Clase Estudiante
class Estudiante {
  String codigo;
  String nombres;
  double nota1;
  double nota2;

  // Constructor
  Estudiante(this.codigo, this.nombres, this.nota1, this.nota2);

  // Método para mostrar la información del estudiante
  void mostrarInformacion() {
    print('\n--- Información del Estudiante ---');
    print('Código: $codigo');
    print('Nombres: $nombres');
    print('Nota 1: $nota1');
    print('Nota 2: $nota2');
    print('Promedio: ${calcularPromedio()}');
  }

  // Método para calcular el promedio
  double calcularPromedio() {
    return (nota1 + nota2) / 2;
  }
}

// Función para ingresar los datos del estudiante desde el teclado
Estudiante ingresarDatosEstudiante() {
  print('Ingrese el código del estudiante:');
  String codigo = stdin.readLineSync()!;

  print('Ingrese los nombres del estudiante:');
  String nombres = stdin.readLineSync()!;

  print('Ingrese la primera nota:');
  double nota1 = double.parse(stdin.readLineSync()!);

  print('Ingrese la segunda nota:');
  double nota2 = double.parse(stdin.readLineSync()!);

  // Retornar un nuevo objeto Estudiante con los datos ingresados
  return Estudiante(codigo, nombres, nota1, nota2);
}

void main() {
  // Llamar al método para ingresar los datos de un estudiante
  Estudiante estudiante = ingresarDatosEstudiante();

  // Mostrar la información del estudiante
  estudiante.mostrarInformacion();
}
