import 'package:adiaha_tv/app/constants/assets.dart';
import 'package:adiaha_tv/app/constants/colors.dart';
import 'package:adiaha_tv/common/scaffold_body.dart';
import 'package:adiaha_tv/model/movies.dart';
import 'package:adiaha_tv/screens/base_view.dart';
import 'package:adiaha_tv/view_models/home/home_view_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class MovieHomeScreen extends StatefulWidget {
  @override
  _MovieHomeScreenState createState() => _MovieHomeScreenState();
}

class _MovieHomeScreenState extends State<MovieHomeScreen> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return BaseView<HomeViewModel>(
      onModelReady: (model) {},
      builder: (context, model, child) {
        return Scaffold(
          body: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: ScaffordBody(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          AppAssset.logo,
                          height: 14,
                        ),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            'TV Shows',
                            style: themeData.textTheme.bodyText1
                                .copyWith(fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
//                      model.gotoLogin();
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 8.0),
                          child: Text(
                            'Movies',
                            style: themeData.textTheme.bodyText1
                                .copyWith(fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
//                      model.gotoLogin();
                        },
                        child: Text(
                          'More',
                          style: themeData.textTheme.bodyText1
                              .copyWith(fontWeight: FontWeight.normal),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 24),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current = index;
                              });
                            },
                            height: 240.0,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            viewportFraction: 1,
                          ),
                          items: [1, 2, 3, 4, 5].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.only(top: 32.0),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Image.asset(
                                            AppAssset.image_banner,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Container(
                                          height: 240,
                                          margin: EdgeInsets.only(bottom: 16),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 32.0),
                                                child: Text(
                                                  'Parasite (2019)',
                                                  style: themeData
                                                      .textTheme.bodyText2
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 32.0),
                                                child: Text(
                                                  'Crime, Drama, Comedy',
                                                  style: themeData
                                                      .textTheme.bodyText2,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 240,
                                          margin: EdgeInsets.only(
                                              right: 32, bottom: 16),
                                          child: Align(
                                            alignment: Alignment.bottomRight,
                                            child: FloatingActionButton(
                                              backgroundColor: AppColor.danger,
                                              onPressed: () =>
                                                  model.gotoVideoDetails(),
                                              child: Icon(Icons.play_arrow),
                                            ),
                                          ),
                                        )
                                      ],
                                    ));
                              },
                            );
                          }).toList(),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [1, 2, 3, 4, 5].map((url) {
                              int index = [1, 2, 3, 4, 5].indexOf(url);
                              return Container(
                                width: 8.0,
                                height: 8.0,
                                margin: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 2.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _current == index
                                      ? AppColor.primaryColor
                                      : Color(0xff242428),
                                ),
                              );
                            }).toList()),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 24,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'African Drama',
                            style: themeData.textTheme.bodyText1.copyWith(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Center(
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              alignment: WrapAlignment.center,
                              children: List.generate(
                                  movies.length,
                                  (index) => Container(
                                        margin: EdgeInsets.only(
                                          bottom: 16,
                                          right: 8,
                                        ),
                                        child: GestureDetector(
                                          onTap: () => model.gotoVideoDetails(),
                                          child: Image.asset(
                                            movies[index].movieImage,
                                            fit: BoxFit.contain,
                                            width: Get.width / 3.6,
                                          ),
                                        ),
                                      )),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
