
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

  // Método para calcular el promedio de las dos notas iniciales
  double calcularPromedio() {
    return (nota1 + nota2) / 2;
  }

  // Nuevo método para calcular el promedio con notas adicionales
  double calcularPromedioNotasExtras(List<double> notasExtras) {
    double sumaTotal = nota1 + nota2;  // Empezamos con las dos notas base
    int totalNotas = 2;  // Iniciamos con dos notas

    // Sumamos las notas adicionales si hay alguna
    for (var nota in notasExtras) {
      sumaTotal += nota;
      totalNotas++;
    }

    return sumaTotal / totalNotas;
  }
}

void main() {
  // Crear un estudiante con las dos notas base
  Estudiante estudiante = Estudiante('001', 'Juan Perez', 15.5, 17.8);

  // Mostrar la información básica del estudiante
  estudiante.mostrarInformacion();

  // Calcular el promedio con notas adicionales
  List<double> notasExtras = [18.0, 16.5];  // Puedes agregar tantas notas como quieras
  double promedioConExtras = estudiante.calcularPromedioNotasExtras(notasExtras);

  // Mostrar el nuevo promedio
  print('\nPromedio con notas adicionales: $promedioConExtras');
}
