import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:recetasapp/screens/formulario_screen.dart';

void main() {
  testWidgets('El formulario valida frase y autor', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: FormularioScreen()));

    await tester.tap(find.text('Guardar frase'));
    await tester.pump();

    expect(find.text('Escribe al menos 5 caracteres'), findsOneWidget);
    expect(find.text('Escribe el autor'), findsOneWidget);
  });
}
