import 'dart:io';

// Función para calcular el descuento basado en el promedio ponderado
double calcularDescuento(double promedio) {
  if (promedio >= 18.00) {
    return 0.15; // 15%
  } else if (promedio >= 16.00) {
    return 0.12; // 12%
  } else if (promedio >= 14.00) {
    return 0.10; // 10%
  } else {
    return 0.0; // No hay descuento
  }
}

// Función para obtener la pensión original basado en la categoría
double obtenerPension(String categoria) {
  Map<String, double> pensiones = {
    'A': 550.0,
    'B': 500.0,
    'C': 460.0,
    'D': 400.0,
  };
  return pensiones[categoria] ?? 0.0;
}

void main() {
  // Entrada de datos
  stdout.write('Ingrese la categoría del estudiante (A, B, C, D): ');
  String categoria = stdin.readLineSync()!.toUpperCase();

  stdout.write('Ingrese el promedio ponderado del ciclo anterior: ');
  double promedio = double.parse(stdin.readLineSync()!);

  // Obtener pensión original
  double pensionOriginal = obtenerPension(categoria);

  // Calcular descuento
  double descuento = calcularDescuento(promedio);
  double montoDescuento = pensionOriginal * descuento;

  // Calcular nueva pensión
  double nuevaPension = pensionOriginal - montoDescuento;

  // Mostrar resultados
  print('Pensión original: S/. $pensionOriginal');
  print('Descuento aplicado: ${descuento * 100}%');
  print('Monto de descuento: S/. $montoDescuento');
  print('Nueva pensión: S/. $nuevaPension');
}
