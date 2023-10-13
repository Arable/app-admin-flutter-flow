// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeviceListStruct extends FFFirebaseStruct {
  DeviceListStruct({
    String? name,
    String? state,
    String? deviceType,
    String? battVolt,
    String? lastDeploy,
    String? lastSeen,
    String? syncInterval,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _state = state,
        _deviceType = deviceType,
        _battVolt = battVolt,
        _lastDeploy = lastDeploy,
        _lastSeen = lastSeen,
        _syncInterval = syncInterval,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;
  bool hasState() => _state != null;

  // "device_type" field.
  String? _deviceType;
  String get deviceType => _deviceType ?? '';
  set deviceType(String? val) => _deviceType = val;
  bool hasDeviceType() => _deviceType != null;

  // "batt_volt" field.
  String? _battVolt;
  String get battVolt => _battVolt ?? '';
  set battVolt(String? val) => _battVolt = val;
  bool hasBattVolt() => _battVolt != null;

  // "last_deploy" field.
  String? _lastDeploy;
  String get lastDeploy => _lastDeploy ?? '';
  set lastDeploy(String? val) => _lastDeploy = val;
  bool hasLastDeploy() => _lastDeploy != null;

  // "last_seen" field.
  String? _lastSeen;
  String get lastSeen => _lastSeen ?? '';
  set lastSeen(String? val) => _lastSeen = val;
  bool hasLastSeen() => _lastSeen != null;

  // "sync_interval" field.
  String? _syncInterval;
  String get syncInterval => _syncInterval ?? '';
  set syncInterval(String? val) => _syncInterval = val;
  bool hasSyncInterval() => _syncInterval != null;

  static DeviceListStruct fromMap(Map<String, dynamic> data) =>
      DeviceListStruct(
        name: data['name'] as String?,
        state: data['state'] as String?,
        deviceType: data['device_type'] as String?,
        battVolt: data['batt_volt'] as String?,
        lastDeploy: data['last_deploy'] as String?,
        lastSeen: data['last_seen'] as String?,
        syncInterval: data['sync_interval'] as String?,
      );

  static DeviceListStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? DeviceListStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'state': _state,
        'device_type': _deviceType,
        'batt_volt': _battVolt,
        'last_deploy': _lastDeploy,
        'last_seen': _lastSeen,
        'sync_interval': _syncInterval,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'device_type': serializeParam(
          _deviceType,
          ParamType.String,
        ),
        'batt_volt': serializeParam(
          _battVolt,
          ParamType.String,
        ),
        'last_deploy': serializeParam(
          _lastDeploy,
          ParamType.String,
        ),
        'last_seen': serializeParam(
          _lastSeen,
          ParamType.String,
        ),
        'sync_interval': serializeParam(
          _syncInterval,
          ParamType.String,
        ),
      }.withoutNulls;

  static DeviceListStruct fromSerializableMap(Map<String, dynamic> data) =>
      DeviceListStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        deviceType: deserializeParam(
          data['device_type'],
          ParamType.String,
          false,
        ),
        battVolt: deserializeParam(
          data['batt_volt'],
          ParamType.String,
          false,
        ),
        lastDeploy: deserializeParam(
          data['last_deploy'],
          ParamType.String,
          false,
        ),
        lastSeen: deserializeParam(
          data['last_seen'],
          ParamType.String,
          false,
        ),
        syncInterval: deserializeParam(
          data['sync_interval'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DeviceListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeviceListStruct &&
        name == other.name &&
        state == other.state &&
        deviceType == other.deviceType &&
        battVolt == other.battVolt &&
        lastDeploy == other.lastDeploy &&
        lastSeen == other.lastSeen &&
        syncInterval == other.syncInterval;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [name, state, deviceType, battVolt, lastDeploy, lastSeen, syncInterval]);
}

DeviceListStruct createDeviceListStruct({
  String? name,
  String? state,
  String? deviceType,
  String? battVolt,
  String? lastDeploy,
  String? lastSeen,
  String? syncInterval,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DeviceListStruct(
      name: name,
      state: state,
      deviceType: deviceType,
      battVolt: battVolt,
      lastDeploy: lastDeploy,
      lastSeen: lastSeen,
      syncInterval: syncInterval,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DeviceListStruct? updateDeviceListStruct(
  DeviceListStruct? deviceList, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    deviceList
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDeviceListStructData(
  Map<String, dynamic> firestoreData,
  DeviceListStruct? deviceList,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (deviceList == null) {
    return;
  }
  if (deviceList.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && deviceList.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final deviceListData = getDeviceListFirestoreData(deviceList, forFieldValue);
  final nestedData = deviceListData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = deviceList.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDeviceListFirestoreData(
  DeviceListStruct? deviceList, [
  bool forFieldValue = false,
]) {
  if (deviceList == null) {
    return {};
  }
  final firestoreData = mapToFirestore(deviceList.toMap());

  // Add any Firestore field values
  deviceList.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDeviceListListFirestoreData(
  List<DeviceListStruct>? deviceLists,
) =>
    deviceLists?.map((e) => getDeviceListFirestoreData(e, true)).toList() ?? [];
