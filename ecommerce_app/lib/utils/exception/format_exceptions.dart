class TFormatException implements Exception {
  // The error message associated with the exception
  final String message;

  // Default constructor with a generic error message
  const TFormatException([this.message = 'An unexpected format error occurred. Please check your input']);

  // Create a format exception from a specific error message
  factory TFormatException.formMessage(String message) {
    return TFormatException(message);
  }

  // Get the corresponding error message
  String get formattedMessage => message;

  // Create a format exception from a specific error code
  factory TFormatException.formCode(String code) {
    String message;
    switch (code) {
      case 'invalid-email-format':
        message = 'The email address format is invalid. Please enter a valid email.';
        break;
      case 'invalid-phone-format':
        message = 'The phone number format is invalid. Please enter a valid phone number.';
        break;
      case 'empty-field':
        message = 'This field cannot be empty. Please fill it out.';
        break;
      case 'password-too-short':
        message = 'The password is too short. It must be at least 8 characters.';
        break;
      case 'password-mismatch':
        message = 'The passwords do not match. Please re-enter them.';
        break;
      case 'invalid-date-format':
        message = 'The date format is invalid. Please use the correct format.';
        break;
      case 'invalid-zip-code':
        message = 'The zip code format is invalid. Please enter a valid zip code.';
        break;
      case 'unsupported-file-type':
        message = 'The file type is not supported. Please upload a valid file.';
        break;
      case 'empty-username':
        message = 'Username cannot be empty. Please enter a username.';
        break;
      case 'user-not-found':
        message = 'User not found. Please check your credentials.';
        break;
      case 'invalid-credit-card-format':
        message = 'The credit card number format is invalid. Please enter a valid credit card number.';
        break;
      case 'expired-link':
        message = 'The link has expired. Please request a new one.';
        break;
      case 'invalid-input':
        message = 'The input provided is invalid. Please check and try again.';
        break;
      case 'field-required':
        message = 'This field is required. Please fill it out.';
        break;
      case 'user-already-exists':
        message = 'A user with this email already exists.';
        break;
      case 'invalid-url':
        message = 'The URL format is invalid. Please enter a valid URL.';
        break;
      case 'invalid-file-size':
        message = 'The file is too large. Please upload a smaller file.';
        break;
      case 'invalid-file-extension':
        message = 'Invalid file extension. Please upload a supported file type.';
        break;
      case 'too-many-requests':
        message = 'You have exceeded the maximum number of requests. Please try again later.';
        break;
      case 'unauthorized':
        message = 'You are not authorized to perform this action.';
        break;
      case 'access-denied':
        message = 'Access denied. Please check your permissions.';
        break;
      case 'invalid-currency-format':
        message = 'The currency format is invalid. Please enter a valid currency value.';
        break;
      case 'session-expired':
        message = 'Your session has expired. Please log in again.';
        break;
      case 'account-locked':
        message = 'Your account is locked. Please contact support.';
        break;
      case 'account-not-verified':
        message = 'Your account is not verified. Please verify your account.';
        break;
      case 'invalid-age':
        message = 'The age you entered is invalid. Please enter a valid age.';
        break;
      case 'invalid-gender':
        message = 'The gender selected is invalid. Please select a valid gender.';
        break;
      case 'invalid-country-code':
        message = 'The country code is invalid. Please enter a valid country code.';
        break;
      case 'invalid-city':
        message = 'The city name entered is invalid. Please enter a valid city.';
        break;
      case 'invalid-address':
        message = 'The address format is invalid. Please check your address.';
        break;
      case 'invalid-time-format':
        message = 'The time format is invalid. Please enter a valid time.';
        break;
      case 'invalid-date-range':
        message = 'The date range is invalid. Please select a valid date range.';
        break;
      case 'field-too-long':
        message = 'The input is too long. Please shorten it.';
        break;
      case 'invalid-birthdate':
        message = 'The birthdate is invalid. Please enter a valid date.';
        break;
      case 'age-restriction':
        message = 'You must be over 18 to proceed.';
        break;
      case 'password-requirements':
        message = 'Password does not meet the required criteria. Please check your password.';
        break;
      case 'invalid-phone-number':
        message = 'The phone number entered is invalid. Please enter a valid phone number.';
        break;
      case 'invalid-postal-code':
        message = 'The postal code format is invalid. Please enter a valid postal code.';
        break;
      case 'invalid-ssn':
        message = 'The Social Security Number (SSN) format is invalid. Please enter a valid SSN.';
        break;
      case 'username-taken':
        message = 'The username is already taken. Please choose another one.';
        break;
      case 'invalid-security-question':
        message = 'The security question answer is invalid. Please provide the correct answer.';
        break;
      case 'invalid-security-answer':
        message = 'The security answer is incorrect. Please try again.';
        break;
      case 'invalid-address-line':
        message = 'One or more address lines are invalid. Please check the address.';
        break;
      case 'invalid-credit-card-expiry':
        message = 'The credit card expiration date is invalid. Please enter a valid expiration date.';
        break;
      case 'invalid-credit-card-cvc':
        message = 'The credit card CVC code is invalid. Please enter the correct code.';
        break;
      case 'captcha-failed':
        message = 'Captcha verification failed. Please try again.';
        break;
      case 'invalid-password-strength':
        message = 'Password is too weak. Please choose a stronger password.';
        break;
      case 'username-too-long':
        message = 'The username is too long. Please choose a shorter username.';
        break;
      case 'invalid-phone-number-length':
        message = 'The phone number length is invalid. Please enter a valid number.';
        break;
      case 'country-not-supported':
        message = 'The selected country is not supported.';
        break;
      case 'email-already-in-use':
        message = 'The email is already in use. Please use a different email.';
        break;
      case 'invalid-terms-acceptance':
        message = 'You must accept the terms and conditions to proceed.';
        break;
      case 'session-timed-out':
        message = 'Your session has timed out. Please log in again.';
        break;
      case 'invalid-otp':
        message = 'The OTP entered is invalid. Please check and try again.';
        break;
      case 'otp-expired':
        message = 'The OTP has expired. Please request a new one.';
        break;
      case 'incorrect-otp':
        message = 'Incorrect OTP. Please enter the correct one.';
        break;
      case 'invalid-username-password':
        message = 'The username or password is incorrect. Please try again.';
        break;
      case 'invalid-login-credentials':
        message = 'The login credentials are invalid. Please check your username and password.';
        break;
      case 'not-enough-credits':
        message = 'You do not have enough credits to perform this action.';
        break;
      case 'operation-failed':
        message = 'The operation failed. Please try again later.';
        break;
      case 'invalid-token':
        message = 'The token is invalid. Please log in again.';
        break;
      case 'token-expired':
        message = 'The token has expired. Please log in again.';
        break;
      case 'missing-parameter':
        message = 'A required parameter is missing. Please check your input.';
        break;
      case 'too-many-files':
        message = 'You have uploaded too many files. Please reduce the number of files.';
        break;
      case 'invalid-image-format':
        message = 'The image format is invalid. Please upload a valid image.';
        break;
      case 'file-too-large':
        message = 'The file is too large. Please upload a smaller file.';
        break;
      case 'email-not-verified':
        message = 'Your email address is not verified. Please verify your email.';
        break;
      case 'invalid-authentication':
        message = 'Authentication failed. Please try again.';
        break;
      case 'user-inactive':
        message = 'Your account is inactive. Please contact support.';
        break;
      case 'incorrect-password':
        message = 'The password you entered is incorrect. Please try again.';
        break;
      case 'unknown-error':
        message = 'An unknown error occurred. Please try again later.';
        break;
      case 'invalid-access-token':
        message = 'The access token is invalid. Please log in again.';
        break;
      case 'no-connection':
        message = 'No internet connection. Please check your network and try again.';
        break;
      case 'invalid-response':
        message = 'The response received is invalid. Please try again later.';
        break;
      default:
        message = 'An unexpected error occurred. Please check your input.';
    }
    return TFormatException(message);
  }
}
