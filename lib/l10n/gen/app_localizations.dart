// dart format off
// coverage:ignore-file
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_sl.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('sl')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'RentLOG'**
  String get appName;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get retry;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @genericError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again.'**
  String get genericError;

  /// No description provided for @networkError.
  ///
  /// In en, this message translates to:
  /// **'No connection. Check your internet and try again.'**
  String get networkError;

  /// No description provided for @notInPlan.
  ///
  /// In en, this message translates to:
  /// **'This isn\'t included in your current plan.'**
  String get notInPlan;

  /// No description provided for @sessionExpired.
  ///
  /// In en, this message translates to:
  /// **'You were signed out. Please sign in again.'**
  String get sessionExpired;

  /// No description provided for @openOnWeb.
  ///
  /// In en, this message translates to:
  /// **'Open on web'**
  String get openOnWeb;

  /// No description provided for @openOnWebHint.
  ///
  /// In en, this message translates to:
  /// **'More options are available in the web app.'**
  String get openOnWebHint;

  /// No description provided for @signInTitle.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signInTitle;

  /// No description provided for @signInSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Enter your email and we\'ll send you a sign-in code.'**
  String get signInSubtitle;

  /// No description provided for @emailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get emailLabel;

  /// No description provided for @sendCode.
  ///
  /// In en, this message translates to:
  /// **'Send code'**
  String get sendCode;

  /// No description provided for @invalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email address.'**
  String get invalidEmail;

  /// No description provided for @codeTitle.
  ///
  /// In en, this message translates to:
  /// **'Check your email'**
  String get codeTitle;

  /// No description provided for @codeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'We sent a 6-digit code to {email}.'**
  String codeSubtitle(String email);

  /// No description provided for @codeLabel.
  ///
  /// In en, this message translates to:
  /// **'Code'**
  String get codeLabel;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get verify;

  /// No description provided for @resendCode.
  ///
  /// In en, this message translates to:
  /// **'Send a new code'**
  String get resendCode;

  /// No description provided for @codeResent.
  ///
  /// In en, this message translates to:
  /// **'New code sent.'**
  String get codeResent;

  /// No description provided for @useDifferentEmail.
  ///
  /// In en, this message translates to:
  /// **'Use a different email'**
  String get useDifferentEmail;

  /// No description provided for @invalidCode.
  ///
  /// In en, this message translates to:
  /// **'That code isn\'t right. Check it and try again.'**
  String get invalidCode;

  /// No description provided for @noAccountPrompt.
  ///
  /// In en, this message translates to:
  /// **'New to RentLOG?'**
  String get noAccountPrompt;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create account'**
  String get createAccount;

  /// No description provided for @haveAccountPrompt.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get haveAccountPrompt;

  /// No description provided for @signUpTitle.
  ///
  /// In en, this message translates to:
  /// **'Create account'**
  String get signUpTitle;

  /// No description provided for @signUpSubtitle.
  ///
  /// In en, this message translates to:
  /// **'We\'ll email you a code to confirm your address.'**
  String get signUpSubtitle;

  /// No description provided for @firstNameLabel.
  ///
  /// In en, this message translates to:
  /// **'First name'**
  String get firstNameLabel;

  /// No description provided for @lastNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Last name'**
  String get lastNameLabel;

  /// No description provided for @passwordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get passwordLabel;

  /// No description provided for @passwordHint.
  ///
  /// In en, this message translates to:
  /// **'At least 8 characters.'**
  String get passwordHint;

  /// No description provided for @acceptTermsPrefix.
  ///
  /// In en, this message translates to:
  /// **'I agree to the '**
  String get acceptTermsPrefix;

  /// No description provided for @termsLink.
  ///
  /// In en, this message translates to:
  /// **'Terms'**
  String get termsLink;

  /// No description provided for @acceptTermsAnd.
  ///
  /// In en, this message translates to:
  /// **' and '**
  String get acceptTermsAnd;

  /// No description provided for @privacyLink.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyLink;

  /// No description provided for @fieldRequired.
  ///
  /// In en, this message translates to:
  /// **'Required.'**
  String get fieldRequired;

  /// No description provided for @mustAcceptTerms.
  ///
  /// In en, this message translates to:
  /// **'Please accept the terms to continue.'**
  String get mustAcceptTerms;

  /// No description provided for @noAccountForEmail.
  ///
  /// In en, this message translates to:
  /// **'There\'s no account for this email yet. Create one?'**
  String get noAccountForEmail;

  /// No description provided for @accountExists.
  ///
  /// In en, this message translates to:
  /// **'An account with this email already exists. Sign in instead.'**
  String get accountExists;

  /// No description provided for @passwordTooShort.
  ///
  /// In en, this message translates to:
  /// **'The password must be at least 8 characters.'**
  String get passwordTooShort;

  /// No description provided for @passwordPwned.
  ///
  /// In en, this message translates to:
  /// **'This password has appeared in a data breach. Choose another one.'**
  String get passwordPwned;

  /// No description provided for @signUpBlocked.
  ///
  /// In en, this message translates to:
  /// **'Sign-up from the app is blocked right now. Create your account on rent-log.app and sign in here.'**
  String get signUpBlocked;

  /// No description provided for @onboardingTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome to RentLOG'**
  String get onboardingTitle;

  /// No description provided for @onboardingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'What would you like to do?'**
  String get onboardingSubtitle;

  /// No description provided for @onboardingTenant.
  ///
  /// In en, this message translates to:
  /// **'I have an invite code'**
  String get onboardingTenant;

  /// No description provided for @onboardingTenantHint.
  ///
  /// In en, this message translates to:
  /// **'Your landlord gave you an 8-character code.'**
  String get onboardingTenantHint;

  /// No description provided for @onboardingLandlord.
  ///
  /// In en, this message translates to:
  /// **'I rent out property'**
  String get onboardingLandlord;

  /// No description provided for @onboardingLandlordHint.
  ///
  /// In en, this message translates to:
  /// **'Track rent, costs and payments.'**
  String get onboardingLandlordHint;

  /// No description provided for @inviteTitle.
  ///
  /// In en, this message translates to:
  /// **'Enter invite code'**
  String get inviteTitle;

  /// No description provided for @inviteLabel.
  ///
  /// In en, this message translates to:
  /// **'Invite code'**
  String get inviteLabel;

  /// No description provided for @inviteCheck.
  ///
  /// In en, this message translates to:
  /// **'Check code'**
  String get inviteCheck;

  /// No description provided for @inviteJoin.
  ///
  /// In en, this message translates to:
  /// **'Join'**
  String get inviteJoin;

  /// No description provided for @inviteFor.
  ///
  /// In en, this message translates to:
  /// **'Lease for {tenant}'**
  String inviteFor(String tenant);

  /// No description provided for @inviteInvalid.
  ///
  /// In en, this message translates to:
  /// **'This code isn\'t valid.'**
  String get inviteInvalid;

  /// No description provided for @inviteRevoked.
  ///
  /// In en, this message translates to:
  /// **'This code was revoked. Ask your landlord for a new one.'**
  String get inviteRevoked;

  /// No description provided for @inviteUsed.
  ///
  /// In en, this message translates to:
  /// **'This code has already been used.'**
  String get inviteUsed;

  /// No description provided for @navHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// No description provided for @navDocuments.
  ///
  /// In en, this message translates to:
  /// **'Documents'**
  String get navDocuments;

  /// No description provided for @navSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get navSettings;

  /// No description provided for @navOverview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get navOverview;

  /// No description provided for @navLeases.
  ///
  /// In en, this message translates to:
  /// **'Leases'**
  String get navLeases;

  /// No description provided for @monthlyRent.
  ///
  /// In en, this message translates to:
  /// **'Monthly rent'**
  String get monthlyRent;

  /// No description provided for @deposit.
  ///
  /// In en, this message translates to:
  /// **'Deposit'**
  String get deposit;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// No description provided for @rent.
  ///
  /// In en, this message translates to:
  /// **'Rent'**
  String get rent;

  /// No description provided for @costsForMonth.
  ///
  /// In en, this message translates to:
  /// **'Costs for {month}'**
  String costsForMonth(String month);

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @creditCarried.
  ///
  /// In en, this message translates to:
  /// **'Overpayment from {month}'**
  String creditCarried(String month);

  /// No description provided for @debtCarried.
  ///
  /// In en, this message translates to:
  /// **'Underpayment from {month}'**
  String debtCarried(String month);

  /// No description provided for @payableTotal.
  ///
  /// In en, this message translates to:
  /// **'To pay'**
  String get payableTotal;

  /// No description provided for @statusPaid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get statusPaid;

  /// No description provided for @statusOverdue.
  ///
  /// In en, this message translates to:
  /// **'Overdue'**
  String get statusOverdue;

  /// No description provided for @statusDue.
  ///
  /// In en, this message translates to:
  /// **'Due'**
  String get statusDue;

  /// No description provided for @delayRent.
  ///
  /// In en, this message translates to:
  /// **'Rent +{days} days'**
  String delayRent(int days);

  /// No description provided for @delayUtilities.
  ///
  /// In en, this message translates to:
  /// **'Utilities +{days} days'**
  String delayUtilities(int days);

  /// No description provided for @dueOn.
  ///
  /// In en, this message translates to:
  /// **'Due {date}'**
  String dueOn(String date);

  /// No description provided for @paidOn.
  ///
  /// In en, this message translates to:
  /// **'Paid {date}'**
  String paidOn(String date);

  /// No description provided for @noLease.
  ///
  /// In en, this message translates to:
  /// **'You\'re not connected to a lease yet. Ask your landlord for an invite code.'**
  String get noLease;

  /// No description provided for @enterInviteCode.
  ///
  /// In en, this message translates to:
  /// **'Enter invite code'**
  String get enterInviteCode;

  /// No description provided for @noCharges.
  ///
  /// In en, this message translates to:
  /// **'No charges yet.'**
  String get noCharges;

  /// No description provided for @chooseLease.
  ///
  /// In en, this message translates to:
  /// **'Choose a lease'**
  String get chooseLease;

  /// No description provided for @meters.
  ///
  /// In en, this message translates to:
  /// **'Meters'**
  String get meters;

  /// No description provided for @meterReading.
  ///
  /// In en, this message translates to:
  /// **'Reading'**
  String get meterReading;

  /// No description provided for @meterUsage.
  ///
  /// In en, this message translates to:
  /// **'Usage'**
  String get meterUsage;

  /// No description provided for @documentsEmpty.
  ///
  /// In en, this message translates to:
  /// **'Your landlord hasn\'t shared any documents yet.'**
  String get documentsEmpty;

  /// No description provided for @documentUnavailable.
  ///
  /// In en, this message translates to:
  /// **'This document is no longer available.'**
  String get documentUnavailable;

  /// No description provided for @dashRentThisMonth.
  ///
  /// In en, this message translates to:
  /// **'Rent this month'**
  String get dashRentThisMonth;

  /// No description provided for @dashUtilitiesThisMonth.
  ///
  /// In en, this message translates to:
  /// **'Utilities this month'**
  String get dashUtilitiesThisMonth;

  /// No description provided for @dashOverdue.
  ///
  /// In en, this message translates to:
  /// **'Overdue'**
  String get dashOverdue;

  /// No description provided for @dashOverdueCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 item} other{{count} items}}'**
  String dashOverdueCount(int count);

  /// No description provided for @dashExpectedRent.
  ///
  /// In en, this message translates to:
  /// **'Expected {amount}/mo'**
  String dashExpectedRent(String amount);

  /// No description provided for @dashCollectedYear.
  ///
  /// In en, this message translates to:
  /// **'Collected {year}'**
  String dashCollectedYear(String year);

  /// No description provided for @dashNeedsAttention.
  ///
  /// In en, this message translates to:
  /// **'Needs attention'**
  String get dashNeedsAttention;

  /// No description provided for @dashAllClear.
  ///
  /// In en, this message translates to:
  /// **'Nothing overdue or due right now.'**
  String get dashAllClear;

  /// No description provided for @dashLeaseOverdue.
  ///
  /// In en, this message translates to:
  /// **'Overdue {amount}'**
  String dashLeaseOverdue(String amount);

  /// No description provided for @dashLeaseOk.
  ///
  /// In en, this message translates to:
  /// **'No overdue'**
  String get dashLeaseOk;

  /// No description provided for @leasesEmpty.
  ///
  /// In en, this message translates to:
  /// **'No leases yet. Add your first one in the web app.'**
  String get leasesEmpty;

  /// No description provided for @leaseStatusActive.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get leaseStatusActive;

  /// No description provided for @leaseStatusDraft.
  ///
  /// In en, this message translates to:
  /// **'Draft'**
  String get leaseStatusDraft;

  /// No description provided for @leaseStatusEnded.
  ///
  /// In en, this message translates to:
  /// **'Ended'**
  String get leaseStatusEnded;

  /// No description provided for @unpaidTotal.
  ///
  /// In en, this message translates to:
  /// **'Unpaid {amount}'**
  String unpaidTotal(String amount);

  /// No description provided for @propertiesEmpty.
  ///
  /// In en, this message translates to:
  /// **'No properties yet. Add them in the web app.'**
  String get propertiesEmpty;

  /// No description provided for @markPaid.
  ///
  /// In en, this message translates to:
  /// **'Mark paid'**
  String get markPaid;

  /// No description provided for @pay.
  ///
  /// In en, this message translates to:
  /// **'Pay'**
  String get pay;

  /// No description provided for @paidAmountLabel.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get paidAmountLabel;

  /// No description provided for @paidAmountHint.
  ///
  /// In en, this message translates to:
  /// **'Enter the amount actually transferred. Rounding up is deducted from the next month\'s costs.'**
  String get paidAmountHint;

  /// No description provided for @paymentDate.
  ///
  /// In en, this message translates to:
  /// **'Payment date'**
  String get paymentDate;

  /// No description provided for @undoPayment.
  ///
  /// In en, this message translates to:
  /// **'Undo payment'**
  String get undoPayment;

  /// No description provided for @saveCosts.
  ///
  /// In en, this message translates to:
  /// **'Save costs'**
  String get saveCosts;

  /// No description provided for @publishMonth.
  ///
  /// In en, this message translates to:
  /// **'Publish month'**
  String get publishMonth;

  /// No description provided for @published.
  ///
  /// In en, this message translates to:
  /// **'Published'**
  String get published;

  /// No description provided for @costsSaved.
  ///
  /// In en, this message translates to:
  /// **'Costs saved.'**
  String get costsSaved;

  /// No description provided for @monthPublished.
  ///
  /// In en, this message translates to:
  /// **'Published. Tenants have been notified.'**
  String get monthPublished;

  /// No description provided for @enterBillHint.
  ///
  /// In en, this message translates to:
  /// **'Enter the total bill in the web app first.'**
  String get enterBillHint;

  /// No description provided for @billShort.
  ///
  /// In en, this message translates to:
  /// **'Bill'**
  String get billShort;

  /// No description provided for @tenantUsage.
  ///
  /// In en, this message translates to:
  /// **'Tenant usage'**
  String get tenantUsage;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// No description provided for @allocationConsumption.
  ///
  /// In en, this message translates to:
  /// **'By consumption'**
  String get allocationConsumption;

  /// No description provided for @allocationFixed.
  ///
  /// In en, this message translates to:
  /// **'Fixed'**
  String get allocationFixed;

  /// No description provided for @allocationPercentage.
  ///
  /// In en, this message translates to:
  /// **'Percentage'**
  String get allocationPercentage;

  /// No description provided for @allocationBillMinusFixed.
  ///
  /// In en, this message translates to:
  /// **'Bill minus fixed'**
  String get allocationBillMinusFixed;

  /// No description provided for @allocationManual.
  ///
  /// In en, this message translates to:
  /// **'Manual'**
  String get allocationManual;

  /// No description provided for @creditForward.
  ///
  /// In en, this message translates to:
  /// **'Carried forward: {amount}'**
  String creditForward(String amount);

  /// No description provided for @debtForward.
  ///
  /// In en, this message translates to:
  /// **'Owed forward: {amount}'**
  String debtForward(String amount);

  /// No description provided for @noRules.
  ///
  /// In en, this message translates to:
  /// **'No cost rules on this lease. Add them in the web app.'**
  String get noRules;

  /// No description provided for @rentAmount.
  ///
  /// In en, this message translates to:
  /// **'Rent amount'**
  String get rentAmount;

  /// No description provided for @settingsLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLanguage;

  /// No description provided for @languageSystem.
  ///
  /// In en, this message translates to:
  /// **'Phone default'**
  String get languageSystem;

  /// No description provided for @settingsNotifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get settingsNotifications;

  /// No description provided for @notificationsSwitch.
  ///
  /// In en, this message translates to:
  /// **'Push notifications'**
  String get notificationsSwitch;

  /// No description provided for @notificationsOnHint.
  ///
  /// In en, this message translates to:
  /// **'New costs to pay and rent reminders.'**
  String get notificationsOnHint;

  /// No description provided for @notificationsOffHint.
  ///
  /// In en, this message translates to:
  /// **'Off on this phone.'**
  String get notificationsOffHint;

  /// No description provided for @notificationsBlockedHint.
  ///
  /// In en, this message translates to:
  /// **'Blocked in your phone\'s settings. Tap to allow.'**
  String get notificationsBlockedHint;

  /// No description provided for @settingsSubscription.
  ///
  /// In en, this message translates to:
  /// **'Subscription'**
  String get settingsSubscription;

  /// No description provided for @planFree.
  ///
  /// In en, this message translates to:
  /// **'Free'**
  String get planFree;

  /// No description provided for @planPro.
  ///
  /// In en, this message translates to:
  /// **'Pro'**
  String get planPro;

  /// No description provided for @planBusiness.
  ///
  /// In en, this message translates to:
  /// **'Business'**
  String get planBusiness;

  /// No description provided for @planLegacy.
  ///
  /// In en, this message translates to:
  /// **'Full access'**
  String get planLegacy;

  /// No description provided for @renewsOn.
  ///
  /// In en, this message translates to:
  /// **'Renews {date}'**
  String renewsOn(String date);

  /// No description provided for @usageProperties.
  ///
  /// In en, this message translates to:
  /// **'Properties: {used} / {limit}'**
  String usageProperties(int used, String limit);

  /// No description provided for @usageLeases.
  ///
  /// In en, this message translates to:
  /// **'Leases: {used} / {limit}'**
  String usageLeases(int used, String limit);

  /// No description provided for @openWebApp.
  ///
  /// In en, this message translates to:
  /// **'Open RentLOG on the web'**
  String get openWebApp;

  /// No description provided for @switchToTenant.
  ///
  /// In en, this message translates to:
  /// **'Switch to tenant view'**
  String get switchToTenant;

  /// No description provided for @switchToLandlord.
  ///
  /// In en, this message translates to:
  /// **'Switch to landlord view'**
  String get switchToLandlord;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get signOut;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get deleteAccount;

  /// No description provided for @deleteAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete your account?'**
  String get deleteAccountTitle;

  /// No description provided for @deleteAccountBody.
  ///
  /// In en, this message translates to:
  /// **'Your access to leases is removed right away. Properties and leases you own are permanently deleted after 30 days. Sign in again before then to cancel.'**
  String get deleteAccountBody;

  /// No description provided for @deleteAccountConfirm.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get deleteAccountConfirm;

  /// No description provided for @deletionScheduled.
  ///
  /// In en, this message translates to:
  /// **'Your account is scheduled for deletion on {date}.'**
  String deletionScheduled(String date);

  /// No description provided for @cancelDeletion.
  ///
  /// In en, this message translates to:
  /// **'Keep my account'**
  String get cancelDeletion;

  /// No description provided for @appVersion.
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String appVersion(String version);

  /// No description provided for @notificationChannelName.
  ///
  /// In en, this message translates to:
  /// **'Charges and reminders'**
  String get notificationChannelName;

  /// No description provided for @notificationChannelDescription.
  ///
  /// In en, this message translates to:
  /// **'New costs to pay and rent reminders.'**
  String get notificationChannelDescription;

  /// No description provided for @defaultOrganizationName.
  ///
  /// In en, this message translates to:
  /// **'My rentals'**
  String get defaultOrganizationName;

  /// No description provided for @showDetails.
  ///
  /// In en, this message translates to:
  /// **'Show details'**
  String get showDetails;

  /// No description provided for @hideDetails.
  ///
  /// In en, this message translates to:
  /// **'Hide details'**
  String get hideDetails;

  /// No description provided for @navMonth.
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get navMonth;

  /// No description provided for @stepMeters.
  ///
  /// In en, this message translates to:
  /// **'Meters'**
  String get stepMeters;

  /// No description provided for @stepBills.
  ///
  /// In en, this message translates to:
  /// **'Bills'**
  String get stepBills;

  /// No description provided for @stepReview.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get stepReview;

  /// No description provided for @mainMeter.
  ///
  /// In en, this message translates to:
  /// **'Main meter'**
  String get mainMeter;

  /// No description provided for @previousReadingValue.
  ///
  /// In en, this message translates to:
  /// **'Previous: {value}'**
  String previousReadingValue(String value);

  /// No description provided for @missingPreviousReading.
  ///
  /// In en, this message translates to:
  /// **'No reading for {month} yet, so usage can\'t be calculated.'**
  String missingPreviousReading(String month);

  /// No description provided for @openMonth.
  ///
  /// In en, this message translates to:
  /// **'Open {month}'**
  String openMonth(String month);

  /// No description provided for @noMeteredUtilities.
  ///
  /// In en, this message translates to:
  /// **'This property has no metered utilities.'**
  String get noMeteredUtilities;

  /// No description provided for @totalBill.
  ///
  /// In en, this message translates to:
  /// **'Total bill'**
  String get totalBill;

  /// No description provided for @totalUsage.
  ///
  /// In en, this message translates to:
  /// **'Total usage'**
  String get totalUsage;

  /// No description provided for @usageFromMeters.
  ///
  /// In en, this message translates to:
  /// **'Usage from meters: {usage}'**
  String usageFromMeters(String usage);

  /// No description provided for @usageFromMetersMissing.
  ///
  /// In en, this message translates to:
  /// **'Usage appears once both meter readings are in.'**
  String get usageFromMetersMissing;

  /// No description provided for @noCostsToEnter.
  ///
  /// In en, this message translates to:
  /// **'No cost rules on this property\'s leases yet. Add them in the web app.'**
  String get noCostsToEnter;

  /// No description provided for @noActiveLeasesOnProperty.
  ///
  /// In en, this message translates to:
  /// **'This property has no active leases.'**
  String get noActiveLeasesOnProperty;

  /// No description provided for @monthNotInLease.
  ///
  /// In en, this message translates to:
  /// **'This month isn\'t part of the lease.'**
  String get monthNotInLease;

  /// No description provided for @draft.
  ///
  /// In en, this message translates to:
  /// **'Draft'**
  String get draft;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get next;

  /// No description provided for @calculating.
  ///
  /// In en, this message translates to:
  /// **'Calculating…'**
  String get calculating;

  /// No description provided for @publishedToTenants.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{Nothing new to publish.} =1{Published. 1 tenant was notified.} other{Published. {count} tenants were notified.}}'**
  String publishedToTenants(int count);

  /// No description provided for @allPublished.
  ///
  /// In en, this message translates to:
  /// **'Everything for {month} is published.'**
  String allPublished(String month);

  /// No description provided for @chooseProperty.
  ///
  /// In en, this message translates to:
  /// **'Choose a property'**
  String get chooseProperty;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'sl'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'sl': return AppLocalizationsSl();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
