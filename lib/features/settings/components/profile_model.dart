import 'package:equatable/equatable.dart';


class Profile extends Equatable {
  final String idProfile;
  final String titleProfile;
  final String subtitleProfile;
  final String userTagProfile;
  final String joinedProfile;
  final String userProfileImage;
  final String imageProfileUrl;
  //final String secondImageProfileUrl;
  final bool isPremiumProfile;
  final String urlProfileImage;

  const Profile({
    required this.idProfile,
    required this.titleProfile,
    required this.subtitleProfile,
    required this.userTagProfile,
    required this.joinedProfile,
    required this.userProfileImage,
    required this.imageProfileUrl,
    //required this.secondImageProfileUrl,
    this.isPremiumProfile = false,
    required this.urlProfileImage,
  });

  static List<Profile> profiles = [
    const Profile(
      idProfile: '1',
      titleProfile: 'Sarah',
      subtitleProfile: 'Wegan',
      userTagProfile: '@wegan465',
      joinedProfile: '2 month ago',
      userProfileImage: 'assets/icons/profile_image.png',
      imageProfileUrl: 'assets/icons/frameProfile.svg',
      //secondImageProfileUrl:  'assets/icons/second_ellipse.png',
      isPremiumProfile: true,
      urlProfileImage: 'assets/icons/pro.png',
    ),
  ];

  @override
  List<Object?> get props => [
        idProfile,
        titleProfile,
        subtitleProfile,
        userTagProfile,
        joinedProfile,
        userProfileImage,
        isPremiumProfile,
        urlProfileImage,
      ];
}
