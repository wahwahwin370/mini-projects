class TFirebaseException implements Exception {
  // The error code associated with the exception
  final String code;

  // Constructor that takes an error code
  TFirebaseException(this.code);

  // Get the corresponding error message based on the error code
  String get message {
    switch (code) {
      case 'auth/invalid-email':
        return 'The email address is badly formatted.';
      case 'auth/user-disabled':
        return 'The user account has been disabled by an administrator.';
      case 'auth/user-not-found':
        return 'No user record found for the provided identifier.';
      case 'auth/wrong-password':
        return 'The password is invalid or the user does not have a password.';
      case 'auth/email-already-in-use':
        return 'The email address is already in use by another account.';
      case 'auth/operation-not-allowed':
        return 'This operation is not allowed. Please enable it in the Firebase Console.';
      case 'auth/weak-password':
        return 'The password provided is too weak.';
      case 'auth/too-many-requests':
        return 'Access to this account has been temporarily disabled due to too many failed login attempts.';
      case 'auth/account-exists-with-different-credential':
        return 'An account already exists with the same email address but different sign-in credentials.';
      case 'auth/invalid-credential':
        return 'The supplied credential is malformed or has expired.';
      case 'auth/network-request-failed':
        return 'A network error occurred. Please check your connection.';
      case 'auth/requires-recent-login':
        return 'This operation is sensitive and requires recent authentication.';
      case 'auth/provider-already-linked':
        return 'This credential is already associated with a different user account.';
      case 'auth/credential-already-in-use':
        return 'This credential is already associated with a different user account.';
      case 'auth/popup-blocked':
        return 'The popup has been blocked by the browser.';
      case 'auth/popup-closed-by-user':
        return 'The popup was closed by the user before completing the sign-in.';
      case 'auth/unauthorized-domain':
        return 'The domain of this operation is not authorized for OAuth operations.';
      case 'auth/web-storage-unsupported':
        return 'This browser does not support web storage or it is disabled.';
      case 'auth/invalid-verification-code':
        return 'The verification code is invalid.';
      case 'auth/invalid-verification-id':
        return 'The verification ID is invalid.';
      case 'auth/invalid-phone-number':
        return 'The phone number is in an invalid format.';
      case 'auth/missing-phone-number':
        return 'A phone number must be provided for verification.';
      case 'auth/quota-exceeded':
        return 'The SMS quota for this project has been exceeded.';
      case 'auth/captcha-check-failed':
        return 'The reCAPTCHA verification failed.';
      case 'auth/session-expired':
        return 'The verification code has expired.';
      case 'auth/missing-email':
        return 'An email address must be provided.';
      case 'auth/missing-password':
        return 'A password must be provided.';
      case 'auth/missing-continue-uri':
        return 'A continue URI must be provided in the request.';
      case 'auth/invalid-continue-uri':
        return 'The continue URI is invalid.';
      case 'auth/unauthorized-continue-uri':
        return 'The domain of the continue URI is not authorized.';
      case 'auth/app-not-authorized':
        return 'This app is not authorized to use Firebase Authentication.';
      case 'auth/invalid-api-key':
        return 'The provided API key is invalid.';
      case 'auth/app-deleted':
        return 'The Firebase app has been deleted.';
      case 'auth/invalid-user-token':
        return 'The user token is invalid.';
      case 'auth/user-token-expired':
        return 'The user token has expired.';
      case 'auth/null-user':
        return 'No user is signed in.';
      case 'auth/app-not-installed':
        return 'The Firebase app is not installed.';
      case 'auth/malformed-jwt':
        return 'The JWT format is invalid.';
      case 'auth/id-token-expired':
        return 'The ID token has expired.';
      case 'auth/id-token-revoked':
        return 'The ID token has been revoked.';
      case 'auth/internal-error':
        return 'An internal error occurred. Please try again later.';
      case 'auth/keychain-error':
        return 'There was an error accessing the keychain.';
      case 'auth/weak-password':
        return 'The password provided is too weak.';
      case 'auth/network-request-failed':
        return 'A network error occurred.';
      case 'firestore/unavailable':
        return 'The Firestore service is currently unavailable.';
      case 'firestore/permission-denied':
        return 'You do not have permission to access this resource.';
      case 'firestore/resource-exhausted':
        return 'The Firestore resource quota has been exhausted.';
      case 'firestore/not-found':
        return 'The requested Firestore document was not found.';
      case 'firestore/aborted':
        return 'The Firestore operation was aborted.';
      default:
        return 'An unknown error occurred.';
    }
  }
}
