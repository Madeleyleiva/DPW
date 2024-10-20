import 'dart:io';

// Función para obtener el precio unitario del producto
double obtenerPrecioProducto(String tipoProducto) {
  Map<String, double> precios = {
    'P1': 15.0,
    'P2': 17.5,
    'P3': 20.0
  };

  return precios[tipoProducto] ?? 0.0; // Retorna 0.0 si no se encuentra el tipo de producto
}

// Función para determinar el regalo basado en la cantidad de unidades adquiridas
String obtenerRegalo(int cantidadUnidades) {
  if (cantidadUnidades < 26) {
    return 'Un lapicero';
  } else if (cantidadUnidades >= 26 && cantidadUnidades <= 50) {
    return 'Un cuaderno';
  } else {
    return 'Una agenda';
  }
}

void main() {
  // Entrada de datos
  stdout.write('Ingrese el tipo de producto (P1, P2, P3): ');
  String tipoProducto = stdin.readLineSync()!;

  stdout.write('Ingrese la cantidad de unidades adquiridas: ');
  int cantidadUnidades = int.parse(stdin.readLineSync()!);

  // Obtener el precio unitario del producto
  double precioUnitario = obtenerPrecioProducto(tipoProducto);

  // Calcular el importe total a pagar
  double importeTotal = precioUnitario * cantidadUnidades;

  // Determinar el regalo
  String regalo = obtenerRegalo(cantidadUnidades);

  // Mostrar los resultados
  print('Importe total a pagar: S/. ${importeTotal.toStringAsFixed(2)}');
  print('Regalo: $regalo');
}
