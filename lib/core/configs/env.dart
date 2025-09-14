enum Environment { dev, staging, prod }

class EnvironmentConfig {
  static const environment = String.fromEnvironment(
    'ENVIRONMENT',
    defaultValue: 'dev',
  );

  static final apiUrl = {
    'dev': 'https://dev-api.nutrimart.com',
    'staging': 'https://staging-api.nutrimart.com',
    'prod': 'https://api.nutrimart.com',
  }[environment];

  static final appName = {
    'dev': 'NutriMart Dev',
    'staging': 'NutriMart Staging',
    'prod': 'NutriMart',
  }[environment];

  static bool get isDev => environment == 'dev';
  static bool get isStaging => environment == 'staging';
  static bool get isProd => environment == 'prod';
}