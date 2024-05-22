class PremiumData {
  final int id;
  final bool isPremium;
  final bool isMonthly;
  final String dateJoinedPro;

  PremiumData({
    required this.id,
    required this.isPremium,
    required this.isMonthly,
    required this.dateJoinedPro
  });

  factory PremiumData.fromJson(Map<String, dynamic> json) {
    return PremiumData(
      id: json['id'],
      isPremium: json['is_premium'],
      isMonthly: json['is_monthly'],
      dateJoinedPro: json['date_joined_pro']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'is_premium': isPremium,
      'is_monthly': isMonthly,
      'date_joined_pro': dateJoinedPro
    };
  }
}