// Clase Estudiante
class Estudiante {
  String codigo;
  String nombres;
  double nota1;
  double nota2;

  // Constructor
  Estudiante(this.codigo, this.nombres, this.nota1, this.nota2);

  // Método para mostrar información del estudiante
  void mostrarInformacion() {
    print('Código: $codigo');
    print('Nombres: $nombres');
    print('Nota 1: $nota1');
    print('Nota 2: $nota2');
    print('Promedio: ${calcularPromedio()}');
  }

  // Método para calcular el promedio de las notas
  double calcularPromedio() {
    return (nota1 + nota2) / 2;
  }
}

void main() {
  // Lista para almacenar estudiantes
  List<Estudiante> listaEstudiantes = [
    Estudiante('001', 'Juan Perez', 15.5, 17.8),  // Se utilizan datos fijos
    Estudiante('002', 'Ana Gomez', 18.2, 19.5)   // Se utilizan datos fijos
  ];

  // Mostrar información de los estudiantes
  for (var estudiante in listaEstudiantes) {
    estudiante.mostrarInformacion();
    print('---');
  }
}
