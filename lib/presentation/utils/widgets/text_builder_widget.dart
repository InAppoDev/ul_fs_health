import 'package:flutter/material.dart';

import '../../../core/constants/gaps.dart';
import '../../../core/extensions/list_extension.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../l10n/localizations_utils.dart';
import '../model/text_model.dart';

class TextBuilderWidget extends StatelessWidget {
  const TextBuilderWidget({super.key, required this.placeholders});

  final List<TextModel> placeholders;

  @override
  Widget build(BuildContext context) {
   return RichText(
       text: TextSpan(children: [
         TextSpan(text: appLocalizations.textWithNewLine(placeholders.maybeGet(0)?.text ?? ''), style: body1),
         WidgetSpan(child: Gaps.largest.spaceVertical),
         TextSpan(text: appLocalizations.testInstructionFirstPartText, style: body1),
         TextSpan(text: placeholders.maybeGet(1)?.text ?? '', style: placeholders.maybeGet(1)?.style ?? body1),
         TextSpan(
             text: appLocalizations.testStartText,
             style: body1.copyWith(
                 color: ColorScheme.of(context).primary, fontWeight: FontWeight.w700)),
         TextSpan(text: appLocalizations.testInstructionSecondPartText, style: body1),
         TextSpan(
             text: appLocalizations.testInstructionBoldText,
             style: body1.copyWith(fontWeight: FontWeight.w700)),
         TextSpan(
             text: placeholders.maybeGet(2)?.text ?? '',
             style: placeholders.maybeGet(2)?.style ?? body1),
         WidgetSpan(child: Gaps.largest.spaceVertical),
       TextSpan(
           children: [
             TextSpan(
                 text: appLocalizations.testInstructionAlertFirstText,
                 style: body1
             ),
             TextSpan(
               text: placeholders.maybeGet(3)?.text ?? '',
               style: placeholders.maybeGet(3)?.style ?? body1,
             ),
             TextSpan(
               text: appLocalizations.testInstructionBoldLowerText,
               style: body1.copyWith(fontWeight: FontWeight.w700),
             ),
             TextSpan(
                 text: appLocalizations.testInstructionAlertSecondText,
                 style: body1
             )
           ])
       ]));
  }
}