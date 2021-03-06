import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_button.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

int gottenStars = 4;
int selectedIndex = -1;

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/nature.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  // PopupMenuButton<String>(
                  //   tooltip: "More Option",
                  //   color: Colors.black,
                  //   onSelected: (value) {
                  //     print(value);
                  //   },
                  //   itemBuilder: (_) {
                  //     return [
                  //       const PopupMenuItem(
                  //         child: Text(
                  //           "Settings",
                  //           style: TextStyle(color: Colors.white),
                  //         ),
                  //       ),
                  //       PopupMenuItem(
                  //         child: const Text(
                  //           "Log out",
                  //           style: TextStyle(color: Colors.white),
                  //         ),
                  //       ),
                  //     ];
                  //   },
                  // ),
                ],
              ),
            ),
            Positioned(
              top: 300,
              child: Container(
                padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Yosemite
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          text: "Yosemite",
                          color: Colors.black.withOpacity(0.8),
                          size: 25,
                        ),
                        AppLargeText(
                          text: "\$ 250",
                          color: AppColors.mainColor,
                          size: 25,
                        )
                      ],
                    ),
                    SizedBox(height: 5),
                    // USA
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColors.mainColor,
                        ),
                        SizedBox(width: 5),
                        AppText(
                          text: "USA, Califonia",
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    // star
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(Icons.star,
                                color: index < gottenStars
                                    ? AppColors.StarColor
                                    : AppColors.textColor2,
                                size: 20);
                          }),
                        ),
                        SizedBox(width: 5),
                        AppText(
                          text: "(4.0)",
                          color: AppColors.textColor2,
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    AppLargeText(
                      text: "People",
                      color: Colors.black.withOpacity(0.8),
                      size: 20,
                    ),
                    SizedBox(height: 5),
                    AppText(
                        text: "Number of people inthe group",
                        color: AppColors.mainTextColor),
                    SizedBox(height: 10),
                    Wrap(
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: AppButtons(
                              size: 50,
                              borderRadius: BorderRadius.circular(15),
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              backgroundColor: selectedIndex == index
                                  ? Colors.black
                                  : AppColors.buttonBackground,
                              borderColor: selectedIndex == index
                                  ? Colors.black
                                  : AppColors.buttonBackground,
                              text: (index + 1).toString(),
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 10),
                    AppLargeText(
                      text: "Description",
                      color: Colors.black.withOpacity(0.8),
                      size: 20,
                    ),
                    SizedBox(height: 5),
                    AppText(
                      text:
                          "You must go for a travel.Travelling helps get rid of pressure. Go to the mountains to see the nature.",
                      color: AppColors.mainTextColor,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  AppButtons(
                    size: 60,
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    backgroundColor: Colors.grey.withOpacity(0.2),
                    borderColor: Colors.blue,
                    icon: Icons.favorite_border,
                    isIcon: true,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ResponsiveButton(
                    isResponsive: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
