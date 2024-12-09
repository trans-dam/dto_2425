import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
);

@firestoreSerializable
class User {
  final String firstName;
  final String lastName;
  final String email;

  const User({
    required this.firstName,
    required this.lastName,
    required this.email,
  });
}

/*@Collection<User>('users')
final usersRef = UserCollectionReference();*/

@firestoreSerializable
class MyTransaction {
  final String title;
  final String? description;
  final double amount;
  final DateTime date;

  const MyTransaction({
    required this.title,
    this.description,
    required this.amount,
    required this.date,
  });
}

@firestoreSerializable
class Team {
  final String title;
  final String? picturePath;
  final List<String>? tags;
  final DateTime startDate;
  final List<String> users;

  const Team({
    required this.title,
    this.picturePath,
    this.tags,
    required this.startDate,
    required this.users,
  });
}

@Collection<User>('users', prefix: 'Users')
final usersRef = UsersCollectionReference();
@Collection<Team>('teams', prefix: 'Teams')
@Collection<MyTransaction>('teams/*/transactions', prefix: 'Transactions')
@Collection<User>('teams/*/transactions/*/concerns', prefix: 'ConcernUsers')
final teamsRef = TeamsCollectionReference();
