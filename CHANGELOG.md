## 2.1.0

Now you can send Huawei Push Messages through Gameball !!
*Added Support for Huawei Push Messages
*Separated the Firebase token retrieval from registerCustomer flow to be separate
*You'll have to initializeFirebase() or initializeHuawei() depending on your push provider before registering the customer

## 2.0.1
* Minor Fix: Set the Customer profile widget close button icon color to
a darker color to avoid blending with the background

## 2.0.0

* Exit Player, Enter Customer. Gameball's SDK now runs on Integrations APIs V4 ✌🔥
* Changed customer profile widget implementation to improve the scrolling of the WebView content
* Added backwards compatibility for dart v3.4.4, webview_flutter v4.8.0, build_runner v2.4.11
* Upgraded firebase dependencies to the lastest version

## 1.0.3

* Added the option to show/hide the widget close button

## 1.0.2

* Fixed an issue while building the widget url and the http requests header

## 1.0.1

* Cleaned up unused imports, removed unnecessary code
* Handled language usages between global and preferred language
* Included language parameter in all requests headers
* Refactored certain areas in the code (widget url construction)
* Added support for RTL/LTR in widget close button

## 1.0.0

* First release of the Gameball FLutter SDK
* Supports Player Registration
* Supports Players Referrals
* Supports Sending Events
* Supports Showing Player Profile (Gameball Widget)
