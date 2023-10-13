// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserListStruct extends FFFirebaseStruct {
  UserListStruct({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? lastSeen,
    String? screenName,
    bool? active,
    String? phoneNumber,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _email = email,
        _firstName = firstName,
        _lastName = lastName,
        _lastSeen = lastSeen,
        _screenName = screenName,
        _active = active,
        _phoneNumber = phoneNumber,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;
  bool hasLastName() => _lastName != null;

  // "last_seen" field.
  String? _lastSeen;
  String get lastSeen => _lastSeen ?? '';
  set lastSeen(String? val) => _lastSeen = val;
  bool hasLastSeen() => _lastSeen != null;

  // "screen_name" field.
  String? _screenName;
  String get screenName => _screenName ?? '';
  set screenName(String? val) => _screenName = val;
  bool hasScreenName() => _screenName != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  set active(bool? val) => _active = val;
  bool hasActive() => _active != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;
  bool hasPhoneNumber() => _phoneNumber != null;

  static UserListStruct fromMap(Map<String, dynamic> data) => UserListStruct(
        id: data['id'] as String?,
        email: data['email'] as String?,
        firstName: data['first_name'] as String?,
        lastName: data['last_name'] as String?,
        lastSeen: data['last_seen'] as String?,
        screenName: data['screen_name'] as String?,
        active: data['active'] as bool?,
        phoneNumber: data['phone_number'] as String?,
      );

  static UserListStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UserListStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'email': _email,
        'first_name': _firstName,
        'last_name': _lastName,
        'last_seen': _lastSeen,
        'screen_name': _screenName,
        'active': _active,
        'phone_number': _phoneNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'first_name': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'last_name': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'last_seen': serializeParam(
          _lastSeen,
          ParamType.String,
        ),
        'screen_name': serializeParam(
          _screenName,
          ParamType.String,
        ),
        'active': serializeParam(
          _active,
          ParamType.bool,
        ),
        'phone_number': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserListStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserListStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        firstName: deserializeParam(
          data['first_name'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['last_name'],
          ParamType.String,
          false,
        ),
        lastSeen: deserializeParam(
          data['last_seen'],
          ParamType.String,
          false,
        ),
        screenName: deserializeParam(
          data['screen_name'],
          ParamType.String,
          false,
        ),
        active: deserializeParam(
          data['active'],
          ParamType.bool,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phone_number'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserListStruct &&
        id == other.id &&
        email == other.email &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        lastSeen == other.lastSeen &&
        screenName == other.screenName &&
        active == other.active &&
        phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        email,
        firstName,
        lastName,
        lastSeen,
        screenName,
        active,
        phoneNumber
      ]);
}

UserListStruct createUserListStruct({
  String? id,
  String? email,
  String? firstName,
  String? lastName,
  String? lastSeen,
  String? screenName,
  bool? active,
  String? phoneNumber,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserListStruct(
      id: id,
      email: email,
      firstName: firstName,
      lastName: lastName,
      lastSeen: lastSeen,
      screenName: screenName,
      active: active,
      phoneNumber: phoneNumber,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserListStruct? updateUserListStruct(
  UserListStruct? userList, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userList
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserListStructData(
  Map<String, dynamic> firestoreData,
  UserListStruct? userList,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userList == null) {
    return;
  }
  if (userList.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userList.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userListData = getUserListFirestoreData(userList, forFieldValue);
  final nestedData = userListData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userList.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserListFirestoreData(
  UserListStruct? userList, [
  bool forFieldValue = false,
]) {
  if (userList == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userList.toMap());

  // Add any Firestore field values
  userList.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserListListFirestoreData(
  List<UserListStruct>? userLists,
) =>
    userLists?.map((e) => getUserListFirestoreData(e, true)).toList() ?? [];
