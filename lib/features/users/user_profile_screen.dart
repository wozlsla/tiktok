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
    return DefaultTabController(
      length: 2,
      child: CustomScrollView(
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
                Gaps.v14,
                FractionallySizedBox(
                  widthFactor: 0.33,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: Sizes.size12,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          Sizes.size4,
                        ),
                      ),
                    ),
                    child: Text(
                      "Follow",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Gaps.v14,
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Sizes.size32,
                  ),
                  child: Text(
                    "My pooku dog is fluffy like a big big cloud, and its cuteness is absolutely irresistible. Just one cuddle feels like hugging a warm bundle of joy!",
                    textAlign: TextAlign.center,
                  ),
                ),
                Gaps.v14,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.link,
                      size: Sizes.size12,
                    ),
                    Gaps.h4,
                    Text(
                      "https://github.com/wozlsla",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Gaps.v20,
                Container(
                  // tabbar 테두리
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                      horizontal: BorderSide(
                        color: Colors.grey.shade200,
                        width: 0.5,
                      ),
                    ),
                  ),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Colors.black,
                    labelPadding: EdgeInsets.symmetric(
                      vertical: Sizes.size10,
                    ),
                    labelColor: Colors.black,
                    tabs: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Sizes.size20,
                        ), // label indicator size
                        child: Icon(Icons.grid_4x4_rounded),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Sizes.size20,
                        ),
                        child: FaIcon(FontAwesomeIcons.heart),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  // TabBarView, Cannot hit test a render box with no size.
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(
                    children: [
                      GridView.builder(
                        // physics: NeverScrollableScrollPhysics(),
                        keyboardDismissBehavior:
                            ScrollViewKeyboardDismissBehavior.onDrag,
                        itemCount: 20,
                        padding: const EdgeInsets.all(
                          Sizes.size6,
                        ),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: Sizes.size10,
                          mainAxisSpacing: Sizes.size10,
                          childAspectRatio: 9 / 20,
                        ),
                        itemBuilder: (context, index) => Column(
                          children: [
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Sizes.size4),
                              ),
                              child: AspectRatio(
                                aspectRatio: 9 / 16,
                                child: FadeInImage.assetNetwork(
                                  fit: BoxFit.cover,
                                  placeholder: "assets/images/pooku_sleep.jpg",
                                  image:
                                      "https://picsum.photos/seed/${index + 1}/200/${350 + (5 * index)}",
                                ),
                              ),
                            ),
                            Gaps.v10,
                            Text(
                              "This is a very long caption for my tiktok that im upload just now currently.",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: Sizes.size16 + Sizes.size2,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Gaps.v8,
                            DefaultTextStyle(
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w600,
                              ),
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 12,
                                    backgroundImage: NetworkImage(
                                        "https://avatars.githubusercontent.com/u/62599036?v=4"),
                                  ),
                                  Gaps.h4,
                                  const Expanded(
                                    child: Text(
                                      "My avatar is going to be very long",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Gaps.h4,
                                  FaIcon(
                                    FontAwesomeIcons.heart,
                                    size: Sizes.size14,
                                    color: Colors.grey.shade600,
                                  ),
                                  Gaps.h2,
                                  const Text(
                                    "2.5M",
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Center(
                        child: Text("Page 2"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
