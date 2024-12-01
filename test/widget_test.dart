import 'package:flutter_test/flutter_test.dart';

import 'package:proyecto_final/main.dart'; // Asegúrate de que esta importación es correcta

void main() {
  testWidgets('HomeScreen muestra el texto de bienvenida',
      (WidgetTester tester) async {
    // Construir la aplicación y hacer que se renderice.
    await tester.pumpWidget( MyApp());

    // Verificar que el texto 'Bienvenido' esté presente en el árbol de widgets.
    expect(find.text('Bienvenido'), findsOneWidget);

    // Verificar que el texto '0' no esté presente (esto depende de tu implementación).
    expect(find.text('0'), findsNothing);
  });
}
