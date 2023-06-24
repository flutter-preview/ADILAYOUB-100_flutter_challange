import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutte_challange/models/user.dart';

import '../models/group.dart';

class DatabaseService {
  DatabaseService({required this.userId});
  final String? userId;

  // ref of collection
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');
  final CollectionReference groupCollection =
      FirebaseFirestore.instance.collection('groups');

  // insert user data
  Future insertUserData(
      String? fullName, String? email, String? profilePic) async {
    // if already exists
    DocumentSnapshot user = await userCollection.doc(userId).get();

    if (!user.exists) {
      //insert
      await userCollection.doc(userId).set({
        'userId': userId,
        'fullName': fullName,
        'email': email,
        'profilePic': profilePic,
        'joinedAt': DateTime.now()
      });
    }
  }

  // Get user data
  Future<UserModel> getUser(String? userDocId) async {
    DocumentSnapshot user = await userCollection.doc(userDocId ?? userId).get();
    if (!user.exists) {
      await Future.delayed(const Duration(seconds: 1));
      user = await userCollection.doc(userId).get();
    }
    UserModel userModel =
        UserModel.fromJson(user.data() as Map<String, dynamic>);
    return userModel;
  }
//! OR
  // Future<UserModel> getUserData(String? userDocId) async {
  //   DocumentSnapshot result =
  //       await userCollection.doc(userDocId ?? userId).get();
  //   if (!result.exists) {
  //     await Future.delayed(const Duration(seconds: 1));
  //     result = await userCollection.doc(userId).get();
  //   }
  //   UserModel userModel = UserModel.fromJson(result);
  //   return userModel;
  // }

  // Creating new Group

  Future createGroup(String groupName) async {
    DocumentReference doc = await groupCollection.add({
      'groupId': '',
      'groupName': groupName,
      'groupIcon': '',
      'admin': userId,
      'members': [userId],
      'recentMessage': '',
      'recentMessageSender': '',
      'public': true,
    });
    // update
    await groupCollection.doc(doc.id).update({
      'groupId': doc.id,
    });
  }

  // fetch all the groups joined by the user
  Stream<List<GroupModel>> fetchJoinedGroup() async* {
    yield* groupCollection
        .where('members', arrayContains: userId)
        .snapshots()
        .map((group) =>
            group.docs.map((group) => GroupModel.fromJson(group)).toList());
  }
}
