import 'package:cargo/cargo.dart';

class TextFormFieldValidatorFactory {
  static TextFormFieldValidator build(
    List<ValidationType> validators, {
    int index = 0,
  }) {
    if (validators == null ||
        validators.isEmpty ||
        index >= validators.length) {
      return NoFormFieldValidator();
    }

    switch (validators[index]) {
      case ValidationType.email:
        return EmailFormFieldValidator(
          next: build(validators, index: index + 1),
        );
      case ValidationType.password:
        return PasswordFormFieldValidator(
          next: build(validators, index: index + 1),
        );
      case ValidationType.creditCardOverdue:
        return CreditCardOverdueFormValidator(
          next: build(validators, index: index + 1),
        );
      case ValidationType.required:
        return RequiredFormFieldValidator(
          next: build(validators, index: index + 1),
        );
      case ValidationType.birthday:
        return BirthdayFormFieldValidator(
          next: build(validators, index: index + 1),
        );
      case ValidationType.cellphone:
        return CellphoneFormFieldValidator(
          next: build(validators, index: index + 1),
        );
      default:
        return NoFormFieldValidator();
    }
  }
}
