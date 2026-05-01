class TPlatformException implements Exception {
  // The error code associated with the exception
  final String code;

  // Constructor that takes an error code
  TPlatformException(this.code);

  // Get the corresponding error message based on the error code
  String get message {
    switch (code) {
      case 'platform/not-supported':
        return 'This platform is not supported.';
      case 'platform/unavailable':
        return 'The requested feature is unavailable on this platform.';
      case 'platform/permission-denied':
        return 'Permission denied for the requested platform operation.';
      case 'platform/permission-not-granted':
        return 'The required permission has not been granted.';
      case 'platform/invalid-argument':
        return 'Invalid argument provided for platform operation.';
      case 'platform/operation-failed':
        return 'The platform operation failed.';
      case 'platform/resource-unavailable':
        return 'The requested resource is unavailable.';
      case 'platform/network-error':
        return 'A network error occurred on the platform.';
      case 'platform/io-error':
        return 'An input/output error occurred on the platform.';
      case 'platform/file-not-found':
        return 'The requested file was not found.';
      case 'platform/file-read-error':
        return 'Error reading the file.';
      case 'platform/file-write-error':
        return 'Error writing to the file.';
      case 'platform/invalid-file-path':
        return 'The specified file path is invalid.';
      case 'platform/storage-full':
        return 'The device storage is full.';
      case 'platform/unsupported-file-format':
        return 'The file format is not supported.';
      case 'platform/no-internet':
        return 'No internet connection is available.';
      case 'platform/timeout':
        return 'The operation timed out.';
      case 'platform/location-disabled':
        return 'Location services are disabled on the device.';
      case 'platform/location-permission-denied':
        return 'Location permission denied.';
      case 'platform/bluetooth-disabled':
        return 'Bluetooth is disabled on the device.';
      case 'platform/bluetooth-error':
        return 'An error occurred with the Bluetooth connection.';
      case 'platform/nfc-not-supported':
        return 'NFC is not supported on this device.';
      case 'platform/nfc-disabled':
        return 'NFC is disabled on this device.';
      case 'platform/gps-error':
        return 'An error occurred with the GPS system.';
      case 'platform/sensor-not-available':
        return 'The requested sensor is not available.';
      case 'platform/sensor-error':
        return 'An error occurred with the device sensor.';
      case 'platform/camera-unavailable':
        return 'The camera is unavailable.';
      case 'platform/camera-permission-denied':
        return 'Camera permission denied.';
      case 'platform/microphone-unavailable':
        return 'The microphone is unavailable.';
      case 'platform/microphone-permission-denied':
        return 'Microphone permission denied.';
      case 'platform/audio-error':
        return 'An audio error occurred.';
      case 'platform/display-not-supported':
        return 'The display feature is not supported on this platform.';
      case 'platform/display-resolution-unsupported':
        return 'The display resolution is not supported.';
      case 'platform/clipboard-error':
        return 'An error occurred with the clipboard operation.';
      case 'platform/app-crash':
        return 'The application has crashed.';
      case 'platform/app-not-installed':
        return 'The requested application is not installed.';
      case 'platform/app-update-required':
        return 'An update is required for the application.';
      case 'platform/system-update-required':
        return 'A system update is required.';
      case 'platform/insufficient-resources':
        return 'Insufficient system resources for the operation.';
      case 'platform/api-deprecated':
        return 'The API being used is deprecated.';
      case 'platform/api-not-implemented':
        return 'The API is not implemented on this platform.';
      case 'platform/invalid-configuration':
        return 'The platform configuration is invalid.';
      case 'platform/security-error':
        return 'A security error occurred on the platform.';
      case 'platform/encryption-error':
        return 'An error occurred with encryption.';
      case 'platform/decryption-error':
        return 'An error occurred with decryption.';
      case 'platform/invalid-authentication':
        return 'Invalid authentication credentials.';
      case 'platform/unauthorized-access':
        return 'Unauthorized access attempted.';
      case 'platform/process-terminated':
        return 'The process was terminated unexpectedly.';
      case 'platform/disk-error':
        return 'A disk error occurred.';
      case 'platform/unknown-error':
        return 'An unknown platform error occurred.';
      case 'platform/battery-low':
        return 'The device battery is low.';
      case 'platform/battery-critical':
        return 'The device battery level is critical.';
      case 'platform/thermal-throttle':
        return 'The device is being throttled due to high temperature.';
      case 'platform/hardware-incompatibility':
        return 'The hardware is incompatible with the operation.';
      case 'platform/driver-not-installed':
        return 'The required driver is not installed.';
      case 'platform/driver-outdated':
        return 'The device driver is outdated.';
      case 'platform/power-saving-mode-active':
        return 'The operation is restricted due to power-saving mode.';
      case 'platform/ram-full':
        return 'Insufficient RAM to complete the operation.';
      case 'platform/gpu-unavailable':
        return 'The GPU is unavailable or under heavy load.';
      case 'platform/feature-locked':
        return 'The feature is locked or restricted.';
      case 'platform/cloud-service-unavailable':
        return 'The cloud service is currently unavailable.';
      case 'platform/cloud-unauthorized':
        return 'Unauthorized access to the cloud service.';
      case 'platform/database-corrupted':
        return 'The local database is corrupted.';
      case 'platform/database-read-only':
        return 'The database is in read-only mode.';
      case 'platform/session-expired':
        return 'The user session has expired.';
      case 'platform/invalid-session-token':
        return 'The session token is invalid.';
      case 'platform/memory-leak-detected':
        return 'A memory leak has been detected.';
      case 'platform/task-aborted':
        return 'The task was aborted unexpectedly.';
      case 'platform/task-failed':
        return 'The task failed to complete.';
      case 'platform/screen-lock-active':
        return 'The operation cannot proceed due to an active screen lock.';
      case 'platform/unsupported-os-version':
        return 'The OS version is not supported for this operation.';
      case 'platform/incomplete-dependencies':
        return 'The platform has incomplete dependencies.';
      case 'platform/module-not-found':
        return 'A required module is missing or not found.';
      case 'platform/license-expired':
        return 'The software license has expired.';
      case 'platform/license-not-found':
        return 'The software license is missing or invalid.';
      case 'platform/policy-restricted':
        return 'The operation is restricted by policy settings.';
      case 'platform/user-restricted':
        return 'The user is restricted from performing this operation.';
      case 'platform/cloud-sync-failed':
        return 'Failed to sync data with the cloud.';
      case 'platform/connection-reset':
        return 'The connection was reset.';
      case 'platform/dns-error':
        return 'A DNS error occurred.';
      case 'platform/invalid-response':
        return 'The platform received an invalid response.';
      case 'platform/socket-closed':
        return 'The socket connection was unexpectedly closed.';
      default:
        return 'An unspecified platform error occurred.';
    }
  }
}
