/// Every path in one place, so screens never spell a route by hand.
abstract final class AppRoutes {
  static const starting = '/';
  static const signIn = '/sign-in';
  static const onboarding = '/welcome';

  /// Invite-code entry for someone already signed in.
  static const join = '/join';

  static const tenantHome = '/tenant';
  static const tenantDocuments = '/tenant/documents';
  static const tenantSettings = '/tenant/settings';

  static const landlordOverview = '/landlord';
  static const landlordLeases = '/landlord/leases';
  static const landlordProperties = '/landlord/properties';
  static const landlordSettings = '/landlord/settings';

  static String leaseDetail(String leaseId) => '/landlord/leases/$leaseId';

  /// Tenant home opened on one month, from a notification.
  static String tenantMonth(String month) => '$tenantHome?month=$month';
}
