// dart format off
// coverage:ignore-file

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get appName => 'RentLOG';

  @override
  String get retry => 'Poskusi znova';

  @override
  String get cancel => 'Prekliči';

  @override
  String get save => 'Shrani';

  @override
  String get genericError => 'Nekaj je šlo narobe. Poskusi znova.';

  @override
  String get networkError => 'Ni povezave. Preveri internet in poskusi znova.';

  @override
  String get notInPlan => 'To ni vključeno v tvoj trenutni paket.';

  @override
  String get sessionExpired => 'Seja je potekla. Prijavi se znova.';

  @override
  String get openOnWeb => 'Odpri na spletu';

  @override
  String get openOnWebHint => 'Več možnosti je v spletni aplikaciji.';

  @override
  String get signInTitle => 'Prijava';

  @override
  String get signInSubtitle => 'Vnesi e-pošto in poslali ti bomo kodo za prijavo.';

  @override
  String get emailLabel => 'E-pošta';

  @override
  String get sendCode => 'Pošlji kodo';

  @override
  String get invalidEmail => 'Vnesi veljaven e-naslov.';

  @override
  String get codeTitle => 'Preveri e-pošto';

  @override
  String codeSubtitle(String email) {
    return 'Na $email smo poslali 6-mestno kodo.';
  }

  @override
  String get codeLabel => 'Koda';

  @override
  String get verify => 'Nadaljuj';

  @override
  String get resendCode => 'Pošlji novo kodo';

  @override
  String get codeResent => 'Nova koda je poslana.';

  @override
  String get useDifferentEmail => 'Uporabi drug e-naslov';

  @override
  String get invalidCode => 'Koda ni pravilna. Preveri jo in poskusi znova.';

  @override
  String get noAccountPrompt => 'Novi v RentLOG?';

  @override
  String get createAccount => 'Ustvari račun';

  @override
  String get haveAccountPrompt => 'Že imaš račun?';

  @override
  String get signUpTitle => 'Ustvari račun';

  @override
  String get signUpSubtitle => 'Po e-pošti ti bomo poslali kodo za potrditev naslova.';

  @override
  String get firstNameLabel => 'Ime';

  @override
  String get lastNameLabel => 'Priimek';

  @override
  String get passwordLabel => 'Geslo';

  @override
  String get passwordHint => 'Vsaj 8 znakov.';

  @override
  String get acceptTermsPrefix => 'Strinjam se s ';

  @override
  String get termsLink => 'pogoji uporabe';

  @override
  String get acceptTermsAnd => ' in ';

  @override
  String get privacyLink => 'politiko zasebnosti';

  @override
  String get fieldRequired => 'Obvezno.';

  @override
  String get mustAcceptTerms => 'Za nadaljevanje sprejmi pogoje.';

  @override
  String get noAccountForEmail => 'Za ta e-naslov še ni računa. Ga ustvariš?';

  @override
  String get accountExists => 'Račun s tem e-naslovom že obstaja. Raje se prijavi.';

  @override
  String get passwordTooShort => 'Geslo mora imeti vsaj 8 znakov.';

  @override
  String get passwordPwned => 'To geslo se je pojavilo v uhajanju podatkov. Izberi drugo.';

  @override
  String get signUpBlocked => 'Registracija iz aplikacije je trenutno onemogočena. Račun ustvari na rent-log.app in se prijavi tukaj.';

  @override
  String get onboardingTitle => 'Dobrodošli v RentLOG';

  @override
  String get onboardingSubtitle => 'Kaj želiš narediti?';

  @override
  String get onboardingTenant => 'Imam kodo povabila';

  @override
  String get onboardingTenantHint => 'Lastnik ti je dal 8-mestno kodo.';

  @override
  String get onboardingLandlord => 'Oddajam nepremičnino';

  @override
  String get onboardingLandlordHint => 'Spremljaj najemnine, stroške in plačila.';

  @override
  String get inviteTitle => 'Vnesi kodo povabila';

  @override
  String get inviteLabel => 'Koda povabila';

  @override
  String get inviteCheck => 'Preveri kodo';

  @override
  String get inviteJoin => 'Pridruži se';

  @override
  String inviteFor(String tenant) {
    return 'Pogodba za $tenant';
  }

  @override
  String get inviteInvalid => 'Ta koda ni veljavna.';

  @override
  String get inviteRevoked => 'Ta koda je bila preklicana. Prosi lastnika za novo.';

  @override
  String get inviteUsed => 'Ta koda je že bila uporabljena.';

  @override
  String get navHome => 'Domov';

  @override
  String get navDocuments => 'Dokumenti';

  @override
  String get navSettings => 'Nastavitve';

  @override
  String get navOverview => 'Pregled';

  @override
  String get navLeases => 'Pogodbe';

  @override
  String get navProperties => 'Nepremičnine';

  @override
  String get monthlyRent => 'Mesečna najemnina';

  @override
  String get deposit => 'Varščina';

  @override
  String get history => 'Zgodovina';

  @override
  String get rent => 'Najemnina';

  @override
  String costsForMonth(String month) {
    return 'Stroški za $month';
  }

  @override
  String get total => 'Skupaj';

  @override
  String creditCarried(String month) {
    return 'Preplačilo iz $month';
  }

  @override
  String debtCarried(String month) {
    return 'Doplačilo iz $month';
  }

  @override
  String get payableTotal => 'Za plačilo';

  @override
  String get statusPaid => 'Plačano';

  @override
  String get statusOverdue => 'V zamudi';

  @override
  String get statusDue => 'Odprto';

  @override
  String delayRent(int days) {
    return 'Najemnina +$days dni';
  }

  @override
  String delayUtilities(int days) {
    return 'Stroški +$days dni';
  }

  @override
  String dueOn(String date) {
    return 'Rok $date';
  }

  @override
  String paidOn(String date) {
    return 'Plačano $date';
  }

  @override
  String get noLease => 'Ni še povezane pogodbe. Prosi lastnika za kodo povabila.';

  @override
  String get enterInviteCode => 'Vnesi kodo povabila';

  @override
  String get noCharges => 'Še ni obračunov.';

  @override
  String get chooseLease => 'Izberi pogodbo';

  @override
  String get meters => 'Števci';

  @override
  String get meterReading => 'Stanje';

  @override
  String get meterUsage => 'Poraba';

  @override
  String get documentsEmpty => 'Lastnik še ni delil nobenega dokumenta.';

  @override
  String get documentUnavailable => 'Ta dokument ni več na voljo.';

  @override
  String get dashRentThisMonth => 'Najemnina ta mesec';

  @override
  String get dashUtilitiesThisMonth => 'Stroški ta mesec';

  @override
  String get dashOverdue => 'V zamudi';

  @override
  String dashOverdueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count postavk',
      few: '$count postavke',
      two: '2 postavki',
      one: '1 postavka',
    );
    return '$_temp0';
  }

  @override
  String dashExpectedRent(String amount) {
    return 'Pričakovano $amount/mes.';
  }

  @override
  String dashCollectedYear(String year) {
    return 'Zbrano $year';
  }

  @override
  String get dashNeedsAttention => 'Zahteva pozornost';

  @override
  String get dashAllClear => 'Ni zapadlih ali zamujenih postavk.';

  @override
  String dashLeaseOverdue(String amount) {
    return 'Zamuda $amount';
  }

  @override
  String get dashLeaseOk => 'Brez zamud';

  @override
  String get leasesEmpty => 'Ni pogodb. Prvo dodaj v spletni aplikaciji.';

  @override
  String get leaseStatusActive => 'Aktivna';

  @override
  String get leaseStatusDraft => 'Osnutek';

  @override
  String get leaseStatusEnded => 'Končana';

  @override
  String unpaidTotal(String amount) {
    return 'Odprto $amount';
  }

  @override
  String get propertiesEmpty => 'Ni nepremičnin. Dodaj jih v spletni aplikaciji.';

  @override
  String unitsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count enot',
      few: '$count enote',
      two: '2 enoti',
      one: '1 enota',
      zero: 'Ni enot',
    );
    return '$_temp0';
  }

  @override
  String get ownerOccupied => 'Uporablja lastnik';

  @override
  String get markPaid => 'Označi plačano';

  @override
  String get pay => 'Plačaj';

  @override
  String get paidAmountLabel => 'Plačano';

  @override
  String get paidAmountHint => 'Vnesi dejansko nakazan znesek. Če je zaokrožen navzgor, se razlika odšteje pri naslednjih stroških.';

  @override
  String get paymentDate => 'Datum plačila';

  @override
  String get undoPayment => 'Razveljavi plačilo';

  @override
  String get saveCosts => 'Shrani stroške';

  @override
  String get publishMonth => 'Objavi mesec';

  @override
  String get published => 'Objavljeno';

  @override
  String get costsSaved => 'Stroški so shranjeni.';

  @override
  String get monthPublished => 'Objavljeno. Najemniki so obveščeni.';

  @override
  String get enterBillHint => 'Najprej vnesi skupni račun v spletni aplikaciji.';

  @override
  String get billShort => 'Račun';

  @override
  String get tenantUsage => 'Poraba najemnika';

  @override
  String get amount => 'Znesek';

  @override
  String get allocationConsumption => 'Po porabi';

  @override
  String get allocationFixed => 'Fiksno';

  @override
  String get allocationPercentage => 'Odstotek';

  @override
  String get allocationBillMinusFixed => 'Račun − fiksni stroški';

  @override
  String get allocationManual => 'Ročno';

  @override
  String creditForward(String amount) {
    return 'Preplačilo za naprej: $amount';
  }

  @override
  String debtForward(String amount) {
    return 'Doplačilo za naprej: $amount';
  }

  @override
  String get noRules => 'Ta pogodba nima pravil stroškov. Dodaj jih v spletni aplikaciji.';

  @override
  String get rentAmount => 'Znesek najemnine';

  @override
  String get settingsLanguage => 'Jezik';

  @override
  String get languageSystem => 'Kot na telefonu';

  @override
  String get settingsNotifications => 'Obvestila';

  @override
  String get notificationsOn => 'Vklopljena';

  @override
  String get notificationsOff => 'Izklopljena. Vklopi jih v nastavitvah telefona.';

  @override
  String get settingsSubscription => 'Naročnina';

  @override
  String get planFree => 'Free';

  @override
  String get planPro => 'Pro';

  @override
  String get planBusiness => 'Business';

  @override
  String get planLegacy => 'Polni dostop';

  @override
  String renewsOn(String date) {
    return 'Obnovi se $date';
  }

  @override
  String usageProperties(int used, String limit) {
    return 'Nepremičnine: $used / $limit';
  }

  @override
  String usageLeases(int used, String limit) {
    return 'Pogodbe: $used / $limit';
  }

  @override
  String get openWebApp => 'Odpri RentLOG na spletu';

  @override
  String get switchToTenant => 'Preklopi na pogled najemnika';

  @override
  String get switchToLandlord => 'Preklopi na pogled lastnika';

  @override
  String get signOut => 'Odjava';

  @override
  String get deleteAccount => 'Izbriši račun';

  @override
  String get deleteAccountTitle => 'Izbrišem tvoj račun?';

  @override
  String get deleteAccountBody => 'Dostop do pogodb se odstrani takoj. Nepremičnine in pogodbe, ki so tvoje, se trajno izbrišejo po 30 dneh. Če se prej znova prijaviš, lahko izbris prekličeš.';

  @override
  String get deleteAccountConfirm => 'Izbriši';

  @override
  String deletionScheduled(String date) {
    return 'Tvoj račun bo izbrisan $date.';
  }

  @override
  String get cancelDeletion => 'Obdrži račun';

  @override
  String appVersion(String version) {
    return 'Različica $version';
  }

  @override
  String get notificationChannelName => 'Obračuni in opomniki';

  @override
  String get notificationChannelDescription => 'Novi stroški za plačilo in opomniki za najemnino.';

  @override
  String get defaultOrganizationName => 'Moje najemnine';
}
