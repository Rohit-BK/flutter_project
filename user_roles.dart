name:$user_roles.dart

import 'package:flutter/material.dart';

enum UserRole {
  administrator,
  pibOfficer,
}

class UserRoles {
  static UserRole currentUserRole = UserRole.pibOfficer;

  static bool isAdmin() {
    return currentUserRole == UserRole.administrator;
  }

  static bool isPibOfficer() {
    return currentUserRole == UserRole.pibOfficer;
  }
}

