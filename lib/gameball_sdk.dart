library gameball_sdk;

import 'package:flutter/material.dart';

class GameballApp extends StatelessWidget {
  static GameballApp? _instance;
  static String _apiKey = "";
  static String _playerUniqueId = "";
  static String _deviceToken = "";
  static String? _lang;
  static String? _platform;
  static String? _shop;
  static String? _playerEmail;
  static String? _playerMobile;
  static String? _referralCode;

  static GameballApp getInstance() {
    _instance ??= GameballApp();
    return _instance!;
  }

  void init(String apiKey, String lang, String platform, String shop) {
    _lang = lang;
    _platform = platform;
    _shop = shop;
    _apiKey = apiKey;
  }

  _initializeFirebase() {

  }

  checkReferral() {

  }

  Future<void> _handleDynamicLink() async {

  }

  Future<void> registerPlayer() async {

  }

  void _registerDevice() {

  }

  void sendEvent() {

  }

  void _openBottomSheet() {

  }

  void openGameballView() {

  }

  String getDevicePlatform() {

  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

