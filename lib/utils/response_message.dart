import 'package:flutter/material.dart';

import 'flash.dart';

void responseMessage(menssage, statusCode, BuildContext context) {
  switch (statusCode) {
    case ('error'):
      showError(
        context: context,
        text: menssage,
      );
      break;
    case ('sucess'):
      showSuccess(
        context: context,
        text: menssage,
      );
      break;
    case ('warning'):
      showWarning(
        context: context,
        text: menssage,
      );
      break;
    default:
  }
}
