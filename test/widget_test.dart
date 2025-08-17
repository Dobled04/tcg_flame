import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tcg_flame/main.dart';

void main() {
  testWidgets('Solo muestra la imagen en un fondo negro', (WidgetTester tester) async {
    // Construye la app
    await tester.pumpWidget(const MyApp());

    // 1. Verifica que la imagen existe
    expect(find.byType(Image), findsOneWidget);

    // 2. Verifica que el fondo es negro (Container en lugar de Scaffold)
    final container = tester.widget<Container>(find.byType(Container));
    final BoxDecoration? decoration = container.decoration as BoxDecoration?;
    expect(container.color ?? decoration?.color, Colors.black);

    // 3. Verifica que NO hay AppBar, texto ni botón
    expect(find.byType(AppBar), findsNothing);
    expect(find.byIcon(Icons.add), findsNothing);
    expect(find.byType(Text), findsNothing); // ningún texto en pantalla
  });
}
