class TFirebaseAuthException implements Exception {
  // The error code associated with the exception
  final String code;

  // Constructor that takes an error code
  TFirebaseAuthException(this.code);

  // Get the corresponding error message based on the error code
  String get message {
    switch (code) {
      case 'email-already-in-use':return 'The email address is already registered. Please use a different email.';
      case 'invalid-email':return 'The email address provided is invalid. Please enter a valid email.';
      case 'weak-password':return 'The password is too weak. Please choose a stronger password.';
      case 'user-disabled':return 'This user account has been disabled. Please contact support for assistance.';
      case 'user-not-found':return 'Invalid login details. User not found.';
      case 'wrong-password':return 'Incorrect password. Please check your password and try again.';
      case 'invalid-verification-code':return 'Invalid verification code. Please enter a valid code.';
      case 'invalid-verification-id':return 'Invalid verification ID. Please request a new verification code.';
      case 'quota-exceeded':return 'Quota exceeded. Please try again later.';
      case 'email-already-exists':return 'The email address already exists. Please use a different email.';
      case 'provider-already-linked':return 'The account is already linked with another provider.';
      case 'requires-recent-login':return 'This operation is sensitive and requires recent authentication. Please log in again.';
      case 'credential-already-in-use':return 'This credential is already associated with a different user account.';
      case 'user-mismatch':return 'The supplied credentials do not correspond to the previously signed-in user.';
      case 'operation-not-allowed':return 'This operation is not allowed. Please contact support for assistance.';
      case 'too-many-requests':return 'Too many requests. Please try again later.';
      case 'network-request-failed':return 'Network error occurred. Please check your internet connection and try again.';
      case 'expired-action-code':return 'The action code has expired. Please try again.';
      case 'invalid-action-code':return 'The action code is invalid. Please verify and try again.';
      case 'unverified-email':return 'This operation requires a verified email address. Please verify your email and try again.';
      case 'missing-email':return 'No email address provided. Please enter an email address.';
      case 'missing-password':return 'No password provided. Please enter a password.';
      case 'session-expired':return 'The session has expired. Please log in again.';
      case 'invalid-credential':return 'The authentication credential is invalid. Please try again.';
      case 'app-not-authorized':return 'This app is not authorized to use Firebase Authentication. Please contact support.';
      case 'invalid-api-key':return 'The API key provided is invalid. Please check your Firebase project configuration.';
      case 'invalid-custom-token':return 'The custom token format is incorrect. Please verify and try again.';
      case 'custom-token-mismatch':return 'The custom token corresponds to a different project. Please use the correct token.';
      case 'multi-factor-auth-required':return 'Multi-factor authentication is required. Please complete the additional verification steps.';
      case 'account-exists-with-different-credential':return 'An account already exists with the same email address but different sign-in credentials.';
      case 'missing-client-identifier':return 'Missing client identifier. Please configure your app correctly.';
      case 'second-factor-already-in-use':return 'The second factor is already enrolled. Please use a different factor.';
      case 'maximum-second-factor-count-exceeded':return 'You have reached the maximum number of second factors allowed.';
      case 'unsupported-first-factor':return 'The first factor is unsupported. Please contact support.';
      case 'invalid-phone-number':return 'The phone number provided is invalid. Please provide a valid phone number.';
      case 'missing-phone-number':return 'No phone number provided. Please enter a phone number.';
      case 'invalid-recipient-email':return 'The recipient email is invalid. Please enter a valid email address.';
      case 'missing-verification-code': return 'The verification code is missing. Please enter the code.';
      case 'missing-verification-id': return 'The verification ID is missing. Please try again.';
      case 'unauthorized-domain': return 'This domain is not authorized for OAuth operations. Please contact support.';
      case 'captcha-check-failed': return 'Captcha verification failed. Please try again.';
      case 'web-context-cancelled': return 'The operation was canceled by the user.';
      case 'web-network-request-failed': return 'A network error occurred during the web operation. Please check your connection.';
      case 'web-storage-unsupported': return 'This browser does not support storage required for authentication.';
      case 'invalid-tenant-id': return 'The tenant ID provided is invalid. Please verify and try again.';
      case 'tenant-id-mismatch': return 'The tenant ID does not match the project configuration.';
      case 'rejected-credential': return 'The credential provided was rejected by the server. Please try again.';
      default: return 'An unknown error occurred. Please try again later.';
    }
  }
}
