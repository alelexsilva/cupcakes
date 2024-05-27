import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FirebaseCupcakesRecord extends FirestoreRecord {
  FirebaseCupcakesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "specifications" field.
  String? _specifications;
  String get specifications => _specifications ?? '';
  bool hasSpecifications() => _specifications != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "on_sale" field.
  bool? _onSale;
  bool get onSale => _onSale ?? false;
  bool hasOnSale() => _onSale != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "QtnPrice" field.
  double? _qtnPrice;
  double get qtnPrice => _qtnPrice ?? 0.0;
  bool hasQtnPrice() => _qtnPrice != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "cal" field.
  int? _cal;
  int get cal => _cal ?? 0;
  bool hasCal() => _cal != null;

  // "carb" field.
  int? _carb;
  int get carb => _carb ?? 0;
  bool hasCarb() => _carb != null;

  // "sugar" field.
  int? _sugar;
  int get sugar => _sugar ?? 0;
  bool hasSugar() => _sugar != null;

  // "protein" field.
  int? _protein;
  int get protein => _protein ?? 0;
  bool hasProtein() => _protein != null;

  // "gord" field.
  int? _gord;
  int get gord => _gord ?? 0;
  bool hasGord() => _gord != null;

  // "gord_sat" field.
  int? _gordSat;
  int get gordSat => _gordSat ?? 0;
  bool hasGordSat() => _gordSat != null;

  // "gord_mono" field.
  int? _gordMono;
  int get gordMono => _gordMono ?? 0;
  bool hasGordMono() => _gordMono != null;

  // "gord_poli" field.
  int? _gordPoli;
  int get gordPoli => _gordPoli ?? 0;
  bool hasGordPoli() => _gordPoli != null;

  // "colesterol" field.
  int? _colesterol;
  int get colesterol => _colesterol ?? 0;
  bool hasColesterol() => _colesterol != null;

  // "fibras" field.
  int? _fibras;
  int get fibras => _fibras ?? 0;
  bool hasFibras() => _fibras != null;

  // "sodio" field.
  int? _sodio;
  int get sodio => _sodio ?? 0;
  bool hasSodio() => _sodio != null;

  // "potassio" field.
  int? _potassio;
  int get potassio => _potassio ?? 0;
  bool hasPotassio() => _potassio != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _onSale = snapshotData['on_sale'] as bool?;
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _img = snapshotData['img'] as String?;
    _qtnPrice = castToType<double>(snapshotData['QtnPrice']);
    _id = snapshotData['id'] as String?;
    _cal = castToType<int>(snapshotData['cal']);
    _carb = castToType<int>(snapshotData['carb']);
    _sugar = castToType<int>(snapshotData['sugar']);
    _protein = castToType<int>(snapshotData['protein']);
    _gord = castToType<int>(snapshotData['gord']);
    _gordSat = castToType<int>(snapshotData['gord_sat']);
    _gordMono = castToType<int>(snapshotData['gord_mono']);
    _gordPoli = castToType<int>(snapshotData['gord_poli']);
    _colesterol = castToType<int>(snapshotData['colesterol']);
    _fibras = castToType<int>(snapshotData['fibras']);
    _sodio = castToType<int>(snapshotData['sodio']);
    _potassio = castToType<int>(snapshotData['potassio']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('firebase_cupcakes');

  static Stream<FirebaseCupcakesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FirebaseCupcakesRecord.fromSnapshot(s));

  static Future<FirebaseCupcakesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => FirebaseCupcakesRecord.fromSnapshot(s));

  static FirebaseCupcakesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FirebaseCupcakesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FirebaseCupcakesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FirebaseCupcakesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FirebaseCupcakesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FirebaseCupcakesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFirebaseCupcakesRecordData({
  String? name,
  String? description,
  String? specifications,
  double? price,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? onSale,
  double? salePrice,
  int? quantity,
  String? img,
  double? qtnPrice,
  String? id,
  int? cal,
  int? carb,
  int? sugar,
  int? protein,
  int? gord,
  int? gordSat,
  int? gordMono,
  int? gordPoli,
  int? colesterol,
  int? fibras,
  int? sodio,
  int? potassio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'specifications': specifications,
      'price': price,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'on_sale': onSale,
      'sale_price': salePrice,
      'quantity': quantity,
      'img': img,
      'QtnPrice': qtnPrice,
      'id': id,
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

class FirebaseCupcakesRecordDocumentEquality
    implements Equality<FirebaseCupcakesRecord> {
  const FirebaseCupcakesRecordDocumentEquality();

  @override
  bool equals(FirebaseCupcakesRecord? e1, FirebaseCupcakesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.specifications == e2?.specifications &&
        e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.onSale == e2?.onSale &&
        e1?.salePrice == e2?.salePrice &&
        e1?.quantity == e2?.quantity &&
        e1?.img == e2?.img &&
        e1?.qtnPrice == e2?.qtnPrice &&
        e1?.id == e2?.id &&
        e1?.cal == e2?.cal &&
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
  int hash(FirebaseCupcakesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.specifications,
        e?.price,
        e?.createdAt,
        e?.modifiedAt,
        e?.onSale,
        e?.salePrice,
        e?.quantity,
        e?.img,
        e?.qtnPrice,
        e?.id,
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
  bool isValidKey(Object? o) => o is FirebaseCupcakesRecord;
}
