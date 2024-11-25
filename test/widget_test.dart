import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../lib/main.dart';

void main() {
  test('Клас FunctionCalculate правильно обчислює функцію y = 8 - x^2 - x^3', () {
    final calculator = FunctionCalculator();
    expect(calculator.calculate(0), 8.0);
    expect(calculator.calculate(4), -72.0);
    expect(calculator.calculate(8), -568.0);
  });

  testWidgets('Програма правильно виводить текст шаблону', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('IPZ-31: Arsen\'s Sobipan Flutter App'), findsOneWidget);
  });

  testWidgets('Наявність віджету FloatingActionButton', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    final fab = find.byType(FloatingActionButton);
    expect(fab, findsOneWidget);
    expect(find.byIcon(Icons.camera_alt_outlined), findsOneWidget);
  });

  testWidgets('Правильность кроку лічильника', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    await tester.pump();

    expect(find.text('Counter: 0'), findsOneWidget);

    await tester.tap(find.byType(FloatingActionButton));

    await tester.pump();

    expect(find.text('Counter: 4'), findsOneWidget);
  });
}
