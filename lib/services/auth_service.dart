import 'package:flutter/material.dart';
import '../models/user.dart';

class AuthService extends ChangeNotifier {
  User? _currentUser;
  bool _isLoading = false;
  String? _error;

  User? get currentUser => _currentUser;
  bool get isLoading => _isLoading;
  String? get error => _error;

  // Send OTP to mobile number
  Future<bool> sendOTP(String mobileNumber) async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      // TODO: Implement actual OTP sending logic
      await Future.delayed(const Duration(seconds: 2)); // Simulated delay
      
      _isLoading = false;
      notifyListeners();
      return true;
    } catch (e) {
      _error = e.toString();
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }

  // Verify OTP and login/register user
  Future<bool> verifyOTP(String mobileNumber, String otp) async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      // TODO: Implement actual OTP verification logic
      await Future.delayed(const Duration(seconds: 2)); // Simulated delay

      // Simulate successful verification
      _currentUser = User(
        id: DateTime.now().toString(),
        name: '',
        mobileNumber: mobileNumber,
      );

      _isLoading = false;
      notifyListeners();
      return true;
    } catch (e) {
      _error = e.toString();
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }

  // Update user profile
  Future<bool> updateUserProfile(String name, String? email) async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      // TODO: Implement actual profile update logic
      await Future.delayed(const Duration(seconds: 1)); // Simulated delay

      _currentUser = User(
        id: _currentUser!.id,
        name: name,
        mobileNumber: _currentUser!.mobileNumber,
        email: email,
      );

      _isLoading = false;
      notifyListeners();
      return true;
    } catch (e) {
      _error = e.toString();
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }

  // Logout user
  void logout() {
    _currentUser = null;
    notifyListeners();
  }
}