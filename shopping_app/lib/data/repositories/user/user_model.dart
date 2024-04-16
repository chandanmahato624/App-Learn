import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shopping_app/utils/exceptions/platform_exceptions.dart';
import 'package:shopping_app/utils/formatters/formatter.dart';

class UserModel {
  // keep those values final which we don not want to update
  final String id;
  String firstName;
  String lastName;
  final String username;
  final String email;
  String phoneNumber;
  String profilePicture;

  /// Constructor for User model
  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  /// Helpar funcation
  String get fullName => '$firstName $lastName';

  /// Helper funcation for formattedPhone
  String get formattedPhoneNo => TFormatter.formatPhoneNumber(phoneNumber);

  /// static funcation to split full name into first name and last name
  static List<String> nameParts(fullName) => fullName.split(" ");

  /// static funcation  to generate a username from the full name
  static String generateUsername(fullName) {
    List<String> nameparts = fullName.split(" ");
    String firstName = nameparts[0].toLowerCase();
    String lastName = nameparts.length > 1 ? nameparts[1].toLowerCase() : "";

    String camelCaseUsername = '$firstName$lastName';
    String usernameWithPrefix = "cwt_$camelCaseUsername";
    return usernameWithPrefix;
  }

  /// static funcation to create an empty user model.
  static UserModel empty() => UserModel(
      id: '',
      firstName: '',
      lastName: '',
      username: '',
      email: '',
      phoneNumber: '',
      profilePicture: '');

  /// convert model to JSon structcture for storing data in firebase
  Map<String, dynamic> toJson() {
    return {
      'FirstNmae': firstName,
      'LastNmae': lastName,
      'UsertNmae': username,
      'Email': email,
      'PhoneNumber': phoneNumber,
      'ProfilePicture': profilePicture,
    };
  }

  /// Factory method to create a UserModel from a Firebase documents snapshot.
  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return UserModel(
        id: document.id,
        firstName: data['FirstNmae'] ?? '',
        lastName: data['LastName'] ?? '',
        username: data['Username'] ?? '',
        email: data['Email'] ?? '',
        phoneNumber: data['PhoneNumber'] ?? '',
        profilePicture: data['ProfilePicture'] ?? '',
      );
    } else {
      // Return a default UserModel instance if document.data() is null
      return UserModel.empty();
    }
  }
}
