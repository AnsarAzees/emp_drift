// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class EmployeeData extends DataClass implements Insertable<EmployeeData> {
  final int? id;
  final String? name;
  final String? username;
  final String? email;
  final String? profileImage;
  final String? website;
  final String? phone;
  final int? address;
  final int? company;
  EmployeeData(
      {this.id,
      this.name,
      this.username,
      this.email,
      this.profileImage,
      this.website,
      this.phone,
      this.address,
      this.company});
  factory EmployeeData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return EmployeeData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      username: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}username']),
      email: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}email']),
      profileImage: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}profile_image']),
      website: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}website']),
      phone: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}phone']),
      address: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}address']),
      company: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}company']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String?>(name);
    }
    if (!nullToAbsent || username != null) {
      map['username'] = Variable<String?>(username);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String?>(email);
    }
    if (!nullToAbsent || profileImage != null) {
      map['profile_image'] = Variable<String?>(profileImage);
    }
    if (!nullToAbsent || website != null) {
      map['website'] = Variable<String?>(website);
    }
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String?>(phone);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<int?>(address);
    }
    if (!nullToAbsent || company != null) {
      map['company'] = Variable<int?>(company);
    }
    return map;
  }

  EmployeeCompanion toCompanion(bool nullToAbsent) {
    return EmployeeCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      username: username == null && nullToAbsent
          ? const Value.absent()
          : Value(username),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      profileImage: profileImage == null && nullToAbsent
          ? const Value.absent()
          : Value(profileImage),
      website: website == null && nullToAbsent
          ? const Value.absent()
          : Value(website),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      company: company == null && nullToAbsent
          ? const Value.absent()
          : Value(company),
    );
  }

  factory EmployeeData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EmployeeData(
      id: serializer.fromJson<int?>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      username: serializer.fromJson<String?>(json['username']),
      email: serializer.fromJson<String?>(json['email']),
      profileImage: serializer.fromJson<String?>(json['profileImage']),
      website: serializer.fromJson<String?>(json['website']),
      phone: serializer.fromJson<String?>(json['phone']),
      address: serializer.fromJson<int?>(json['address']),
      company: serializer.fromJson<int?>(json['company']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'name': serializer.toJson<String?>(name),
      'username': serializer.toJson<String?>(username),
      'email': serializer.toJson<String?>(email),
      'profileImage': serializer.toJson<String?>(profileImage),
      'website': serializer.toJson<String?>(website),
      'phone': serializer.toJson<String?>(phone),
      'address': serializer.toJson<int?>(address),
      'company': serializer.toJson<int?>(company),
    };
  }

  EmployeeData copyWith(
          {int? id,
          String? name,
          String? username,
          String? email,
          String? profileImage,
          String? website,
          String? phone,
          int? address,
          int? company}) =>
      EmployeeData(
        id: id ?? this.id,
        name: name ?? this.name,
        username: username ?? this.username,
        email: email ?? this.email,
        profileImage: profileImage ?? this.profileImage,
        website: website ?? this.website,
        phone: phone ?? this.phone,
        address: address ?? this.address,
        company: company ?? this.company,
      );
  @override
  String toString() {
    return (StringBuffer('EmployeeData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('username: $username, ')
          ..write('email: $email, ')
          ..write('profileImage: $profileImage, ')
          ..write('website: $website, ')
          ..write('phone: $phone, ')
          ..write('address: $address, ')
          ..write('company: $company')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, username, email, profileImage,
      website, phone, address, company);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EmployeeData &&
          other.id == this.id &&
          other.name == this.name &&
          other.username == this.username &&
          other.email == this.email &&
          other.profileImage == this.profileImage &&
          other.website == this.website &&
          other.phone == this.phone &&
          other.address == this.address &&
          other.company == this.company);
}

class EmployeeCompanion extends UpdateCompanion<EmployeeData> {
  final Value<int?> id;
  final Value<String?> name;
  final Value<String?> username;
  final Value<String?> email;
  final Value<String?> profileImage;
  final Value<String?> website;
  final Value<String?> phone;
  final Value<int?> address;
  final Value<int?> company;
  const EmployeeCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.username = const Value.absent(),
    this.email = const Value.absent(),
    this.profileImage = const Value.absent(),
    this.website = const Value.absent(),
    this.phone = const Value.absent(),
    this.address = const Value.absent(),
    this.company = const Value.absent(),
  });
  EmployeeCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.username = const Value.absent(),
    this.email = const Value.absent(),
    this.profileImage = const Value.absent(),
    this.website = const Value.absent(),
    this.phone = const Value.absent(),
    this.address = const Value.absent(),
    this.company = const Value.absent(),
  });
  static Insertable<EmployeeData> custom({
    Expression<int?>? id,
    Expression<String?>? name,
    Expression<String?>? username,
    Expression<String?>? email,
    Expression<String?>? profileImage,
    Expression<String?>? website,
    Expression<String?>? phone,
    Expression<int?>? address,
    Expression<int?>? company,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (username != null) 'username': username,
      if (email != null) 'email': email,
      if (profileImage != null) 'profile_image': profileImage,
      if (website != null) 'website': website,
      if (phone != null) 'phone': phone,
      if (address != null) 'address': address,
      if (company != null) 'company': company,
    });
  }

  EmployeeCompanion copyWith(
      {Value<int?>? id,
      Value<String?>? name,
      Value<String?>? username,
      Value<String?>? email,
      Value<String?>? profileImage,
      Value<String?>? website,
      Value<String?>? phone,
      Value<int?>? address,
      Value<int?>? company}) {
    return EmployeeCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      username: username ?? this.username,
      email: email ?? this.email,
      profileImage: profileImage ?? this.profileImage,
      website: website ?? this.website,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      company: company ?? this.company,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String?>(name.value);
    }
    if (username.present) {
      map['username'] = Variable<String?>(username.value);
    }
    if (email.present) {
      map['email'] = Variable<String?>(email.value);
    }
    if (profileImage.present) {
      map['profile_image'] = Variable<String?>(profileImage.value);
    }
    if (website.present) {
      map['website'] = Variable<String?>(website.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String?>(phone.value);
    }
    if (address.present) {
      map['address'] = Variable<int?>(address.value);
    }
    if (company.present) {
      map['company'] = Variable<int?>(company.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EmployeeCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('username: $username, ')
          ..write('email: $email, ')
          ..write('profileImage: $profileImage, ')
          ..write('website: $website, ')
          ..write('phone: $phone, ')
          ..write('address: $address, ')
          ..write('company: $company')
          ..write(')'))
        .toString();
  }
}

class $EmployeeTable extends Employee
    with TableInfo<$EmployeeTable, EmployeeData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EmployeeTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _usernameMeta = const VerificationMeta('username');
  @override
  late final GeneratedColumn<String?> username = GeneratedColumn<String?>(
      'username', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String?> email = GeneratedColumn<String?>(
      'email', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _profileImageMeta =
      const VerificationMeta('profileImage');
  @override
  late final GeneratedColumn<String?> profileImage = GeneratedColumn<String?>(
      'profile_image', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _websiteMeta = const VerificationMeta('website');
  @override
  late final GeneratedColumn<String?> website = GeneratedColumn<String?>(
      'website', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String?> phone = GeneratedColumn<String?>(
      'phone', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _addressMeta = const VerificationMeta('address');
  @override
  late final GeneratedColumn<int?> address = GeneratedColumn<int?>(
      'address', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _companyMeta = const VerificationMeta('company');
  @override
  late final GeneratedColumn<int?> company = GeneratedColumn<int?>(
      'company', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        username,
        email,
        profileImage,
        website,
        phone,
        address,
        company
      ];
  @override
  String get aliasedName => _alias ?? 'employee';
  @override
  String get actualTableName => 'employee';
  @override
  VerificationContext validateIntegrity(Insertable<EmployeeData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('profile_image')) {
      context.handle(
          _profileImageMeta,
          profileImage.isAcceptableOrUnknown(
              data['profile_image']!, _profileImageMeta));
    }
    if (data.containsKey('website')) {
      context.handle(_websiteMeta,
          website.isAcceptableOrUnknown(data['website']!, _websiteMeta));
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    }
    if (data.containsKey('company')) {
      context.handle(_companyMeta,
          company.isAcceptableOrUnknown(data['company']!, _companyMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EmployeeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return EmployeeData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $EmployeeTable createAlias(String alias) {
    return $EmployeeTable(attachedDatabase, alias);
  }
}

class Addres extends DataClass implements Insertable<Addres> {
  final int? id;
  final String? street;
  final String? suite;
  final String? city;
  final String? zipcode;
  Addres({this.id, this.street, this.suite, this.city, this.zipcode});
  factory Addres.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Addres(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      street: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}street']),
      suite: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}suite']),
      city: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}city']),
      zipcode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}zipcode']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || street != null) {
      map['street'] = Variable<String?>(street);
    }
    if (!nullToAbsent || suite != null) {
      map['suite'] = Variable<String?>(suite);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String?>(city);
    }
    if (!nullToAbsent || zipcode != null) {
      map['zipcode'] = Variable<String?>(zipcode);
    }
    return map;
  }

  AddressCompanion toCompanion(bool nullToAbsent) {
    return AddressCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      street:
          street == null && nullToAbsent ? const Value.absent() : Value(street),
      suite:
          suite == null && nullToAbsent ? const Value.absent() : Value(suite),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      zipcode: zipcode == null && nullToAbsent
          ? const Value.absent()
          : Value(zipcode),
    );
  }

  factory Addres.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Addres(
      id: serializer.fromJson<int?>(json['id']),
      street: serializer.fromJson<String?>(json['street']),
      suite: serializer.fromJson<String?>(json['suite']),
      city: serializer.fromJson<String?>(json['city']),
      zipcode: serializer.fromJson<String?>(json['zipcode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'street': serializer.toJson<String?>(street),
      'suite': serializer.toJson<String?>(suite),
      'city': serializer.toJson<String?>(city),
      'zipcode': serializer.toJson<String?>(zipcode),
    };
  }

  Addres copyWith(
          {int? id,
          String? street,
          String? suite,
          String? city,
          String? zipcode}) =>
      Addres(
        id: id ?? this.id,
        street: street ?? this.street,
        suite: suite ?? this.suite,
        city: city ?? this.city,
        zipcode: zipcode ?? this.zipcode,
      );
  @override
  String toString() {
    return (StringBuffer('Addres(')
          ..write('id: $id, ')
          ..write('street: $street, ')
          ..write('suite: $suite, ')
          ..write('city: $city, ')
          ..write('zipcode: $zipcode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, street, suite, city, zipcode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Addres &&
          other.id == this.id &&
          other.street == this.street &&
          other.suite == this.suite &&
          other.city == this.city &&
          other.zipcode == this.zipcode);
}

class AddressCompanion extends UpdateCompanion<Addres> {
  final Value<int?> id;
  final Value<String?> street;
  final Value<String?> suite;
  final Value<String?> city;
  final Value<String?> zipcode;
  const AddressCompanion({
    this.id = const Value.absent(),
    this.street = const Value.absent(),
    this.suite = const Value.absent(),
    this.city = const Value.absent(),
    this.zipcode = const Value.absent(),
  });
  AddressCompanion.insert({
    this.id = const Value.absent(),
    this.street = const Value.absent(),
    this.suite = const Value.absent(),
    this.city = const Value.absent(),
    this.zipcode = const Value.absent(),
  });
  static Insertable<Addres> custom({
    Expression<int?>? id,
    Expression<String?>? street,
    Expression<String?>? suite,
    Expression<String?>? city,
    Expression<String?>? zipcode,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (street != null) 'street': street,
      if (suite != null) 'suite': suite,
      if (city != null) 'city': city,
      if (zipcode != null) 'zipcode': zipcode,
    });
  }

  AddressCompanion copyWith(
      {Value<int?>? id,
      Value<String?>? street,
      Value<String?>? suite,
      Value<String?>? city,
      Value<String?>? zipcode}) {
    return AddressCompanion(
      id: id ?? this.id,
      street: street ?? this.street,
      suite: suite ?? this.suite,
      city: city ?? this.city,
      zipcode: zipcode ?? this.zipcode,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (street.present) {
      map['street'] = Variable<String?>(street.value);
    }
    if (suite.present) {
      map['suite'] = Variable<String?>(suite.value);
    }
    if (city.present) {
      map['city'] = Variable<String?>(city.value);
    }
    if (zipcode.present) {
      map['zipcode'] = Variable<String?>(zipcode.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AddressCompanion(')
          ..write('id: $id, ')
          ..write('street: $street, ')
          ..write('suite: $suite, ')
          ..write('city: $city, ')
          ..write('zipcode: $zipcode')
          ..write(')'))
        .toString();
  }
}

class $AddressTable extends Address with TableInfo<$AddressTable, Addres> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AddressTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _streetMeta = const VerificationMeta('street');
  @override
  late final GeneratedColumn<String?> street = GeneratedColumn<String?>(
      'street', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _suiteMeta = const VerificationMeta('suite');
  @override
  late final GeneratedColumn<String?> suite = GeneratedColumn<String?>(
      'suite', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String?> city = GeneratedColumn<String?>(
      'city', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _zipcodeMeta = const VerificationMeta('zipcode');
  @override
  late final GeneratedColumn<String?> zipcode = GeneratedColumn<String?>(
      'zipcode', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, street, suite, city, zipcode];
  @override
  String get aliasedName => _alias ?? 'address';
  @override
  String get actualTableName => 'address';
  @override
  VerificationContext validateIntegrity(Insertable<Addres> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('street')) {
      context.handle(_streetMeta,
          street.isAcceptableOrUnknown(data['street']!, _streetMeta));
    }
    if (data.containsKey('suite')) {
      context.handle(
          _suiteMeta, suite.isAcceptableOrUnknown(data['suite']!, _suiteMeta));
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    }
    if (data.containsKey('zipcode')) {
      context.handle(_zipcodeMeta,
          zipcode.isAcceptableOrUnknown(data['zipcode']!, _zipcodeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Addres map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Addres.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AddressTable createAlias(String alias) {
    return $AddressTable(attachedDatabase, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $EmployeeTable employee = $EmployeeTable(this);
  late final $AddressTable address = $AddressTable(this);
  late final EmployeeDatabaseHelper employeeDatabaseHelper =
      EmployeeDatabaseHelper(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [employee, address];
}
