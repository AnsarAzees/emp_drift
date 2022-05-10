import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? Function(String? value)? validation;
  final ValueChanged<String>? onChanged;
  final String? labelText;
  final TextInputType keyboardType;
  final bool? isEditable;
  final Widget? suffix;
  final Widget? prefix;
  final bool autoFocus;
  final List<TextInputFormatter>? inputFormatter;
  final int? maxLines;

  const InputTextField(
      {Key? key,
      this.hintText,
      this.inputFormatter,
      this.validation,
      this.labelText,
      this.controller,
      this.keyboardType = TextInputType.text,
      this.onChanged,
      this.isEditable,
      this.suffix,
      this.prefix,
      this.autoFocus = false,
      this.maxLines = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.grey.shade200,
      ),
      margin: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          if (validation != null)
            Container(
              width: 2,
              height: 55,
              color: Colors.red,
            ),
          Expanded(
            child: IgnorePointer(
              ignoring: !(isEditable ?? true),
              child: TextFormField(
                validator: validation,
                keyboardType: keyboardType,
                controller: controller,
                onChanged: onChanged,
                autofocus: autoFocus,
                inputFormatters: inputFormatter,
                maxLines: maxLines,
                textCapitalization: TextCapitalization.sentences,
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                  suffixIcon: suffix,
                  icon: prefix,
                  border: InputBorder.none,
                  hintText: hintText,
                  labelText: labelText,
                  contentPadding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 0, top: 0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
