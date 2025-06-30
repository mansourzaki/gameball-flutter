# Gameball Flutter SDK
## `Gameball Flutter SDK` is a library that allows you to integrate the Gameball platform's features into your Flutter applications. It enables you to:

* Register customers and track their activities.
* Send personalized events to trigger Gameball campaigns.
* Display the Gameball user interface within your app.

# Installation
1 Add the `Gameball Flutter SDK` dependency to your pubspec.yaml file or the flutter add command directly:
```
YAML

dependencies:
  gameball_sdk: ^latest
```
```
Bash

$ flutter pub add gameball_sdk
```
2. Import the library in your Dart code:
```
Dart

import 'package:gameball_sdk/gameball_sdk.dart';
```

# Usage
1. Initialization
* Create an instance of `GameballApp`:
```
Dart

GameballApp gameballApp = GameballApp.getInstance();
```
* Initialize the Gameball SDK with your API key, language, platform, and shop information:
```
Dart

gameballApp.init("{api_key}", "{lang}", "{platform}", "{shop}");
```
2. Firebase Initialization (for notifications and referral handling):
* Ensure Firebase is initialized in your app before using referral features:
```
Dart

import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // ... rest of your app
}
```
3. Customer Registration:
* To send push messages: Make sure to call the respective method ```initializeFirebase``` or ```initializeHuawei``` depending on the push provider used.
```
Dart
// Firebase FCM
// Make sure that Firebase is initialized
gameballApp.initializeFirebase(); 

// Huawei Push Kit
String token = ""; // Retrieve it using HuaweiServices
gameballApp.initalizeHuawei(token);
```
* Register a customer with their unique identifier, email (optional), mobile number (optional), referral code (optional), is guest (optional) and custom attributes:

```
Dart

CustomerAttributes customerAttributes = CustomerAttributes(
  displayName: "John Doe",
  firstName: "John",
  lastName: "Doe",
  mobileNumber: "0123456789",
  preferredLanguage: "en",
  customAttributes: {
    "{key}": "{value}",
  },
);

gameballApp.registerCustomer(
  "{customerId}",
  "{customerEmail}",
  "{customerMobile}",
  "abc123", //ReferralCode
  false, //isGuest = false
  CustomerAttributes,
  (response, error) {
    // Handle registration response
  },
);
```

Using Firebase Dynamic Links for Referrals (Optional)
> 💡 **Hint:** On August 25th, 2025, Firebase Dynamic Links will shut down. All links served by Firebase Dynamic Links (both hosted on custom domains and page.link subdomains) will stop working and you will no longer be able to create new links.


If you'd like to support referrals via **Firebase Dynamic Links**, you can optionally call `handleFirebaseDynamicLink`:

```dart
customerReferralCodeCallback(response, error) {
  if (error == null && response != null) {
    // Use the referral code
    // You can pass the extracted `referralCode` to `registerCustomer` for seamless integration.
    print('Referral code: $response');
  } else {
    // Handle error or missing referral code
    print('No referral code found or an error occurred');
  }
}

gameballApp.handleFirebaseDynamicLink(customerReferralCodeCallback);
```

4. Sending Events:
* Define an `Event` object with the customer's unique identifier and event details:
```
Dart

Event eventBody = Event(
  customerId: "{customerId}",
  events: {
    "{eventName}": {
      "{prop1}": "{value1}",
    },
  }, 
);

gameballApp.sendEvent(eventBody, (success, error) {
  // Handle event sending response
});
```
5. Showing Gameball Profile:
* Display the Gameball user interface within your app using `showProfile`:
```
Dart

gameballApp.showProfile(context, "{customerId}", "{openDetail}", "{hideNavigation}", "{showCloseButton}");
```
* Replace `context` with the current build context.
* Use placeholders for `customerId`, `openDetail` (optional URL to open within the profile), `hideNavigation` (optional boolean to hide/show navigation arrow), `showCloseButton` (optional boolean to hide/show close button).
  Note: Replace all instances of `"{...}"` placeholders with your actual values.

# Additional Resources
* For detailed API reference and comprehensive documentation, visit the official Gameball developer website: https://developer.gameball.co/
* Explore the Gameball platform and its features at the Gameball website: https://www.gameball.co/
* Feel free to contact Gameball support for any further assistance.