// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters, duplicate_ignore
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_internal_member

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class UsersCollectionReference
    implements
        UsersQuery,
        FirestoreCollectionReference<User, UsersQuerySnapshot> {
  factory UsersCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$UsersCollectionReference;

  static User fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$UserFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    User value,
    SetOptions? options,
  ) {
    return _$UserToJson(value);
  }

  @override
  CollectionReference<User> get reference;

  @override
  UsersDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<UsersDocumentReference> add(User value);
}

class _$UsersCollectionReference extends _$UsersQuery
    implements UsersCollectionReference {
  factory _$UsersCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$UsersCollectionReference._(
      firestore.collection('users').withConverter(
            fromFirestore: UsersCollectionReference.fromFirestore,
            toFirestore: UsersCollectionReference.toFirestore,
          ),
    );
  }

  _$UsersCollectionReference._(
    CollectionReference<User> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<User> get reference =>
      super.reference as CollectionReference<User>;

  @override
  UsersDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return UsersDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<UsersDocumentReference> add(User value) {
    return reference.add(value).then((ref) => UsersDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$UsersCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class UsersDocumentReference
    extends FirestoreDocumentReference<User, UsersDocumentSnapshot> {
  factory UsersDocumentReference(DocumentReference<User> reference) =
      _$UsersDocumentReference;

  DocumentReference<User> get reference;

  /// A reference to the [UsersCollectionReference] containing this document.
  UsersCollectionReference get parent {
    return _$UsersCollectionReference(reference.firestore);
  }

  @override
  Stream<UsersDocumentSnapshot> snapshots();

  @override
  Future<UsersDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    User model, {
    SetOptions? options,
    FieldValue firstNameFieldValue,
    FieldValue lastNameFieldValue,
    FieldValue emailFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    User model, {
    SetOptions? options,
    FieldValue firstNameFieldValue,
    FieldValue lastNameFieldValue,
    FieldValue emailFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    User model, {
    SetOptions? options,
    FieldValue firstNameFieldValue,
    FieldValue lastNameFieldValue,
    FieldValue emailFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String firstName,
    FieldValue firstNameFieldValue,
    String lastName,
    FieldValue lastNameFieldValue,
    String email,
    FieldValue emailFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String firstName,
    FieldValue firstNameFieldValue,
    String lastName,
    FieldValue lastNameFieldValue,
    String email,
    FieldValue emailFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String firstName,
    FieldValue firstNameFieldValue,
    String lastName,
    FieldValue lastNameFieldValue,
    String email,
    FieldValue emailFieldValue,
  });
}

class _$UsersDocumentReference
    extends FirestoreDocumentReference<User, UsersDocumentSnapshot>
    implements UsersDocumentReference {
  _$UsersDocumentReference(this.reference);

  @override
  final DocumentReference<User> reference;

  /// A reference to the [UsersCollectionReference] containing this document.
  UsersCollectionReference get parent {
    return _$UsersCollectionReference(reference.firestore);
  }

  @override
  Stream<UsersDocumentSnapshot> snapshots() {
    return reference.snapshots().map(UsersDocumentSnapshot._);
  }

  @override
  Future<UsersDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UsersDocumentSnapshot._);
  }

  @override
  Future<UsersDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(UsersDocumentSnapshot._);
  }

  Future<void> set(
    User model, {
    SetOptions? options,
    FieldValue? firstNameFieldValue,
    FieldValue? lastNameFieldValue,
    FieldValue? emailFieldValue,
  }) async {
    final json = {
      ..._$UserToJson(model),
      if (firstNameFieldValue != null)
        _$UserFieldMap['firstName']!: firstNameFieldValue,
      if (lastNameFieldValue != null)
        _$UserFieldMap['lastName']!: lastNameFieldValue,
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    User model, {
    SetOptions? options,
    FieldValue? firstNameFieldValue,
    FieldValue? lastNameFieldValue,
    FieldValue? emailFieldValue,
  }) {
    final json = {
      ..._$UserToJson(model),
      if (firstNameFieldValue != null)
        _$UserFieldMap['firstName']!: firstNameFieldValue,
      if (lastNameFieldValue != null)
        _$UserFieldMap['lastName']!: lastNameFieldValue,
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    User model, {
    SetOptions? options,
    FieldValue? firstNameFieldValue,
    FieldValue? lastNameFieldValue,
    FieldValue? emailFieldValue,
  }) {
    final json = {
      ..._$UserToJson(model),
      if (firstNameFieldValue != null)
        _$UserFieldMap['firstName']!: firstNameFieldValue,
      if (lastNameFieldValue != null)
        _$UserFieldMap['lastName']!: lastNameFieldValue,
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? firstName = _sentinel,
    FieldValue? firstNameFieldValue,
    Object? lastName = _sentinel,
    FieldValue? lastNameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
  }) async {
    assert(
      firstName == _sentinel || firstNameFieldValue == null,
      "Cannot specify both firstName and firstNameFieldValue",
    );
    assert(
      lastName == _sentinel || lastNameFieldValue == null,
      "Cannot specify both lastName and lastNameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    final json = {
      if (firstName != _sentinel)
        _$UserFieldMap['firstName']!:
            _$UserPerFieldToJson.firstName(firstName as String),
      if (firstNameFieldValue != null)
        _$UserFieldMap['firstName']!: firstNameFieldValue,
      if (lastName != _sentinel)
        _$UserFieldMap['lastName']!:
            _$UserPerFieldToJson.lastName(lastName as String),
      if (lastNameFieldValue != null)
        _$UserFieldMap['lastName']!: lastNameFieldValue,
      if (email != _sentinel)
        _$UserFieldMap['email']!: _$UserPerFieldToJson.email(email as String),
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? firstName = _sentinel,
    FieldValue? firstNameFieldValue,
    Object? lastName = _sentinel,
    FieldValue? lastNameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
  }) {
    assert(
      firstName == _sentinel || firstNameFieldValue == null,
      "Cannot specify both firstName and firstNameFieldValue",
    );
    assert(
      lastName == _sentinel || lastNameFieldValue == null,
      "Cannot specify both lastName and lastNameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    final json = {
      if (firstName != _sentinel)
        _$UserFieldMap['firstName']!:
            _$UserPerFieldToJson.firstName(firstName as String),
      if (firstNameFieldValue != null)
        _$UserFieldMap['firstName']!: firstNameFieldValue,
      if (lastName != _sentinel)
        _$UserFieldMap['lastName']!:
            _$UserPerFieldToJson.lastName(lastName as String),
      if (lastNameFieldValue != null)
        _$UserFieldMap['lastName']!: lastNameFieldValue,
      if (email != _sentinel)
        _$UserFieldMap['email']!: _$UserPerFieldToJson.email(email as String),
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? firstName = _sentinel,
    FieldValue? firstNameFieldValue,
    Object? lastName = _sentinel,
    FieldValue? lastNameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
  }) {
    assert(
      firstName == _sentinel || firstNameFieldValue == null,
      "Cannot specify both firstName and firstNameFieldValue",
    );
    assert(
      lastName == _sentinel || lastNameFieldValue == null,
      "Cannot specify both lastName and lastNameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    final json = {
      if (firstName != _sentinel)
        _$UserFieldMap['firstName']!:
            _$UserPerFieldToJson.firstName(firstName as String),
      if (firstNameFieldValue != null)
        _$UserFieldMap['firstName']!: firstNameFieldValue,
      if (lastName != _sentinel)
        _$UserFieldMap['lastName']!:
            _$UserPerFieldToJson.lastName(lastName as String),
      if (lastNameFieldValue != null)
        _$UserFieldMap['lastName']!: lastNameFieldValue,
      if (email != _sentinel)
        _$UserFieldMap['email']!: _$UserPerFieldToJson.email(email as String),
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is UsersDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class UsersQuery implements QueryReference<User, UsersQuerySnapshot> {
  @override
  UsersQuery limit(int limit);

  @override
  UsersQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  UsersQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  UsersQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UsersQuery whereFirstName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UsersQuery whereLastName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UsersQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  UsersQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    UsersDocumentSnapshot? startAtDocument,
    UsersDocumentSnapshot? endAtDocument,
    UsersDocumentSnapshot? endBeforeDocument,
    UsersDocumentSnapshot? startAfterDocument,
  });

  UsersQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UsersDocumentSnapshot? startAtDocument,
    UsersDocumentSnapshot? endAtDocument,
    UsersDocumentSnapshot? endBeforeDocument,
    UsersDocumentSnapshot? startAfterDocument,
  });

  UsersQuery orderByFirstName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UsersDocumentSnapshot? startAtDocument,
    UsersDocumentSnapshot? endAtDocument,
    UsersDocumentSnapshot? endBeforeDocument,
    UsersDocumentSnapshot? startAfterDocument,
  });

  UsersQuery orderByLastName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UsersDocumentSnapshot? startAtDocument,
    UsersDocumentSnapshot? endAtDocument,
    UsersDocumentSnapshot? endBeforeDocument,
    UsersDocumentSnapshot? startAfterDocument,
  });

  UsersQuery orderByEmail({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UsersDocumentSnapshot? startAtDocument,
    UsersDocumentSnapshot? endAtDocument,
    UsersDocumentSnapshot? endBeforeDocument,
    UsersDocumentSnapshot? startAfterDocument,
  });
}

class _$UsersQuery extends QueryReference<User, UsersQuerySnapshot>
    implements UsersQuery {
  _$UsersQuery(
    this._collection, {
    required Query<User> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<UsersQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(UsersQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<UsersQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UsersQuerySnapshot._fromQuerySnapshot);
  }

  @override
  UsersQuery limit(int limit) {
    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersQuery limitToLast(int limit) {
    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersQuery whereFirstName({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['firstName']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.firstName(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.firstName(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.firstName(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.firstName(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.firstName(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.firstName(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.firstName(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserPerFieldToJson.firstName(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersQuery whereLastName({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['lastName']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.lastName(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.lastName(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.lastName(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.lastName(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.lastName(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.lastName(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.lastName(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserPerFieldToJson.lastName(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersQuery whereEmail({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['email']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.email(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.email(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.email(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.email(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.email(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.email(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.email(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserPerFieldToJson.email(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UsersQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersDocumentSnapshot? startAtDocument,
    UsersDocumentSnapshot? endAtDocument,
    UsersDocumentSnapshot? endBeforeDocument,
    UsersDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersDocumentSnapshot? startAtDocument,
    UsersDocumentSnapshot? endAtDocument,
    UsersDocumentSnapshot? endBeforeDocument,
    UsersDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersQuery orderByFirstName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersDocumentSnapshot? startAtDocument,
    UsersDocumentSnapshot? endAtDocument,
    UsersDocumentSnapshot? endBeforeDocument,
    UsersDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserFieldMap['firstName']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersQuery orderByLastName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersDocumentSnapshot? startAtDocument,
    UsersDocumentSnapshot? endAtDocument,
    UsersDocumentSnapshot? endBeforeDocument,
    UsersDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserFieldMap['lastName']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UsersQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UsersDocumentSnapshot? startAtDocument,
    UsersDocumentSnapshot? endAtDocument,
    UsersDocumentSnapshot? endBeforeDocument,
    UsersDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserFieldMap['email']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UsersQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$UsersQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class UsersDocumentSnapshot extends FirestoreDocumentSnapshot<User> {
  UsersDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<User> snapshot;

  @override
  UsersDocumentReference get reference {
    return UsersDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final User? data;
}

class UsersQuerySnapshot
    extends FirestoreQuerySnapshot<User, UsersQueryDocumentSnapshot> {
  UsersQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory UsersQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<User> snapshot,
  ) {
    final docs = snapshot.docs.map(UsersQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        UsersDocumentSnapshot._,
      );
    }).toList();

    return UsersQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<UsersDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    UsersDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<UsersDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<User> snapshot;

  @override
  final List<UsersQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<UsersDocumentSnapshot>> docChanges;
}

class UsersQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<User>
    implements UsersDocumentSnapshot {
  UsersQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<User> snapshot;

  @override
  final User data;

  @override
  UsersDocumentReference get reference {
    return UsersDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class TeamsCollectionReference
    implements
        TeamsQuery,
        FirestoreCollectionReference<Team, TeamsQuerySnapshot> {
  factory TeamsCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$TeamsCollectionReference;

  static Team fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$TeamFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Team value,
    SetOptions? options,
  ) {
    return _$TeamToJson(value);
  }

  @override
  CollectionReference<Team> get reference;

  @override
  TeamsDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<TeamsDocumentReference> add(Team value);
}

class _$TeamsCollectionReference extends _$TeamsQuery
    implements TeamsCollectionReference {
  factory _$TeamsCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$TeamsCollectionReference._(
      firestore.collection('teams').withConverter(
            fromFirestore: TeamsCollectionReference.fromFirestore,
            toFirestore: TeamsCollectionReference.toFirestore,
          ),
    );
  }

  _$TeamsCollectionReference._(
    CollectionReference<Team> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Team> get reference =>
      super.reference as CollectionReference<Team>;

  @override
  TeamsDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return TeamsDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<TeamsDocumentReference> add(Team value) {
    return reference.add(value).then((ref) => TeamsDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$TeamsCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class TeamsDocumentReference
    extends FirestoreDocumentReference<Team, TeamsDocumentSnapshot> {
  factory TeamsDocumentReference(DocumentReference<Team> reference) =
      _$TeamsDocumentReference;

  DocumentReference<Team> get reference;

  /// A reference to the [TeamsCollectionReference] containing this document.
  TeamsCollectionReference get parent {
    return _$TeamsCollectionReference(reference.firestore);
  }

  late final TransactionsCollectionReference transactions =
      _$TransactionsCollectionReference(
    reference,
  );

  @override
  Stream<TeamsDocumentSnapshot> snapshots();

  @override
  Future<TeamsDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    Team model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue picturePathFieldValue,
    FieldValue tagsFieldValue,
    FieldValue startDateFieldValue,
    FieldValue usersFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    Team model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue picturePathFieldValue,
    FieldValue tagsFieldValue,
    FieldValue startDateFieldValue,
    FieldValue usersFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    Team model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue picturePathFieldValue,
    FieldValue tagsFieldValue,
    FieldValue startDateFieldValue,
    FieldValue usersFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String title,
    FieldValue titleFieldValue,
    String? picturePath,
    FieldValue picturePathFieldValue,
    List<String>? tags,
    FieldValue tagsFieldValue,
    DateTime startDate,
    FieldValue startDateFieldValue,
    List<String> users,
    FieldValue usersFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String title,
    FieldValue titleFieldValue,
    String? picturePath,
    FieldValue picturePathFieldValue,
    List<String>? tags,
    FieldValue tagsFieldValue,
    DateTime startDate,
    FieldValue startDateFieldValue,
    List<String> users,
    FieldValue usersFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String title,
    FieldValue titleFieldValue,
    String? picturePath,
    FieldValue picturePathFieldValue,
    List<String>? tags,
    FieldValue tagsFieldValue,
    DateTime startDate,
    FieldValue startDateFieldValue,
    List<String> users,
    FieldValue usersFieldValue,
  });
}

class _$TeamsDocumentReference
    extends FirestoreDocumentReference<Team, TeamsDocumentSnapshot>
    implements TeamsDocumentReference {
  _$TeamsDocumentReference(this.reference);

  @override
  final DocumentReference<Team> reference;

  /// A reference to the [TeamsCollectionReference] containing this document.
  TeamsCollectionReference get parent {
    return _$TeamsCollectionReference(reference.firestore);
  }

  late final TransactionsCollectionReference transactions =
      _$TransactionsCollectionReference(
    reference,
  );

  @override
  Stream<TeamsDocumentSnapshot> snapshots() {
    return reference.snapshots().map(TeamsDocumentSnapshot._);
  }

  @override
  Future<TeamsDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(TeamsDocumentSnapshot._);
  }

  @override
  Future<TeamsDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(TeamsDocumentSnapshot._);
  }

  Future<void> set(
    Team model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? picturePathFieldValue,
    FieldValue? tagsFieldValue,
    FieldValue? startDateFieldValue,
    FieldValue? usersFieldValue,
  }) async {
    final json = {
      ..._$TeamToJson(model),
      if (titleFieldValue != null) _$TeamFieldMap['title']!: titleFieldValue,
      if (picturePathFieldValue != null)
        _$TeamFieldMap['picturePath']!: picturePathFieldValue,
      if (tagsFieldValue != null) _$TeamFieldMap['tags']!: tagsFieldValue,
      if (startDateFieldValue != null)
        _$TeamFieldMap['startDate']!: startDateFieldValue,
      if (usersFieldValue != null) _$TeamFieldMap['users']!: usersFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Team model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? picturePathFieldValue,
    FieldValue? tagsFieldValue,
    FieldValue? startDateFieldValue,
    FieldValue? usersFieldValue,
  }) {
    final json = {
      ..._$TeamToJson(model),
      if (titleFieldValue != null) _$TeamFieldMap['title']!: titleFieldValue,
      if (picturePathFieldValue != null)
        _$TeamFieldMap['picturePath']!: picturePathFieldValue,
      if (tagsFieldValue != null) _$TeamFieldMap['tags']!: tagsFieldValue,
      if (startDateFieldValue != null)
        _$TeamFieldMap['startDate']!: startDateFieldValue,
      if (usersFieldValue != null) _$TeamFieldMap['users']!: usersFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Team model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? picturePathFieldValue,
    FieldValue? tagsFieldValue,
    FieldValue? startDateFieldValue,
    FieldValue? usersFieldValue,
  }) {
    final json = {
      ..._$TeamToJson(model),
      if (titleFieldValue != null) _$TeamFieldMap['title']!: titleFieldValue,
      if (picturePathFieldValue != null)
        _$TeamFieldMap['picturePath']!: picturePathFieldValue,
      if (tagsFieldValue != null) _$TeamFieldMap['tags']!: tagsFieldValue,
      if (startDateFieldValue != null)
        _$TeamFieldMap['startDate']!: startDateFieldValue,
      if (usersFieldValue != null) _$TeamFieldMap['users']!: usersFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? picturePath = _sentinel,
    FieldValue? picturePathFieldValue,
    Object? tags = _sentinel,
    FieldValue? tagsFieldValue,
    Object? startDate = _sentinel,
    FieldValue? startDateFieldValue,
    Object? users = _sentinel,
    FieldValue? usersFieldValue,
  }) async {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      picturePath == _sentinel || picturePathFieldValue == null,
      "Cannot specify both picturePath and picturePathFieldValue",
    );
    assert(
      tags == _sentinel || tagsFieldValue == null,
      "Cannot specify both tags and tagsFieldValue",
    );
    assert(
      startDate == _sentinel || startDateFieldValue == null,
      "Cannot specify both startDate and startDateFieldValue",
    );
    assert(
      users == _sentinel || usersFieldValue == null,
      "Cannot specify both users and usersFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$TeamFieldMap['title']!: _$TeamPerFieldToJson.title(title as String),
      if (titleFieldValue != null) _$TeamFieldMap['title']!: titleFieldValue,
      if (picturePath != _sentinel)
        _$TeamFieldMap['picturePath']!:
            _$TeamPerFieldToJson.picturePath(picturePath as String?),
      if (picturePathFieldValue != null)
        _$TeamFieldMap['picturePath']!: picturePathFieldValue,
      if (tags != _sentinel)
        _$TeamFieldMap['tags']!:
            _$TeamPerFieldToJson.tags(tags as List<String>?),
      if (tagsFieldValue != null) _$TeamFieldMap['tags']!: tagsFieldValue,
      if (startDate != _sentinel)
        _$TeamFieldMap['startDate']!:
            _$TeamPerFieldToJson.startDate(startDate as DateTime),
      if (startDateFieldValue != null)
        _$TeamFieldMap['startDate']!: startDateFieldValue,
      if (users != _sentinel)
        _$TeamFieldMap['users']!:
            _$TeamPerFieldToJson.users(users as List<String>),
      if (usersFieldValue != null) _$TeamFieldMap['users']!: usersFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? picturePath = _sentinel,
    FieldValue? picturePathFieldValue,
    Object? tags = _sentinel,
    FieldValue? tagsFieldValue,
    Object? startDate = _sentinel,
    FieldValue? startDateFieldValue,
    Object? users = _sentinel,
    FieldValue? usersFieldValue,
  }) {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      picturePath == _sentinel || picturePathFieldValue == null,
      "Cannot specify both picturePath and picturePathFieldValue",
    );
    assert(
      tags == _sentinel || tagsFieldValue == null,
      "Cannot specify both tags and tagsFieldValue",
    );
    assert(
      startDate == _sentinel || startDateFieldValue == null,
      "Cannot specify both startDate and startDateFieldValue",
    );
    assert(
      users == _sentinel || usersFieldValue == null,
      "Cannot specify both users and usersFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$TeamFieldMap['title']!: _$TeamPerFieldToJson.title(title as String),
      if (titleFieldValue != null) _$TeamFieldMap['title']!: titleFieldValue,
      if (picturePath != _sentinel)
        _$TeamFieldMap['picturePath']!:
            _$TeamPerFieldToJson.picturePath(picturePath as String?),
      if (picturePathFieldValue != null)
        _$TeamFieldMap['picturePath']!: picturePathFieldValue,
      if (tags != _sentinel)
        _$TeamFieldMap['tags']!:
            _$TeamPerFieldToJson.tags(tags as List<String>?),
      if (tagsFieldValue != null) _$TeamFieldMap['tags']!: tagsFieldValue,
      if (startDate != _sentinel)
        _$TeamFieldMap['startDate']!:
            _$TeamPerFieldToJson.startDate(startDate as DateTime),
      if (startDateFieldValue != null)
        _$TeamFieldMap['startDate']!: startDateFieldValue,
      if (users != _sentinel)
        _$TeamFieldMap['users']!:
            _$TeamPerFieldToJson.users(users as List<String>),
      if (usersFieldValue != null) _$TeamFieldMap['users']!: usersFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? picturePath = _sentinel,
    FieldValue? picturePathFieldValue,
    Object? tags = _sentinel,
    FieldValue? tagsFieldValue,
    Object? startDate = _sentinel,
    FieldValue? startDateFieldValue,
    Object? users = _sentinel,
    FieldValue? usersFieldValue,
  }) {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      picturePath == _sentinel || picturePathFieldValue == null,
      "Cannot specify both picturePath and picturePathFieldValue",
    );
    assert(
      tags == _sentinel || tagsFieldValue == null,
      "Cannot specify both tags and tagsFieldValue",
    );
    assert(
      startDate == _sentinel || startDateFieldValue == null,
      "Cannot specify both startDate and startDateFieldValue",
    );
    assert(
      users == _sentinel || usersFieldValue == null,
      "Cannot specify both users and usersFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$TeamFieldMap['title']!: _$TeamPerFieldToJson.title(title as String),
      if (titleFieldValue != null) _$TeamFieldMap['title']!: titleFieldValue,
      if (picturePath != _sentinel)
        _$TeamFieldMap['picturePath']!:
            _$TeamPerFieldToJson.picturePath(picturePath as String?),
      if (picturePathFieldValue != null)
        _$TeamFieldMap['picturePath']!: picturePathFieldValue,
      if (tags != _sentinel)
        _$TeamFieldMap['tags']!:
            _$TeamPerFieldToJson.tags(tags as List<String>?),
      if (tagsFieldValue != null) _$TeamFieldMap['tags']!: tagsFieldValue,
      if (startDate != _sentinel)
        _$TeamFieldMap['startDate']!:
            _$TeamPerFieldToJson.startDate(startDate as DateTime),
      if (startDateFieldValue != null)
        _$TeamFieldMap['startDate']!: startDateFieldValue,
      if (users != _sentinel)
        _$TeamFieldMap['users']!:
            _$TeamPerFieldToJson.users(users as List<String>),
      if (usersFieldValue != null) _$TeamFieldMap['users']!: usersFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is TeamsDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class TeamsQuery implements QueryReference<Team, TeamsQuerySnapshot> {
  @override
  TeamsQuery limit(int limit);

  @override
  TeamsQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  TeamsQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  TeamsQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  TeamsQuery whereTitle({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  TeamsQuery wherePicturePath({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  TeamsQuery whereTags({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    String? arrayContains,
    List<String>? arrayContainsAny,
    bool? isNull,
  });

  TeamsQuery whereStartDate({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  });

  TeamsQuery whereUsers({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    String? arrayContains,
    List<String>? arrayContainsAny,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  TeamsQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    TeamsDocumentSnapshot? startAtDocument,
    TeamsDocumentSnapshot? endAtDocument,
    TeamsDocumentSnapshot? endBeforeDocument,
    TeamsDocumentSnapshot? startAfterDocument,
  });

  TeamsQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TeamsDocumentSnapshot? startAtDocument,
    TeamsDocumentSnapshot? endAtDocument,
    TeamsDocumentSnapshot? endBeforeDocument,
    TeamsDocumentSnapshot? startAfterDocument,
  });

  TeamsQuery orderByTitle({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TeamsDocumentSnapshot? startAtDocument,
    TeamsDocumentSnapshot? endAtDocument,
    TeamsDocumentSnapshot? endBeforeDocument,
    TeamsDocumentSnapshot? startAfterDocument,
  });

  TeamsQuery orderByPicturePath({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    TeamsDocumentSnapshot? startAtDocument,
    TeamsDocumentSnapshot? endAtDocument,
    TeamsDocumentSnapshot? endBeforeDocument,
    TeamsDocumentSnapshot? startAfterDocument,
  });

  TeamsQuery orderByTags({
    bool descending = false,
    List<String>? startAt,
    List<String>? startAfter,
    List<String>? endAt,
    List<String>? endBefore,
    TeamsDocumentSnapshot? startAtDocument,
    TeamsDocumentSnapshot? endAtDocument,
    TeamsDocumentSnapshot? endBeforeDocument,
    TeamsDocumentSnapshot? startAfterDocument,
  });

  TeamsQuery orderByStartDate({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    TeamsDocumentSnapshot? startAtDocument,
    TeamsDocumentSnapshot? endAtDocument,
    TeamsDocumentSnapshot? endBeforeDocument,
    TeamsDocumentSnapshot? startAfterDocument,
  });

  TeamsQuery orderByUsers({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    TeamsDocumentSnapshot? startAtDocument,
    TeamsDocumentSnapshot? endAtDocument,
    TeamsDocumentSnapshot? endBeforeDocument,
    TeamsDocumentSnapshot? startAfterDocument,
  });
}

class _$TeamsQuery extends QueryReference<Team, TeamsQuerySnapshot>
    implements TeamsQuery {
  _$TeamsQuery(
    this._collection, {
    required Query<Team> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<TeamsQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(TeamsQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<TeamsQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(TeamsQuerySnapshot._fromQuerySnapshot);
  }

  @override
  TeamsQuery limit(int limit) {
    return _$TeamsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TeamsQuery limitToLast(int limit) {
    return _$TeamsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TeamsQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$TeamsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TeamsQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$TeamsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TeamsQuery whereTitle({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$TeamsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TeamFieldMap['title']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TeamPerFieldToJson.title(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TeamPerFieldToJson.title(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$TeamPerFieldToJson.title(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TeamPerFieldToJson.title(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TeamPerFieldToJson.title(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TeamPerFieldToJson.title(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$TeamPerFieldToJson.title(e)),
        whereNotIn: whereNotIn?.map((e) => _$TeamPerFieldToJson.title(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TeamsQuery wherePicturePath({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$TeamsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TeamFieldMap['picturePath']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TeamPerFieldToJson.picturePath(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TeamPerFieldToJson.picturePath(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$TeamPerFieldToJson.picturePath(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TeamPerFieldToJson.picturePath(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TeamPerFieldToJson.picturePath(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TeamPerFieldToJson
                .picturePath(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$TeamPerFieldToJson.picturePath(e)),
        whereNotIn: whereNotIn?.map((e) => _$TeamPerFieldToJson.picturePath(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TeamsQuery whereTags({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<String>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$TeamsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TeamFieldMap['tags']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TeamPerFieldToJson.tags(isEqualTo as List<String>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TeamPerFieldToJson.tags(isNotEqualTo as List<String>?)
            : null,
        isLessThan: isLessThan != null
            ? _$TeamPerFieldToJson.tags(isLessThan as List<String>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TeamPerFieldToJson.tags(isLessThanOrEqualTo as List<String>?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TeamPerFieldToJson.tags(isGreaterThan as List<String>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TeamPerFieldToJson.tags(isGreaterThanOrEqualTo as List<String>?)
            : null,
        arrayContains: arrayContains != null
            ? (_$TeamPerFieldToJson.tags([arrayContains as String]) as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$TeamPerFieldToJson.tags(arrayContainsAny) as Iterable<Object>?
            : null,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TeamsQuery whereStartDate({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  }) {
    return _$TeamsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TeamFieldMap['startDate']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TeamPerFieldToJson.startDate(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TeamPerFieldToJson.startDate(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$TeamPerFieldToJson.startDate(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TeamPerFieldToJson.startDate(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TeamPerFieldToJson.startDate(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TeamPerFieldToJson.startDate(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$TeamPerFieldToJson.startDate(e)),
        whereNotIn: whereNotIn?.map((e) => _$TeamPerFieldToJson.startDate(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TeamsQuery whereUsers({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<String>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$TeamsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TeamFieldMap['users']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TeamPerFieldToJson.users(isEqualTo as List<String>)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TeamPerFieldToJson.users(isNotEqualTo as List<String>)
            : null,
        isLessThan: isLessThan != null
            ? _$TeamPerFieldToJson.users(isLessThan as List<String>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TeamPerFieldToJson.users(isLessThanOrEqualTo as List<String>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TeamPerFieldToJson.users(isGreaterThan as List<String>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TeamPerFieldToJson.users(isGreaterThanOrEqualTo as List<String>)
            : null,
        arrayContains: arrayContains != null
            ? (_$TeamPerFieldToJson.users([arrayContains as String]) as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$TeamPerFieldToJson.users(arrayContainsAny) as Iterable<Object>?
            : null,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TeamsQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TeamsDocumentSnapshot? startAtDocument,
    TeamsDocumentSnapshot? endAtDocument,
    TeamsDocumentSnapshot? endBeforeDocument,
    TeamsDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TeamsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TeamsQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TeamsDocumentSnapshot? startAtDocument,
    TeamsDocumentSnapshot? endAtDocument,
    TeamsDocumentSnapshot? endBeforeDocument,
    TeamsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TeamsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TeamsQuery orderByTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TeamsDocumentSnapshot? startAtDocument,
    TeamsDocumentSnapshot? endAtDocument,
    TeamsDocumentSnapshot? endBeforeDocument,
    TeamsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$TeamFieldMap['title']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TeamsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TeamsQuery orderByPicturePath({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TeamsDocumentSnapshot? startAtDocument,
    TeamsDocumentSnapshot? endAtDocument,
    TeamsDocumentSnapshot? endBeforeDocument,
    TeamsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$TeamFieldMap['picturePath']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TeamsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TeamsQuery orderByTags({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TeamsDocumentSnapshot? startAtDocument,
    TeamsDocumentSnapshot? endAtDocument,
    TeamsDocumentSnapshot? endBeforeDocument,
    TeamsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$TeamFieldMap['tags']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TeamsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TeamsQuery orderByStartDate({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TeamsDocumentSnapshot? startAtDocument,
    TeamsDocumentSnapshot? endAtDocument,
    TeamsDocumentSnapshot? endBeforeDocument,
    TeamsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$TeamFieldMap['startDate']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TeamsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TeamsQuery orderByUsers({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TeamsDocumentSnapshot? startAtDocument,
    TeamsDocumentSnapshot? endAtDocument,
    TeamsDocumentSnapshot? endBeforeDocument,
    TeamsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$TeamFieldMap['users']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TeamsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$TeamsQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class TeamsDocumentSnapshot extends FirestoreDocumentSnapshot<Team> {
  TeamsDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Team> snapshot;

  @override
  TeamsDocumentReference get reference {
    return TeamsDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Team? data;
}

class TeamsQuerySnapshot
    extends FirestoreQuerySnapshot<Team, TeamsQueryDocumentSnapshot> {
  TeamsQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory TeamsQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Team> snapshot,
  ) {
    final docs = snapshot.docs.map(TeamsQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        TeamsDocumentSnapshot._,
      );
    }).toList();

    return TeamsQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<TeamsDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    TeamsDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<TeamsDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Team> snapshot;

  @override
  final List<TeamsQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<TeamsDocumentSnapshot>> docChanges;
}

class TeamsQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Team>
    implements TeamsDocumentSnapshot {
  TeamsQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Team> snapshot;

  @override
  final Team data;

  @override
  TeamsDocumentReference get reference {
    return TeamsDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class TransactionsCollectionReference
    implements
        TransactionsQuery,
        FirestoreCollectionReference<MyTransaction, TransactionsQuerySnapshot> {
  factory TransactionsCollectionReference(
    DocumentReference<Team> parent,
  ) = _$TransactionsCollectionReference;

  static MyTransaction fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$MyTransactionFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    MyTransaction value,
    SetOptions? options,
  ) {
    return _$MyTransactionToJson(value);
  }

  @override
  CollectionReference<MyTransaction> get reference;

  /// A reference to the containing [TeamsDocumentReference] if this is a subcollection.
  TeamsDocumentReference get parent;

  @override
  TransactionsDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<TransactionsDocumentReference> add(MyTransaction value);
}

class _$TransactionsCollectionReference extends _$TransactionsQuery
    implements TransactionsCollectionReference {
  factory _$TransactionsCollectionReference(
    DocumentReference<Team> parent,
  ) {
    return _$TransactionsCollectionReference._(
      TeamsDocumentReference(parent),
      parent.collection('transactions').withConverter(
            fromFirestore: TransactionsCollectionReference.fromFirestore,
            toFirestore: TransactionsCollectionReference.toFirestore,
          ),
    );
  }

  _$TransactionsCollectionReference._(
    this.parent,
    CollectionReference<MyTransaction> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final TeamsDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<MyTransaction> get reference =>
      super.reference as CollectionReference<MyTransaction>;

  @override
  TransactionsDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return TransactionsDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<TransactionsDocumentReference> add(MyTransaction value) {
    return reference
        .add(value)
        .then((ref) => TransactionsDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$TransactionsCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class TransactionsDocumentReference extends FirestoreDocumentReference<
    MyTransaction, TransactionsDocumentSnapshot> {
  factory TransactionsDocumentReference(
          DocumentReference<MyTransaction> reference) =
      _$TransactionsDocumentReference;

  DocumentReference<MyTransaction> get reference;

  /// A reference to the [TransactionsCollectionReference] containing this document.
  TransactionsCollectionReference get parent {
    return _$TransactionsCollectionReference(
      reference.parent.parent!.withConverter<Team>(
        fromFirestore: TeamsCollectionReference.fromFirestore,
        toFirestore: TeamsCollectionReference.toFirestore,
      ),
    );
  }

  late final ConcernUsersCollectionReference concerns =
      _$ConcernUsersCollectionReference(
    reference,
  );

  @override
  Stream<TransactionsDocumentSnapshot> snapshots();

  @override
  Future<TransactionsDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    MyTransaction model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue amountFieldValue,
    FieldValue dateFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    MyTransaction model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue amountFieldValue,
    FieldValue dateFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    MyTransaction model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue amountFieldValue,
    FieldValue dateFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String title,
    FieldValue titleFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    double amount,
    FieldValue amountFieldValue,
    DateTime date,
    FieldValue dateFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String title,
    FieldValue titleFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    double amount,
    FieldValue amountFieldValue,
    DateTime date,
    FieldValue dateFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String title,
    FieldValue titleFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    double amount,
    FieldValue amountFieldValue,
    DateTime date,
    FieldValue dateFieldValue,
  });
}

class _$TransactionsDocumentReference extends FirestoreDocumentReference<
    MyTransaction,
    TransactionsDocumentSnapshot> implements TransactionsDocumentReference {
  _$TransactionsDocumentReference(this.reference);

  @override
  final DocumentReference<MyTransaction> reference;

  /// A reference to the [TransactionsCollectionReference] containing this document.
  TransactionsCollectionReference get parent {
    return _$TransactionsCollectionReference(
      reference.parent.parent!.withConverter<Team>(
        fromFirestore: TeamsCollectionReference.fromFirestore,
        toFirestore: TeamsCollectionReference.toFirestore,
      ),
    );
  }

  late final ConcernUsersCollectionReference concerns =
      _$ConcernUsersCollectionReference(
    reference,
  );

  @override
  Stream<TransactionsDocumentSnapshot> snapshots() {
    return reference.snapshots().map(TransactionsDocumentSnapshot._);
  }

  @override
  Future<TransactionsDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(TransactionsDocumentSnapshot._);
  }

  @override
  Future<TransactionsDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(TransactionsDocumentSnapshot._);
  }

  Future<void> set(
    MyTransaction model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? amountFieldValue,
    FieldValue? dateFieldValue,
  }) async {
    final json = {
      ..._$MyTransactionToJson(model),
      if (titleFieldValue != null)
        _$MyTransactionFieldMap['title']!: titleFieldValue,
      if (descriptionFieldValue != null)
        _$MyTransactionFieldMap['description']!: descriptionFieldValue,
      if (amountFieldValue != null)
        _$MyTransactionFieldMap['amount']!: amountFieldValue,
      if (dateFieldValue != null)
        _$MyTransactionFieldMap['date']!: dateFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    MyTransaction model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? amountFieldValue,
    FieldValue? dateFieldValue,
  }) {
    final json = {
      ..._$MyTransactionToJson(model),
      if (titleFieldValue != null)
        _$MyTransactionFieldMap['title']!: titleFieldValue,
      if (descriptionFieldValue != null)
        _$MyTransactionFieldMap['description']!: descriptionFieldValue,
      if (amountFieldValue != null)
        _$MyTransactionFieldMap['amount']!: amountFieldValue,
      if (dateFieldValue != null)
        _$MyTransactionFieldMap['date']!: dateFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    MyTransaction model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? amountFieldValue,
    FieldValue? dateFieldValue,
  }) {
    final json = {
      ..._$MyTransactionToJson(model),
      if (titleFieldValue != null)
        _$MyTransactionFieldMap['title']!: titleFieldValue,
      if (descriptionFieldValue != null)
        _$MyTransactionFieldMap['description']!: descriptionFieldValue,
      if (amountFieldValue != null)
        _$MyTransactionFieldMap['amount']!: amountFieldValue,
      if (dateFieldValue != null)
        _$MyTransactionFieldMap['date']!: dateFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? date = _sentinel,
    FieldValue? dateFieldValue,
  }) async {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      date == _sentinel || dateFieldValue == null,
      "Cannot specify both date and dateFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$MyTransactionFieldMap['title']!:
            _$MyTransactionPerFieldToJson.title(title as String),
      if (titleFieldValue != null)
        _$MyTransactionFieldMap['title']!: titleFieldValue,
      if (description != _sentinel)
        _$MyTransactionFieldMap['description']!:
            _$MyTransactionPerFieldToJson.description(description as String?),
      if (descriptionFieldValue != null)
        _$MyTransactionFieldMap['description']!: descriptionFieldValue,
      if (amount != _sentinel)
        _$MyTransactionFieldMap['amount']!:
            _$MyTransactionPerFieldToJson.amount(amount as double),
      if (amountFieldValue != null)
        _$MyTransactionFieldMap['amount']!: amountFieldValue,
      if (date != _sentinel)
        _$MyTransactionFieldMap['date']!:
            _$MyTransactionPerFieldToJson.date(date as DateTime),
      if (dateFieldValue != null)
        _$MyTransactionFieldMap['date']!: dateFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? date = _sentinel,
    FieldValue? dateFieldValue,
  }) {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      date == _sentinel || dateFieldValue == null,
      "Cannot specify both date and dateFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$MyTransactionFieldMap['title']!:
            _$MyTransactionPerFieldToJson.title(title as String),
      if (titleFieldValue != null)
        _$MyTransactionFieldMap['title']!: titleFieldValue,
      if (description != _sentinel)
        _$MyTransactionFieldMap['description']!:
            _$MyTransactionPerFieldToJson.description(description as String?),
      if (descriptionFieldValue != null)
        _$MyTransactionFieldMap['description']!: descriptionFieldValue,
      if (amount != _sentinel)
        _$MyTransactionFieldMap['amount']!:
            _$MyTransactionPerFieldToJson.amount(amount as double),
      if (amountFieldValue != null)
        _$MyTransactionFieldMap['amount']!: amountFieldValue,
      if (date != _sentinel)
        _$MyTransactionFieldMap['date']!:
            _$MyTransactionPerFieldToJson.date(date as DateTime),
      if (dateFieldValue != null)
        _$MyTransactionFieldMap['date']!: dateFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
    Object? date = _sentinel,
    FieldValue? dateFieldValue,
  }) {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    assert(
      date == _sentinel || dateFieldValue == null,
      "Cannot specify both date and dateFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$MyTransactionFieldMap['title']!:
            _$MyTransactionPerFieldToJson.title(title as String),
      if (titleFieldValue != null)
        _$MyTransactionFieldMap['title']!: titleFieldValue,
      if (description != _sentinel)
        _$MyTransactionFieldMap['description']!:
            _$MyTransactionPerFieldToJson.description(description as String?),
      if (descriptionFieldValue != null)
        _$MyTransactionFieldMap['description']!: descriptionFieldValue,
      if (amount != _sentinel)
        _$MyTransactionFieldMap['amount']!:
            _$MyTransactionPerFieldToJson.amount(amount as double),
      if (amountFieldValue != null)
        _$MyTransactionFieldMap['amount']!: amountFieldValue,
      if (date != _sentinel)
        _$MyTransactionFieldMap['date']!:
            _$MyTransactionPerFieldToJson.date(date as DateTime),
      if (dateFieldValue != null)
        _$MyTransactionFieldMap['date']!: dateFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is TransactionsDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class TransactionsQuery
    implements QueryReference<MyTransaction, TransactionsQuerySnapshot> {
  @override
  TransactionsQuery limit(int limit);

  @override
  TransactionsQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  TransactionsQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  TransactionsQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  TransactionsQuery whereTitle({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  TransactionsQuery whereDescription({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  TransactionsQuery whereAmount({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  });

  TransactionsQuery whereDate({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  TransactionsQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    TransactionsDocumentSnapshot? startAtDocument,
    TransactionsDocumentSnapshot? endAtDocument,
    TransactionsDocumentSnapshot? endBeforeDocument,
    TransactionsDocumentSnapshot? startAfterDocument,
  });

  TransactionsQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TransactionsDocumentSnapshot? startAtDocument,
    TransactionsDocumentSnapshot? endAtDocument,
    TransactionsDocumentSnapshot? endBeforeDocument,
    TransactionsDocumentSnapshot? startAfterDocument,
  });

  TransactionsQuery orderByTitle({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TransactionsDocumentSnapshot? startAtDocument,
    TransactionsDocumentSnapshot? endAtDocument,
    TransactionsDocumentSnapshot? endBeforeDocument,
    TransactionsDocumentSnapshot? startAfterDocument,
  });

  TransactionsQuery orderByDescription({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    TransactionsDocumentSnapshot? startAtDocument,
    TransactionsDocumentSnapshot? endAtDocument,
    TransactionsDocumentSnapshot? endBeforeDocument,
    TransactionsDocumentSnapshot? startAfterDocument,
  });

  TransactionsQuery orderByAmount({
    bool descending = false,
    double startAt,
    double startAfter,
    double endAt,
    double endBefore,
    TransactionsDocumentSnapshot? startAtDocument,
    TransactionsDocumentSnapshot? endAtDocument,
    TransactionsDocumentSnapshot? endBeforeDocument,
    TransactionsDocumentSnapshot? startAfterDocument,
  });

  TransactionsQuery orderByDate({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    TransactionsDocumentSnapshot? startAtDocument,
    TransactionsDocumentSnapshot? endAtDocument,
    TransactionsDocumentSnapshot? endBeforeDocument,
    TransactionsDocumentSnapshot? startAfterDocument,
  });
}

class _$TransactionsQuery
    extends QueryReference<MyTransaction, TransactionsQuerySnapshot>
    implements TransactionsQuery {
  _$TransactionsQuery(
    this._collection, {
    required Query<MyTransaction> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<TransactionsQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(TransactionsQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<TransactionsQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(TransactionsQuerySnapshot._fromQuerySnapshot);
  }

  @override
  TransactionsQuery limit(int limit) {
    return _$TransactionsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TransactionsQuery limitToLast(int limit) {
    return _$TransactionsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TransactionsQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$TransactionsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TransactionsQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$TransactionsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TransactionsQuery whereTitle({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$TransactionsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MyTransactionFieldMap['title']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$MyTransactionPerFieldToJson.title(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$MyTransactionPerFieldToJson.title(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$MyTransactionPerFieldToJson.title(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$MyTransactionPerFieldToJson.title(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$MyTransactionPerFieldToJson.title(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$MyTransactionPerFieldToJson
                .title(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$MyTransactionPerFieldToJson.title(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$MyTransactionPerFieldToJson.title(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TransactionsQuery whereDescription({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$TransactionsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MyTransactionFieldMap['description']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$MyTransactionPerFieldToJson.description(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$MyTransactionPerFieldToJson.description(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$MyTransactionPerFieldToJson.description(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$MyTransactionPerFieldToJson
                .description(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$MyTransactionPerFieldToJson
                .description(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$MyTransactionPerFieldToJson
                .description(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn:
            whereIn?.map((e) => _$MyTransactionPerFieldToJson.description(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$MyTransactionPerFieldToJson.description(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TransactionsQuery whereAmount({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  }) {
    return _$TransactionsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MyTransactionFieldMap['amount']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$MyTransactionPerFieldToJson.amount(isEqualTo as double)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$MyTransactionPerFieldToJson.amount(isNotEqualTo as double)
            : null,
        isLessThan: isLessThan != null
            ? _$MyTransactionPerFieldToJson.amount(isLessThan as double)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$MyTransactionPerFieldToJson
                .amount(isLessThanOrEqualTo as double)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$MyTransactionPerFieldToJson.amount(isGreaterThan as double)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$MyTransactionPerFieldToJson
                .amount(isGreaterThanOrEqualTo as double)
            : null,
        whereIn: whereIn?.map((e) => _$MyTransactionPerFieldToJson.amount(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$MyTransactionPerFieldToJson.amount(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TransactionsQuery whereDate({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  }) {
    return _$TransactionsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MyTransactionFieldMap['date']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$MyTransactionPerFieldToJson.date(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$MyTransactionPerFieldToJson.date(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$MyTransactionPerFieldToJson.date(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$MyTransactionPerFieldToJson
                .date(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$MyTransactionPerFieldToJson.date(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$MyTransactionPerFieldToJson
                .date(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$MyTransactionPerFieldToJson.date(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$MyTransactionPerFieldToJson.date(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TransactionsQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TransactionsDocumentSnapshot? startAtDocument,
    TransactionsDocumentSnapshot? endAtDocument,
    TransactionsDocumentSnapshot? endBeforeDocument,
    TransactionsDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TransactionsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TransactionsQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TransactionsDocumentSnapshot? startAtDocument,
    TransactionsDocumentSnapshot? endAtDocument,
    TransactionsDocumentSnapshot? endBeforeDocument,
    TransactionsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TransactionsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TransactionsQuery orderByTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TransactionsDocumentSnapshot? startAtDocument,
    TransactionsDocumentSnapshot? endAtDocument,
    TransactionsDocumentSnapshot? endBeforeDocument,
    TransactionsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$MyTransactionFieldMap['title']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TransactionsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TransactionsQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TransactionsDocumentSnapshot? startAtDocument,
    TransactionsDocumentSnapshot? endAtDocument,
    TransactionsDocumentSnapshot? endBeforeDocument,
    TransactionsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$MyTransactionFieldMap['description']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TransactionsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TransactionsQuery orderByAmount({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TransactionsDocumentSnapshot? startAtDocument,
    TransactionsDocumentSnapshot? endAtDocument,
    TransactionsDocumentSnapshot? endBeforeDocument,
    TransactionsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$MyTransactionFieldMap['amount']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TransactionsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TransactionsQuery orderByDate({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TransactionsDocumentSnapshot? startAtDocument,
    TransactionsDocumentSnapshot? endAtDocument,
    TransactionsDocumentSnapshot? endBeforeDocument,
    TransactionsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$MyTransactionFieldMap['date']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TransactionsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$TransactionsQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class TransactionsDocumentSnapshot
    extends FirestoreDocumentSnapshot<MyTransaction> {
  TransactionsDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<MyTransaction> snapshot;

  @override
  TransactionsDocumentReference get reference {
    return TransactionsDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final MyTransaction? data;
}

class TransactionsQuerySnapshot extends FirestoreQuerySnapshot<MyTransaction,
    TransactionsQueryDocumentSnapshot> {
  TransactionsQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory TransactionsQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<MyTransaction> snapshot,
  ) {
    final docs =
        snapshot.docs.map(TransactionsQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        TransactionsDocumentSnapshot._,
      );
    }).toList();

    return TransactionsQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<TransactionsDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    TransactionsDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<TransactionsDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<MyTransaction> snapshot;

  @override
  final List<TransactionsQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<TransactionsDocumentSnapshot>> docChanges;
}

class TransactionsQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<MyTransaction>
    implements TransactionsDocumentSnapshot {
  TransactionsQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<MyTransaction> snapshot;

  @override
  final MyTransaction data;

  @override
  TransactionsDocumentReference get reference {
    return TransactionsDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class ConcernUsersCollectionReference
    implements
        ConcernUsersQuery,
        FirestoreCollectionReference<User, ConcernUsersQuerySnapshot> {
  factory ConcernUsersCollectionReference(
    DocumentReference<MyTransaction> parent,
  ) = _$ConcernUsersCollectionReference;

  static User fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$UserFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    User value,
    SetOptions? options,
  ) {
    return _$UserToJson(value);
  }

  @override
  CollectionReference<User> get reference;

  /// A reference to the containing [TransactionsDocumentReference] if this is a subcollection.
  TransactionsDocumentReference get parent;

  @override
  ConcernUsersDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ConcernUsersDocumentReference> add(User value);
}

class _$ConcernUsersCollectionReference extends _$ConcernUsersQuery
    implements ConcernUsersCollectionReference {
  factory _$ConcernUsersCollectionReference(
    DocumentReference<MyTransaction> parent,
  ) {
    return _$ConcernUsersCollectionReference._(
      TransactionsDocumentReference(parent),
      parent.collection('concerns').withConverter(
            fromFirestore: ConcernUsersCollectionReference.fromFirestore,
            toFirestore: ConcernUsersCollectionReference.toFirestore,
          ),
    );
  }

  _$ConcernUsersCollectionReference._(
    this.parent,
    CollectionReference<User> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final TransactionsDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<User> get reference =>
      super.reference as CollectionReference<User>;

  @override
  ConcernUsersDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ConcernUsersDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ConcernUsersDocumentReference> add(User value) {
    return reference
        .add(value)
        .then((ref) => ConcernUsersDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ConcernUsersCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ConcernUsersDocumentReference
    extends FirestoreDocumentReference<User, ConcernUsersDocumentSnapshot> {
  factory ConcernUsersDocumentReference(DocumentReference<User> reference) =
      _$ConcernUsersDocumentReference;

  DocumentReference<User> get reference;

  /// A reference to the [ConcernUsersCollectionReference] containing this document.
  ConcernUsersCollectionReference get parent {
    return _$ConcernUsersCollectionReference(
      reference.parent.parent!.withConverter<MyTransaction>(
        fromFirestore: TransactionsCollectionReference.fromFirestore,
        toFirestore: TransactionsCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<ConcernUsersDocumentSnapshot> snapshots();

  @override
  Future<ConcernUsersDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    User model, {
    SetOptions? options,
    FieldValue firstNameFieldValue,
    FieldValue lastNameFieldValue,
    FieldValue emailFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    User model, {
    SetOptions? options,
    FieldValue firstNameFieldValue,
    FieldValue lastNameFieldValue,
    FieldValue emailFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    User model, {
    SetOptions? options,
    FieldValue firstNameFieldValue,
    FieldValue lastNameFieldValue,
    FieldValue emailFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String firstName,
    FieldValue firstNameFieldValue,
    String lastName,
    FieldValue lastNameFieldValue,
    String email,
    FieldValue emailFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String firstName,
    FieldValue firstNameFieldValue,
    String lastName,
    FieldValue lastNameFieldValue,
    String email,
    FieldValue emailFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String firstName,
    FieldValue firstNameFieldValue,
    String lastName,
    FieldValue lastNameFieldValue,
    String email,
    FieldValue emailFieldValue,
  });
}

class _$ConcernUsersDocumentReference
    extends FirestoreDocumentReference<User, ConcernUsersDocumentSnapshot>
    implements ConcernUsersDocumentReference {
  _$ConcernUsersDocumentReference(this.reference);

  @override
  final DocumentReference<User> reference;

  /// A reference to the [ConcernUsersCollectionReference] containing this document.
  ConcernUsersCollectionReference get parent {
    return _$ConcernUsersCollectionReference(
      reference.parent.parent!.withConverter<MyTransaction>(
        fromFirestore: TransactionsCollectionReference.fromFirestore,
        toFirestore: TransactionsCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<ConcernUsersDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ConcernUsersDocumentSnapshot._);
  }

  @override
  Future<ConcernUsersDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ConcernUsersDocumentSnapshot._);
  }

  @override
  Future<ConcernUsersDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(ConcernUsersDocumentSnapshot._);
  }

  Future<void> set(
    User model, {
    SetOptions? options,
    FieldValue? firstNameFieldValue,
    FieldValue? lastNameFieldValue,
    FieldValue? emailFieldValue,
  }) async {
    final json = {
      ..._$UserToJson(model),
      if (firstNameFieldValue != null)
        _$UserFieldMap['firstName']!: firstNameFieldValue,
      if (lastNameFieldValue != null)
        _$UserFieldMap['lastName']!: lastNameFieldValue,
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    User model, {
    SetOptions? options,
    FieldValue? firstNameFieldValue,
    FieldValue? lastNameFieldValue,
    FieldValue? emailFieldValue,
  }) {
    final json = {
      ..._$UserToJson(model),
      if (firstNameFieldValue != null)
        _$UserFieldMap['firstName']!: firstNameFieldValue,
      if (lastNameFieldValue != null)
        _$UserFieldMap['lastName']!: lastNameFieldValue,
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    User model, {
    SetOptions? options,
    FieldValue? firstNameFieldValue,
    FieldValue? lastNameFieldValue,
    FieldValue? emailFieldValue,
  }) {
    final json = {
      ..._$UserToJson(model),
      if (firstNameFieldValue != null)
        _$UserFieldMap['firstName']!: firstNameFieldValue,
      if (lastNameFieldValue != null)
        _$UserFieldMap['lastName']!: lastNameFieldValue,
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? firstName = _sentinel,
    FieldValue? firstNameFieldValue,
    Object? lastName = _sentinel,
    FieldValue? lastNameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
  }) async {
    assert(
      firstName == _sentinel || firstNameFieldValue == null,
      "Cannot specify both firstName and firstNameFieldValue",
    );
    assert(
      lastName == _sentinel || lastNameFieldValue == null,
      "Cannot specify both lastName and lastNameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    final json = {
      if (firstName != _sentinel)
        _$UserFieldMap['firstName']!:
            _$UserPerFieldToJson.firstName(firstName as String),
      if (firstNameFieldValue != null)
        _$UserFieldMap['firstName']!: firstNameFieldValue,
      if (lastName != _sentinel)
        _$UserFieldMap['lastName']!:
            _$UserPerFieldToJson.lastName(lastName as String),
      if (lastNameFieldValue != null)
        _$UserFieldMap['lastName']!: lastNameFieldValue,
      if (email != _sentinel)
        _$UserFieldMap['email']!: _$UserPerFieldToJson.email(email as String),
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? firstName = _sentinel,
    FieldValue? firstNameFieldValue,
    Object? lastName = _sentinel,
    FieldValue? lastNameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
  }) {
    assert(
      firstName == _sentinel || firstNameFieldValue == null,
      "Cannot specify both firstName and firstNameFieldValue",
    );
    assert(
      lastName == _sentinel || lastNameFieldValue == null,
      "Cannot specify both lastName and lastNameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    final json = {
      if (firstName != _sentinel)
        _$UserFieldMap['firstName']!:
            _$UserPerFieldToJson.firstName(firstName as String),
      if (firstNameFieldValue != null)
        _$UserFieldMap['firstName']!: firstNameFieldValue,
      if (lastName != _sentinel)
        _$UserFieldMap['lastName']!:
            _$UserPerFieldToJson.lastName(lastName as String),
      if (lastNameFieldValue != null)
        _$UserFieldMap['lastName']!: lastNameFieldValue,
      if (email != _sentinel)
        _$UserFieldMap['email']!: _$UserPerFieldToJson.email(email as String),
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? firstName = _sentinel,
    FieldValue? firstNameFieldValue,
    Object? lastName = _sentinel,
    FieldValue? lastNameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
  }) {
    assert(
      firstName == _sentinel || firstNameFieldValue == null,
      "Cannot specify both firstName and firstNameFieldValue",
    );
    assert(
      lastName == _sentinel || lastNameFieldValue == null,
      "Cannot specify both lastName and lastNameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    final json = {
      if (firstName != _sentinel)
        _$UserFieldMap['firstName']!:
            _$UserPerFieldToJson.firstName(firstName as String),
      if (firstNameFieldValue != null)
        _$UserFieldMap['firstName']!: firstNameFieldValue,
      if (lastName != _sentinel)
        _$UserFieldMap['lastName']!:
            _$UserPerFieldToJson.lastName(lastName as String),
      if (lastNameFieldValue != null)
        _$UserFieldMap['lastName']!: lastNameFieldValue,
      if (email != _sentinel)
        _$UserFieldMap['email']!: _$UserPerFieldToJson.email(email as String),
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ConcernUsersDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ConcernUsersQuery
    implements QueryReference<User, ConcernUsersQuerySnapshot> {
  @override
  ConcernUsersQuery limit(int limit);

  @override
  ConcernUsersQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  ConcernUsersQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  ConcernUsersQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  ConcernUsersQuery whereFirstName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  ConcernUsersQuery whereLastName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  ConcernUsersQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  ConcernUsersQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    ConcernUsersDocumentSnapshot? startAtDocument,
    ConcernUsersDocumentSnapshot? endAtDocument,
    ConcernUsersDocumentSnapshot? endBeforeDocument,
    ConcernUsersDocumentSnapshot? startAfterDocument,
  });

  ConcernUsersQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ConcernUsersDocumentSnapshot? startAtDocument,
    ConcernUsersDocumentSnapshot? endAtDocument,
    ConcernUsersDocumentSnapshot? endBeforeDocument,
    ConcernUsersDocumentSnapshot? startAfterDocument,
  });

  ConcernUsersQuery orderByFirstName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ConcernUsersDocumentSnapshot? startAtDocument,
    ConcernUsersDocumentSnapshot? endAtDocument,
    ConcernUsersDocumentSnapshot? endBeforeDocument,
    ConcernUsersDocumentSnapshot? startAfterDocument,
  });

  ConcernUsersQuery orderByLastName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ConcernUsersDocumentSnapshot? startAtDocument,
    ConcernUsersDocumentSnapshot? endAtDocument,
    ConcernUsersDocumentSnapshot? endBeforeDocument,
    ConcernUsersDocumentSnapshot? startAfterDocument,
  });

  ConcernUsersQuery orderByEmail({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ConcernUsersDocumentSnapshot? startAtDocument,
    ConcernUsersDocumentSnapshot? endAtDocument,
    ConcernUsersDocumentSnapshot? endBeforeDocument,
    ConcernUsersDocumentSnapshot? startAfterDocument,
  });
}

class _$ConcernUsersQuery
    extends QueryReference<User, ConcernUsersQuerySnapshot>
    implements ConcernUsersQuery {
  _$ConcernUsersQuery(
    this._collection, {
    required Query<User> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ConcernUsersQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(ConcernUsersQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ConcernUsersQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ConcernUsersQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ConcernUsersQuery limit(int limit) {
    return _$ConcernUsersQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ConcernUsersQuery limitToLast(int limit) {
    return _$ConcernUsersQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ConcernUsersQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$ConcernUsersQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ConcernUsersQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$ConcernUsersQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ConcernUsersQuery whereFirstName({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$ConcernUsersQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['firstName']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.firstName(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.firstName(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.firstName(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.firstName(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.firstName(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.firstName(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.firstName(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserPerFieldToJson.firstName(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ConcernUsersQuery whereLastName({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$ConcernUsersQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['lastName']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.lastName(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.lastName(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.lastName(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.lastName(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.lastName(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.lastName(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.lastName(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserPerFieldToJson.lastName(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ConcernUsersQuery whereEmail({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$ConcernUsersQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['email']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.email(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.email(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.email(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.email(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.email(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.email(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.email(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserPerFieldToJson.email(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ConcernUsersQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ConcernUsersDocumentSnapshot? startAtDocument,
    ConcernUsersDocumentSnapshot? endAtDocument,
    ConcernUsersDocumentSnapshot? endBeforeDocument,
    ConcernUsersDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ConcernUsersQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ConcernUsersQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ConcernUsersDocumentSnapshot? startAtDocument,
    ConcernUsersDocumentSnapshot? endAtDocument,
    ConcernUsersDocumentSnapshot? endBeforeDocument,
    ConcernUsersDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ConcernUsersQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ConcernUsersQuery orderByFirstName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ConcernUsersDocumentSnapshot? startAtDocument,
    ConcernUsersDocumentSnapshot? endAtDocument,
    ConcernUsersDocumentSnapshot? endBeforeDocument,
    ConcernUsersDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserFieldMap['firstName']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ConcernUsersQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ConcernUsersQuery orderByLastName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ConcernUsersDocumentSnapshot? startAtDocument,
    ConcernUsersDocumentSnapshot? endAtDocument,
    ConcernUsersDocumentSnapshot? endBeforeDocument,
    ConcernUsersDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserFieldMap['lastName']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ConcernUsersQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ConcernUsersQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ConcernUsersDocumentSnapshot? startAtDocument,
    ConcernUsersDocumentSnapshot? endAtDocument,
    ConcernUsersDocumentSnapshot? endBeforeDocument,
    ConcernUsersDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserFieldMap['email']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ConcernUsersQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ConcernUsersQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ConcernUsersDocumentSnapshot extends FirestoreDocumentSnapshot<User> {
  ConcernUsersDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<User> snapshot;

  @override
  ConcernUsersDocumentReference get reference {
    return ConcernUsersDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final User? data;
}

class ConcernUsersQuerySnapshot
    extends FirestoreQuerySnapshot<User, ConcernUsersQueryDocumentSnapshot> {
  ConcernUsersQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ConcernUsersQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<User> snapshot,
  ) {
    final docs =
        snapshot.docs.map(ConcernUsersQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ConcernUsersDocumentSnapshot._,
      );
    }).toList();

    return ConcernUsersQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ConcernUsersDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ConcernUsersDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<ConcernUsersDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<User> snapshot;

  @override
  final List<ConcernUsersQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ConcernUsersDocumentSnapshot>> docChanges;
}

class ConcernUsersQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<User>
    implements ConcernUsersDocumentSnapshot {
  ConcernUsersQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<User> snapshot;

  @override
  final User data;

  @override
  ConcernUsersDocumentReference get reference {
    return ConcernUsersDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
    );

const _$UserFieldMap = <String, String>{
  'firstName': 'firstName',
  'lastName': 'lastName',
  'email': 'email',
};

// ignore: unused_element
abstract class _$UserPerFieldToJson {
  // ignore: unused_element
  static Object? firstName(String instance) => instance;
  // ignore: unused_element
  static Object? lastName(String instance) => instance;
  // ignore: unused_element
  static Object? email(String instance) => instance;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
    };

MyTransaction _$MyTransactionFromJson(Map<String, dynamic> json) =>
    MyTransaction(
      title: json['title'] as String,
      description: json['description'] as String?,
      amount: (json['amount'] as num).toDouble(),
      date: const FirestoreDateTimeConverter()
          .fromJson(json['date'] as Timestamp),
    );

const _$MyTransactionFieldMap = <String, String>{
  'title': 'title',
  'description': 'description',
  'amount': 'amount',
  'date': 'date',
};

// ignore: unused_element
abstract class _$MyTransactionPerFieldToJson {
  // ignore: unused_element
  static Object? title(String instance) => instance;
  // ignore: unused_element
  static Object? description(String? instance) => instance;
  // ignore: unused_element
  static Object? amount(double instance) => instance;
  // ignore: unused_element
  static Object? date(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
}

Map<String, dynamic> _$MyTransactionToJson(MyTransaction instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'amount': instance.amount,
      'date': const FirestoreDateTimeConverter().toJson(instance.date),
    };

Team _$TeamFromJson(Map<String, dynamic> json) => Team(
      title: json['title'] as String,
      picturePath: json['picturePath'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      startDate: const FirestoreDateTimeConverter()
          .fromJson(json['startDate'] as Timestamp),
      users: (json['users'] as List<dynamic>).map((e) => e as String).toList(),
    );

const _$TeamFieldMap = <String, String>{
  'title': 'title',
  'picturePath': 'picturePath',
  'tags': 'tags',
  'startDate': 'startDate',
  'users': 'users',
};

// ignore: unused_element
abstract class _$TeamPerFieldToJson {
  // ignore: unused_element
  static Object? title(String instance) => instance;
  // ignore: unused_element
  static Object? picturePath(String? instance) => instance;
  // ignore: unused_element
  static Object? tags(List<String>? instance) => instance;
  // ignore: unused_element
  static Object? startDate(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? users(List<String> instance) => instance;
}

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'title': instance.title,
      'picturePath': instance.picturePath,
      'tags': instance.tags,
      'startDate':
          const FirestoreDateTimeConverter().toJson(instance.startDate),
      'users': instance.users,
    };
