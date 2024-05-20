import 'package:equatable/equatable.dart';


class Profile extends Equatable {
  final String idProfile;
  final String titleProfile;
  final String subtitleProfile;
  final String userTagProfile;
  final String joinedProfile;
  final String proMember;
  final String untilDate;
  final String monthSubscription;
  final String userProfileImage;
  final String imageProfileUrl;
  //final String secondImageProfileUrl;
  final String proImageProfileUrl;
  final bool isPremiumProfile;
  final String urlProfileImage;

  const Profile({
    required this.idProfile,
    required this.titleProfile,
    required this.subtitleProfile,
    required this.userTagProfile,
    required this.joinedProfile,
    required this.proMember,
    required this.untilDate,
    required this.monthSubscription,
    required this.userProfileImage,
    required this.imageProfileUrl,
    //required this.secondImageProfileUrl,
    required this.proImageProfileUrl,
    this.isPremiumProfile = false,
    required this.urlProfileImage,
  });

  static List<Profile> profiles = [
    const Profile(
      idProfile: '0',
      titleProfile: 'Sarah',
      subtitleProfile: 'Wegan',
      userTagProfile: '@wegan465',
      joinedProfile: '2 month ago',
      proMember: 'Pro member',
      untilDate: 'Until 18 Jul 2022',
      monthSubscription: '12 Months Subscription',
      userProfileImage: 'assets/images/settings/profile_image.png',
      imageProfileUrl: 'assets/images/settings/frameProfile.svg',
      proImageProfileUrl: 'assets/images/settings/pro_ellipse.svg',
      isPremiumProfile: false,
      urlProfileImage: 'assets/images/settings/pro_image.png',
    ),
  ];

  static List<Profile> profilesPro = [
    const Profile(
      idProfile: '1',
      titleProfile: 'Sarah',
      subtitleProfile: 'Wegan',
      userTagProfile: '@wegan465',
      joinedProfile: '2 month ago',
      proMember: 'Pro member',
      untilDate: 'Until 18 Jul 2022',
      monthSubscription: '12 Months Subscription',
      userProfileImage: 'assets/images/settings/profile_image.png',
      imageProfileUrl: 'assets/images/settings/frameProfile.svg',
      proImageProfileUrl: 'assets/images/settings/pro_ellipse.svg',
      isPremiumProfile: true,
      urlProfileImage: 'assets/images/settings/pro_image.png',
    ),
  ];

  @override
  List<Object?> get props => [
        idProfile,
        titleProfile,
        subtitleProfile,
        userTagProfile,
        joinedProfile,
        proMember,
        untilDate,
        monthSubscription,
        userProfileImage,
        isPremiumProfile,
        urlProfileImage,
      ];
}
