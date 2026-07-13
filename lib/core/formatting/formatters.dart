import 'package:intl/intl.dart';

/// Formatage localisé (fr) des montants et dates, centralisé pour l'app.
class Formatters {
  const Formatters._();

  static final NumberFormat _amount = NumberFormat.decimalPattern('fr');
  static final DateFormat _dayTime = DateFormat('EEE d MMM · HH:mm', 'fr_FR');
  static final DateFormat _day = DateFormat('EEEE d MMMM y', 'fr_FR');

  /// Montant en francs CFA, ex. `5 000 FCFA`.
  static String money(int? amount) {
    if (amount == null) return '—';
    return '${_amount.format(amount)} FCFA';
  }

  /// Date + heure courte, ex. `lun. 14 juil. · 08:30`.
  static String dateTime(DateTime? date) {
    if (date == null) return '—';
    return _dayTime.format(date.toLocal());
  }

  /// Date longue, ex. `lundi 14 juillet 2026`.
  static String dateLong(DateTime? date) {
    if (date == null) return '—';
    return _day.format(date.toLocal());
  }
}
