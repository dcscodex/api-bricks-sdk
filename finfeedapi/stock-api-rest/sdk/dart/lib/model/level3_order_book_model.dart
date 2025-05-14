//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Level3OrderBookModel {
  /// Returns a new [Level3OrderBookModel] instance.
  Level3OrderBookModel({
    this.addOrder,
    this.deleteOrder,
    this.modifyOrder,
    this.executedOrder,
    this.clearBook,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Level3AddOrderModel? addOrder;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Level3DeleteOrderModel? deleteOrder;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Level3ModifyOrderModel? modifyOrder;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Level3ExecutedOrderModel? executedOrder;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Level3ClearBookModel? clearBook;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Level3OrderBookModel &&
    other.addOrder == addOrder &&
    other.deleteOrder == deleteOrder &&
    other.modifyOrder == modifyOrder &&
    other.executedOrder == executedOrder &&
    other.clearBook == clearBook;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (addOrder == null ? 0 : addOrder!.hashCode) +
    (deleteOrder == null ? 0 : deleteOrder!.hashCode) +
    (modifyOrder == null ? 0 : modifyOrder!.hashCode) +
    (executedOrder == null ? 0 : executedOrder!.hashCode) +
    (clearBook == null ? 0 : clearBook!.hashCode);

  @override
  String toString() => 'Level3OrderBookModel[addOrder=$addOrder, deleteOrder=$deleteOrder, modifyOrder=$modifyOrder, executedOrder=$executedOrder, clearBook=$clearBook]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.addOrder != null) {
      json[r'add_order'] = this.addOrder;
    } else {
      json[r'add_order'] = null;
    }
    if (this.deleteOrder != null) {
      json[r'delete_order'] = this.deleteOrder;
    } else {
      json[r'delete_order'] = null;
    }
    if (this.modifyOrder != null) {
      json[r'modify_order'] = this.modifyOrder;
    } else {
      json[r'modify_order'] = null;
    }
    if (this.executedOrder != null) {
      json[r'executed_order'] = this.executedOrder;
    } else {
      json[r'executed_order'] = null;
    }
    if (this.clearBook != null) {
      json[r'clear_book'] = this.clearBook;
    } else {
      json[r'clear_book'] = null;
    }
    return json;
  }

  /// Returns a new [Level3OrderBookModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Level3OrderBookModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Level3OrderBookModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Level3OrderBookModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Level3OrderBookModel(
        addOrder: Level3AddOrderModel.fromJson(json[r'add_order']),
        deleteOrder: Level3DeleteOrderModel.fromJson(json[r'delete_order']),
        modifyOrder: Level3ModifyOrderModel.fromJson(json[r'modify_order']),
        executedOrder: Level3ExecutedOrderModel.fromJson(json[r'executed_order']),
        clearBook: Level3ClearBookModel.fromJson(json[r'clear_book']),
      );
    }
    return null;
  }

  static List<Level3OrderBookModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Level3OrderBookModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Level3OrderBookModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Level3OrderBookModel> mapFromJson(dynamic json) {
    final map = <String, Level3OrderBookModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Level3OrderBookModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Level3OrderBookModel-objects as value to a dart map
  static Map<String, List<Level3OrderBookModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Level3OrderBookModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Level3OrderBookModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

