import 'package:flutter/material.dart';

import '../../core/core.dart';

class BaseTextFieldWD extends StatelessWidget {
  const BaseTextFieldWD({
    required this.controller,
    this.obsecureText = false,
    this.fixedSize = false,
    this.height,
    this.width,
    this.labelText,
    this.onChanged,
    this.onSubmitted,
    this.onTapOutside,
    this.enabled,
    this.errorText,
    this.focusNode,
    this.backgroundColor,
    this.prefixIcon,
    this.hintText,
    this.inputTextStyle,
    this.errorTextStyle,
    this.keyboardType,
    this.focusColor,
    this.prefixIconColor,
    this.labelStyle,
    this.hintStyle,
    this.contentPadding,
    this.focusesBorder,
    this.focusesErrorBorder,
    this.errorBorder,
    this.enabledBorder,
    this.prefix,
    this.suffix,
    this.suffixIcon,
    this.suffixIconColor,
    this.textAlignVertical,
    this.prefixIconConstraints,
    this.suffixIconConstraints,
    this.cursorColor,
    this.cursorHeight,
    this.showClearMessageWhenInsertMessage = false,
    this.onClearText,
    this.currentText,
    this.maxLines,
    super.key,
  });

  final TextEditingController controller;
  final void Function(String? value)? onChanged;
  final void Function(String? value)? onSubmitted;
  final void Function(PointerDownEvent e)? onTapOutside;
  final bool? enabled;
  final String? errorText;
  final FocusNode? focusNode;
  final Color? focusColor;
  final Color? backgroundColor;
  final Widget? prefix;
  final Widget? prefixIcon;
  final Color? prefixIconColor;
  final Widget? suffix;
  final Widget? suffixIcon;
  final Color? suffixIconColor;
  final String? labelText;
  final TextStyle? labelStyle;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
  final bool obsecureText;
  final TextStyle? errorTextStyle;
  final TextInputType? keyboardType;
  final EdgeInsets? contentPadding;
  final InputBorder? focusesBorder;
  final InputBorder? focusesErrorBorder;
  final InputBorder? errorBorder;
  final InputBorder? enabledBorder;
  final bool fixedSize;
  final double? height;
  final double? width;
  final TextAlignVertical? textAlignVertical;
  final BoxConstraints? prefixIconConstraints;
  final BoxConstraints? suffixIconConstraints;
  final Color? cursorColor;
  final double? cursorHeight;
  final bool showClearMessageWhenInsertMessage;
  final VoidCallback? onClearText;
  final String? currentText;
  final int? maxLines;

  BoxConstraints? _getSuffixIconConstraints() {
    if (showClearMessageWhenInsertMessage) {
      return const BoxConstraints(minWidth: 0);
    }
    return suffixIconConstraints ??
        const BoxConstraints(
          minHeight: 12,
          maxWidth: 25.25,
        );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: fixedSize ? height : null,
      width: fixedSize ? width : null,
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        focusNode: focusNode,
        enabled: enabled,
        maxLines: maxLines ?? 1,
        cursorColor: cursorColor ?? DesignSystem.primary,
        cursorHeight: cursorHeight ?? 15,
        onTapOutside: onTapOutside ?? (e) => FocusScope.of(context).requestFocus(FocusNode()),
        style: inputTextStyle?.copyWith(height: 1.25) ??
            const TextStyle(
              color: DesignSystem.g0,
              fontSize: 13,
              fontWeight: FontWeight.w500,
              height: 1.25,
            ),
        obscureText: obsecureText,
        keyboardType: keyboardType,
        textAlign: TextAlign.start,
        textAlignVertical: textAlignVertical ?? TextAlignVertical.center,
        decoration: InputDecoration(
          isDense: true,
          prefix: prefix,
          prefixIcon: prefixIcon,
          prefixIconColor: prefixIconColor ?? DesignSystem.primary,
          prefixIconConstraints: prefixIconConstraints ??
              const BoxConstraints(
                minHeight: 12,
                maxWidth: 25.25,
              ),
          suffix: suffix,
          suffixIconColor: suffixIconColor,
          suffixIconConstraints: _getSuffixIconConstraints(),
          errorText: errorText,
          errorStyle: errorTextStyle ??
              const TextStyle(
                color: DesignSystem.error,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
          filled: backgroundColor != null,
          fillColor: backgroundColor,
          focusColor: focusColor ?? DesignSystem.primary,
          contentPadding: contentPadding ?? EdgeInsets.zero,
          hintText: hintText,
          hintStyle: hintStyle ??
              const TextStyle(
                color: Colors.grey,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
          labelText: labelText,
          labelStyle: labelStyle,
          focusedBorder: focusesBorder ??
              const UnderlineInputBorder(borderSide: BorderSide(width: 1, color: DesignSystem.primary)),
          focusedErrorBorder: focusesErrorBorder ??
              const UnderlineInputBorder(borderSide: BorderSide(width: 1, color: DesignSystem.primary)),
          errorBorder:
              errorBorder ?? const UnderlineInputBorder(borderSide: BorderSide(width: 1, color: DesignSystem.error)),
          enabledBorder:
              enabledBorder ?? const UnderlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.grey)),
        ),
      ),
    );
  }
}
