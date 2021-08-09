import 'dart:ui';

import 'package:apphud/models/sk_product/subscription_period_time_wrapper.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_period_wrapper.g.dart';

@JsonSerializable(nullable: true)
class SKProductSubscriptionPeriodWrapper {
  final int numberOfUnits;
  final SKSubscriptionPeriodTime unit;

  SKProductSubscriptionPeriodWrapper({
    @required this.numberOfUnits,
    @required this.unit,
  });

  factory SKProductSubscriptionPeriodWrapper.fromJson(Map map) {
    assert(map != null, 'Map must not be null.');
    return _$SKProductSubscriptionPeriodWrapperFromJson(map);
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    final SKProductSubscriptionPeriodWrapper typedOther = other;
    return typedOther.numberOfUnits == numberOfUnits && typedOther.unit == unit;
  }

  @override
  int get hashCode => hashValues(this.numberOfUnits, this.unit);
}
