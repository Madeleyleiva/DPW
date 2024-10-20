import 'dart:io';

// Función para obtener el precio unitario del tipo de chocolate
double obtenerPrecioChocolate(String tipoChocolate) {
  Map<String, double> precios = {
    'Primor': 8.5,
    'Dulzura': 10.0,
    'Tentación': 7.0,
    'Explosión': 12.5
  };
  
  return precios[tipoChocolate] ?? 0.0; // Retorna 0.0 si no se encuentra el tipo de chocolate
}

// Función para obtener el porcentaje de descuento basado en la cantidad de chocolates
double obtenerDescuento(int cantidadChocolates) {
  if (cantidadChocolates < 5) {
    return 4.0;
  } else if (cantidadChocolates >= 5 && cantidadChocolates < 10) {
    return 6.5;
  } else if (cantidadChocolates >= 10 && cantidadChocolates < 15) {
    return 9.0;
  } else {
    return 11.5;
  }
}

// Función para calcular la cantidad de caramelos de obsequio
int obtenerCaramelos(int cantidadChocolates, double importeFinal) {
  if (importeFinal >= 250) {
    return cantidadChocolates * 3; // 3 caramelos por chocolate
  } else {
    return cantidadChocolates * 2; // 2 caramelos por chocolate
  }
}

void main() {
  // Entrada de datos
  stdout.write('Ingrese el tipo de chocolate (Primor, Dulzura, Tentación, Explosión): ');
  String tipoChocolate = stdin.readLineSync()!;

  stdout.write('Ingrese la cantidad de chocolates: ');
  int cantidadChocolates = int.parse(stdin.readLineSync()!);

  // Obtener el precio unitario del chocolate
  double precioUnitario = obtenerPrecioChocolate(tipoChocolate);

  // Calcular el importe total de la compra
  double importeCompra = precioUnitario * cantidadChocolates;

  // Obtener el porcentaje de descuento
  double porcentajeDescuento = obtenerDescuento(cantidadChocolates);

  // Calcular el importe del descuento
  double importeDescuento = (porcentajeDescuento / 100) * importeCompra;

  // Calcular el importe final a pagar
  double importeFinal = importeCompra - importeDescuento;

  // Calcular la cantidad de caramelos de obsequio
  int caramelosObsequio = obtenerCaramelos(cantidadChocolates, importeFinal);

  // Mostrar los resultados
  print('Importe de la compra: S/. ${importeCompra.toStringAsFixed(2)}');
  print('Importe del descuento: S/. ${importeDescuento.toStringAsFixed(2)}');
  print('Importe a pagar: S/. ${importeFinal.toStringAsFixed(2)}');
  print('Cantidad de caramelos de obsequio: $caramelosObsequio');
}
