import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gallery/main.dart' as app;
import 'package:integration_test/integration_test.dart';

void main() {
  group('App Test', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    testWidgets(
      "full app test",
      (tester) async {
        app.main();
        await tester.pumpAndSettle();
        await tester.pump(const Duration(seconds: 5));
        await tester.fling(
          find.byKey(const ValueKey('reply@study')),
          const Offset(-200, 0),
          1000,
        );
        await tester.pumpAndSettle();
        await tester.pump(const Duration(seconds: 2));
        await tester.tap(find.byKey(const ValueKey('shrine@study')));

        await tester.pumpAndSettle();
        await tester.pump(const Duration(seconds: 1));
        await tester.tap(find.byKey(const ValueKey('username_text')));
        await tester.enterText(
            find.byKey(const ValueKey('username_text')), "test");

        await tester.pumpAndSettle();
        await tester.pump(const Duration(seconds: 1));
        await tester.tap(find.byKey(const ValueKey('password_text')));
        await tester.enterText(
            find.byKey(const ValueKey('password_text')), "test");

        FocusManager.instance.primaryFocus.unfocus();

        await tester.pumpAndSettle();
        await tester.pump(const Duration(seconds: 3));
        await tester.ensureVisible(find.byKey(const ValueKey('next_button')));
        await tester.tap(find.byKey(const ValueKey('next_button')));

        await tester.pumpAndSettle();
        await tester.pump(const Duration(seconds: 5));
        await tester.tap(find.byKey(const ValueKey('menu_dropdown')));

        await tester.pumpAndSettle();
        await tester.pump(const Duration(seconds: 3));
        await tester.tap(find.text('CLOTHING'));

        await tester.pumpAndSettle();
        await tester.pump(const Duration(seconds: 3));
        await tester.fling(
          find.text('Sea tunic'),
          const Offset(-400, 0),
          1000,
        );

        await tester.pumpAndSettle();
        await tester.pump(const Duration(seconds: 3));
        await tester.fling(
          find.text('Chambray shirt'),
          const Offset(-400, 0),
          1000,
        );

        await tester.pumpAndSettle();
        await tester.pump(const Duration(seconds: 3));
        await tester.tap(find.text('Walter henley (white)'));

        await tester.pumpAndSettle();
        await tester.pump(const Duration(seconds: 3));
        await tester.tap(find.byKey(const ValueKey('menu_dropdown')));

        await tester.pumpAndSettle();
        await tester.pump(const Duration(seconds: 3));
        await tester.tap(find.text('ACCESSORIES'));

        await tester.pumpAndSettle();
        await tester.pump(const Duration(seconds: 3));
        await tester.tap(find.text('Shrug bag'));

        await tester.pumpAndSettle();
        await tester.pump(const Duration(seconds: 3));
        await tester.tap(find.byIcon(Icons.shopping_cart));

        await tester.pumpAndSettle();
        await tester.pump(const Duration(seconds: 3));
        expect(find.text('2 ITEMS'), findsOneWidget);
        await tester.tap(find.text('CLEAR CART'));

        await tester.pumpAndSettle();
        await tester.pump(const Duration(seconds: 3));
      },
      variant: const TargetPlatformVariant(
        <TargetPlatform>{TargetPlatform.android},
      ),
    );
  });
}
