import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:xylophone/main.dart';


void main() {
  testWidgets('Sound button tap test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(XylophoneApp());

    // Verify if the first button is present
    expect(find.byType(TextButton), findsNWidgets(7));

    // Tap the first sound button
    await tester.tap(find.byType(TextButton).first);
    await tester.pump();

    // Since there's no UI change, we would rely on AudioPlayer being called.
    // For more complex testing, consider mocking the AudioPlayer to verify behavior.
  });
}
