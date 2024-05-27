import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FirebaseNutriRecord extends FirestoreRecord {
  FirebaseNutriRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cal" field.
  double? _cal;
  double get cal => _cal ?? 0.0;
  bool hasCal() => _cal != null;

  // "carb" field.
  double? _carb;
  double get carb => _carb ?? 0.0;
  bool hasCarb() => _carb != null;

  // "sugar" field.
  double? _sugar;
  double get sugar => _sugar ?? 0.0;
  bool hasSugar() => _sugar != null;

  // "protein" field.
  double? _protein;
  double get protein => _protein ?? 0.0;
  bool hasProtein() => _protein != null;

  // "gord" field.
  double? _gord;
  double get gord => _gord ?? 0.0;
  bool hasGord() => _gord != null;

  // "gord_sat" field.
  double? _gordSat;
  double get gordSat => _gordSat ?? 0.0;
  bool hasGordSat() => _gordSat != null;

  // "gord_mono" field.
  double? _gordMono;
  double get gordMono => _gordMono ?? 0.0;
  bool hasGordMono() => _gordMono != null;

  // "gord_poli" field.
  double? _gordPoli;
  double get gordPoli => _gordPoli ?? 0.0;
  bool hasGordPoli() => _gordPoli != null;

  // "colesterol" field.
  double? _colesterol;
  double get colesterol => _colesterol ?? 0.0;
  bool hasColesterol() => _colesterol != null;

  // "fibras" field.
  double? _fibras;
  double get fibras => _fibras ?? 0.0;
  bool hasFibras() => _fibras != null;

  // "sodio" field.
  double? _sodio;
  double get sodio => _sodio ?? 0.0;
  bool hasSodio() => _sodio != null;

  // "potassio" field.
  double? _potassio;
  double get potassio => _potassio ?? 0.0;
  bool hasPotassio() => _potassio != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _cal = castToType<double>(snapshotData['cal']);
    _carb = castToType<double>(snapshotData['carb']);
    _sugar = castToType<double>(snapshotData['sugar']);
    _protein = castToType<double>(snapshotData['protein']);
    _gord = castToType<double>(snapshotData['gord']);
    _gordSat = castToType<double>(snapshotData['gord_sat']);
    _gordMono = castToType<double>(snapshotData['gord_mono']);
    _gordPoli = castToType<double>(snapshotData['gord_poli']);
    _colesterol = castToType<double>(snapshotData['colesterol']);
    _fibras = castToType<double>(snapshotData['fibras']);
    _sodio = castToType<double>(snapshotData['sodio']);
    _potassio = castToType<double>(snapshotData['potassio']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('firebase_nutri')
          : FirebaseFirestore.instance.collectionGroup('firebase_nutri');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('firebase_nutri').doc(id);

  static Stream<FirebaseNutriRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FirebaseNutriRecord.fromSnapshot(s));

  static Future<FirebaseNutriRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FirebaseNutriRecord.fromSnapshot(s));

  static FirebaseNutriRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FirebaseNutriRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FirebaseNutriRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FirebaseNutriRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FirebaseNutriRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FirebaseNutriRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFirebaseNutriRecordData({
  double? cal,
  double? carb,
  double? sugar,
  double? protein,
  double? gord,
  double? gordSat,
  double? gordMono,
  double? gordPoli,
  double? colesterol,
  double? fibras,
  double? sodio,
  double? potassio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cal': cal,
      'carb': carb,
      'sugar': sugar,
      'protein': protein,
      'gord': gord,
      'gord_sat': gordSat,
      'gord_mono': gordMono,
      'gord_poli': gordPoli,
      'colesterol': colesterol,
      'fibras': fibras,
      'sodio': sodio,
      'potassio': potassio,
    }.withoutNulls,
  );

  return firestoreData;
}

class FirebaseNutriRecordDocumentEquality
    implements Equality<FirebaseNutriRecord> {
  const FirebaseNutriRecordDocumentEquality();

  @override
  bool equals(FirebaseNutriRecord? e1, FirebaseNutriRecord? e2) {
    return e1?.cal == e2?.cal &&
        e1?.carb == e2?.carb &&
        e1?.sugar == e2?.sugar &&
        e1?.protein == e2?.protein &&
        e1?.gord == e2?.gord &&
        e1?.gordSat == e2?.gordSat &&
        e1?.gordMono == e2?.gordMono &&
        e1?.gordPoli == e2?.gordPoli &&
        e1?.colesterol == e2?.colesterol &&
        e1?.fibras == e2?.fibras &&
        e1?.sodio == e2?.sodio &&
        e1?.potassio == e2?.potassio;
  }

  @override
  int hash(FirebaseNutriRecord? e) => const ListEquality().hash([
        e?.cal,
        e?.carb,
        e?.sugar,
        e?.protein,
        e?.gord,
        e?.gordSat,
        e?.gordMono,
        e?.gordPoli,
        e?.colesterol,
        e?.fibras,
        e?.sodio,
        e?.potassio
      ]);

  @override
  bool isValidKey(Object? o) => o is FirebaseNutriRecord;
}
