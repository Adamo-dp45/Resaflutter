import 'package:flutter/material.dart';

/// Liste déroulante étiquetée et « contrôlée » (la valeur reflète l'état).
///
/// S'appuie sur [DropdownButton] (et non `DropdownButtonFormField`) pour rester
/// pilotée par [value] sans dépendre d'API dépréciées, tout en gardant le style
/// des champs de formulaire via [InputDecorator].
class LabeledDropdown<T> extends StatelessWidget {
  const LabeledDropdown({
    super.key,
    required this.label,
    required this.value,
    required this.items,
    required this.onChanged,
    this.hint,
    this.loading = false,
    this.icon,
  });

  final String label;
  final T? value;
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T?>? onChanged;
  final String? hint;
  final bool loading;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final enabled = onChanged != null && !loading;
    return InputDecorator(
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: icon != null ? Icon(icon) : null,
        enabled: enabled,
        suffixIcon: loading
            ? const Padding(
                padding: EdgeInsets.all(12),
                child: SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              )
            : null,
      ),
      isEmpty: value == null,
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          isExpanded: true,
          value: value,
          hint: hint != null ? Text(hint!) : null,
          items: items,
          onChanged: enabled ? onChanged : null,
        ),
      ),
    );
  }
}
