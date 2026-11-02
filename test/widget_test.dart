import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_login_app_johncena/main.dart';

void main() {
  testWidgets('Benbweseh login screen smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const BenbwesehApp());

    // Verify that Benbweseh branding and email field are present.
    expect(find.text('BENBWESEH'), findsOneWidget);
    expect(find.text('Email Address'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Log In'), findsOneWidget);
  });
}
