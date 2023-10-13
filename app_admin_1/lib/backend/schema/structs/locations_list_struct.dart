// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationsListStruct extends FFFirebaseStruct {
  LocationsListStruct({
    String? name,
    String? id,
    String? deviceName,
    int? lat,
    int? long,
    String? tzName,
    String? archived,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _id = id,
        _deviceName = deviceName,
        _lat = lat,
        _long = long,
        _tzName = tzName,
        _archived = archived,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "device_name" field.
  String? _deviceName;
  String get deviceName => _deviceName ?? '';
  set deviceName(String? val) => _deviceName = val;
  bool hasDeviceName() => _deviceName != null;

  // "lat" field.
  int? _lat;
  int get lat => _lat ?? 0;
  set lat(int? val) => _lat = val;
  void incrementLat(int amount) => _lat = lat + amount;
  bool hasLat() => _lat != null;

  // "long" field.
  int? _long;
  int get long => _long ?? 0;
  set long(int? val) => _long = val;
  void incrementLong(int amount) => _long = long + amount;
  bool hasLong() => _long != null;

  // "tz_name" field.
  String? _tzName;
  String get tzName => _tzName ?? '';
  set tzName(String? val) => _tzName = val;
  bool hasTzName() => _tzName != null;

  // "archived" field.
  String? _archived;
  String get archived => _archived ?? '';
  set archived(String? val) => _archived = val;
  bool hasArchived() => _archived != null;

  static LocationsListStruct fromMap(Map<String, dynamic> data) =>
      LocationsListStruct(
        name: data['name'] as String?,
        id: data['id'] as String?,
        deviceName: data['device_name'] as String?,
        lat: castToType<int>(data['lat']),
        long: castToType<int>(data['long']),
        tzName: data['tz_name'] as String?,
        archived: data['archived'] as String?,
      );

  static LocationsListStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? LocationsListStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'id': _id,
        'device_name': _deviceName,
        'lat': _lat,
        'long': _long,
        'tz_name': _tzName,
        'archived': _archived,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'device_name': serializeParam(
          _deviceName,
          ParamType.String,
        ),
        'lat': serializeParam(
          _lat,
          ParamType.int,
        ),
        'long': serializeParam(
          _long,
          ParamType.int,
        ),
        'tz_name': serializeParam(
          _tzName,
          ParamType.String,
        ),
        'archived': serializeParam(
          _archived,
          ParamType.String,
        ),
      }.withoutNulls;

  static LocationsListStruct fromSerializableMap(Map<String, dynamic> data) =>
      LocationsListStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        deviceName: deserializeParam(
          data['device_name'],
          ParamType.String,
          false,
        ),
        lat: deserializeParam(
          data['lat'],
          ParamType.int,
          false,
        ),
        long: deserializeParam(
          data['long'],
          ParamType.int,
          false,
        ),
        tzName: deserializeParam(
          data['tz_name'],
          ParamType.String,
          false,
        ),
        archived: deserializeParam(
          data['archived'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LocationsListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LocationsListStruct &&
        name == other.name &&
        id == other.id &&
        deviceName == other.deviceName &&
        lat == other.lat &&
        long == other.long &&
        tzName == other.tzName &&
        archived == other.archived;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, id, deviceName, lat, long, tzName, archived]);
}

LocationsListStruct createLocationsListStruct({
  String? name,
  String? id,
  String? deviceName,
  int? lat,
  int? long,
  String? tzName,
  String? archived,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LocationsListStruct(
      name: name,
      id: id,
      deviceName: deviceName,
      lat: lat,
      long: long,
      tzName: tzName,
      archived: archived,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LocationsListStruct? updateLocationsListStruct(
  LocationsListStruct? locationsList, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    locationsList
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLocationsListStructData(
  Map<String, dynamic> firestoreData,
  LocationsListStruct? locationsList,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (locationsList == null) {
    return;
  }
  if (locationsList.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && locationsList.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final locationsListData =
      getLocationsListFirestoreData(locationsList, forFieldValue);
  final nestedData =
      locationsListData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = locationsList.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLocationsListFirestoreData(
  LocationsListStruct? locationsList, [
  bool forFieldValue = false,
]) {
  if (locationsList == null) {
    return {};
  }
  final firestoreData = mapToFirestore(locationsList.toMap());

  // Add any Firestore field values
  locationsList.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLocationsListListFirestoreData(
  List<LocationsListStruct>? locationsLists,
) =>
    locationsLists
        ?.map((e) => getLocationsListFirestoreData(e, true))
        .toList() ??
    [];
