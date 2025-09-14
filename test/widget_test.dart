import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:nutrimart/services/auth_service.dart';
import 'package:nutrimart/screens/auth/login_screen.dart';

void main() {
  testWidgets('Login screen test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => AuthService()),
        ],
        child: const MaterialApp(
          home: LoginScreen(),
        ),
      ),
    );

    // Verify that login screen shows correct elements
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Mobile Number'), findsOneWidget);
    expect(find.text('Send OTP'), findsOneWidget);

    // Enter mobile number
    await tester.enterText(
      find.byType(TextField).first,
      '1234567890'
    );
    await tester.pump();

    // Verify the entered text
    expect(find.text('1234567890'), findsOneWidget);

    // Find and tap the Send OTP button
    final sendOtpButton = find.text('Send OTP');
    expect(sendOtpButton, findsOneWidget);
  });
}
