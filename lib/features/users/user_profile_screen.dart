import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/constants/gaps.dart';
import 'package:tiktok/constants/sizes.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});
  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text("Profile"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.gear,
                size: Sizes.size20,
              ),
            )
          ],
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                foregroundColor: Colors.teal,
                foregroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/62599036?v=4"),
                child: Text("재키"),
              ),
              Gaps.v20,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "@wozlsla",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Sizes.size18,
                    ),
                  ),
                  Gaps.h5,
                  FaIcon(
                    FontAwesomeIcons.solidCircleCheck,
                    size: 13,
                    color: Colors.blue.shade500,
                  ),
                ],
              ),
              Gaps.v24,
              SizedBox(
                height: Sizes.size48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialStats(
                      count: 97,
                      label: "Follwing",
                    ),
                    VerticalDivider(
                      width: Sizes.size32, // 간격
                      thickness: 0.5,
                      color: Colors.grey.shade400,
                      indent: Sizes.size12,
                      endIndent: Sizes.size12,
                    ),
                    SocialStats(
                      count: 12110,
                      label: "Follwers",
                    ),
                    VerticalDivider(
                      width: Sizes.size32, // 간격
                      thickness: 0.5,
                      color: Colors.grey.shade400,
                      indent: Sizes.size12,
                      endIndent: Sizes.size12,
                    ),
                    SocialStats(
                      count: 819430000,
                      label: "Likes",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SocialStats extends StatelessWidget {
  final int count;
  final String label;

  const SocialStats({
    super.key,
    required this.count,
    required this.label,
  });

  String formatNumber(int number) {
    if (number >= 1000 && number < 1000000) {
      // 천 이상 백만 미만 (K)
      double value = number / 1000;
      return (value == value.toInt())
          ? "${value.toInt()}K"
          : "${value.toStringAsFixed(1)}K";
    } else if (number >= 1000000 && number < 1000000000) {
      // 백만 이상 십억 미만 (M)
      double value = number / 1000000;
      return (value == value.toInt())
          ? "${value.toInt()}M"
          : "${value.toStringAsFixed(1)}M";
    } else if (number >= 1000000000) {
      // 십억 이상 (B)
      double value = number / 1000000000;
      return (value == value.toInt())
          ? "${value.toInt()}B"
          : "${value.toStringAsFixed(1)}B";
    }
    return number.toString(); // 1000 미만은 그대로 출력
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          formatNumber(count),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: Sizes.size18,
          ),
        ),
        Gaps.v3,
        Text(
          label,
          style: TextStyle(
            color: Colors.grey.shade500,
          ),
        ),
      ],
    );
  }
}
