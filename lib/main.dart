import 'package:apple/screens/home_screen.dart';
import 'package:apple/utils/logger.dart';
import 'package:apple/utils/theme/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      darkTheme: theme,
      home: const HomeScreen(),
    );
  }
}

void main() {
  FlutterError.onError = (details) async {
    logger.e(
      'Channel: FlutterError.onError',
      error: details.exception,
      stackTrace: details.stack,
    );
    await Sentry.captureException(details.exception, stackTrace: details.stack);
    FlutterError.presentError(details);
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    logger.e(
      'Channel: PlatformDispatcher.instance.onError',
      error: error,
      stackTrace: stack,
    );
    Sentry.captureException(error, stackTrace: stack);
    return true;
  };

  SentryFlutter.init(
    (options) {
      options.dsn =
          'https://1b3216b179c18c153fab3df1e94066a0@o4507307770970112.ingest.de.sentry.io/4507307781849168';
      // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
      // We recommend adjusting this value in production.
      options.tracesSampleRate = 1.0;
      // The sampling rate for profiling is relative to tracesSampleRate
      // Setting to 1.0 will profile 100% of sampled transactions:
      options.profilesSampleRate = 1.0;
    },
    appRunner: () => runApp(const ProviderScope(child: App())),
  );
}
