//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// Defines sorting options for the filing query.
class DTOFilingSortBy {
  /// Instantiate a new enum with the provided [value].
  const DTOFilingSortBy._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const accessionNumber = DTOFilingSortBy._(r'AccessionNumber');
  static const filingDate = DTOFilingSortBy._(r'FilingDate');
  static const reportDate = DTOFilingSortBy._(r'ReportDate');
  static const acceptanceDateTime = DTOFilingSortBy._(r'AcceptanceDateTime');
  static const size = DTOFilingSortBy._(r'Size');

  /// List of all possible values in this [enum][DTOFilingSortBy].
  static const values = <DTOFilingSortBy>[
    accessionNumber,
    filingDate,
    reportDate,
    acceptanceDateTime,
    size,
  ];

  static DTOFilingSortBy? fromJson(dynamic value) => DTOFilingSortByTypeTransformer().decode(value);

  static List<DTOFilingSortBy> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DTOFilingSortBy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DTOFilingSortBy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DTOFilingSortBy] to String,
/// and [decode] dynamic data back to [DTOFilingSortBy].
class DTOFilingSortByTypeTransformer {
  factory DTOFilingSortByTypeTransformer() => _instance ??= const DTOFilingSortByTypeTransformer._();

  const DTOFilingSortByTypeTransformer._();

  String encode(DTOFilingSortBy data) => data.value;

  /// Decodes a [dynamic value][data] to a DTOFilingSortBy.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DTOFilingSortBy? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AccessionNumber': return DTOFilingSortBy.accessionNumber;
        case r'FilingDate': return DTOFilingSortBy.filingDate;
        case r'ReportDate': return DTOFilingSortBy.reportDate;
        case r'AcceptanceDateTime': return DTOFilingSortBy.acceptanceDateTime;
        case r'Size': return DTOFilingSortBy.size;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DTOFilingSortByTypeTransformer] instance.
  static DTOFilingSortByTypeTransformer? _instance;
}

