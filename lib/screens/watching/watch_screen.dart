import 'package:adiaha_tv/app/constants/assets.dart';
import 'package:adiaha_tv/app/constants/colors.dart';
import 'package:adiaha_tv/model/movies.dart';
import 'package:adiaha_tv/screens/base_view.dart';
import 'package:adiaha_tv/view_models/viewing/watching_view_model.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';

class WatchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    FlickManager flickManager;
    return BaseView<ViewingViewModel>(
      onModelReady: (model) {},
      builder: (context, model, child) => Scaffold(
        backgroundColor: Color(0xff15161C),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff242428),
                      Color(0xff15161C),
                    ],
                  ),
                ),
                child: Container(
                  height: 269,
                  child: Stack(
                    children: [
                      Image.asset(
                        AppAssset.large_banner,
                        fit: BoxFit.fitWidth,
                        width: Get.width * 1.2,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 269 / 2.8),
                        child: Center(
                          child: FloatingActionButton(
                            backgroundColor: AppColor.danger,
                            onPressed: () {},
                            child: Icon(Icons.play_arrow),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => Get.back(),
                        child: Container(
                            margin: EdgeInsets.only(top: 24),
                            padding: EdgeInsets.all(24),
                            child: SvgPicture.asset(AppAssset.back_icon)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Parasite (2019)',
                      style: theme.textTheme.bodyText2.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(AppAssset.rating),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '8/9',
                          style:
                              theme.textTheme.bodyText1.copyWith(fontSize: 12),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        SvgPicture.asset(AppAssset.history),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '2h 12m',
                          style:
                              theme.textTheme.bodyText1.copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            'StoryLine',
                            style: theme.textTheme.bodyText2
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Egestas suspendisse at nibh pharetra. Dui diam amet nisi purus, congue tellus. Commodo ut dolor, cursus congue nunc, libero, sed. Massa egestas diam, hac aenean metus. Dui molestie urna, velit velit orci, facilisis id nulla. Augue massa pretium, in ipsum. Proin augue donec tellus amet nulla nec, vitae sem etiam.
Commodo ut dolor, cursus congue nunc, libero, sed.
                        
                        ''',
                            style: theme.textTheme.bodyText2
                                .copyWith(fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Recommended',
                          style: theme.textTheme.bodyText2
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Center(
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              alignment: WrapAlignment.center,
                              children: List.generate(
                                  6,
                                  (index) => Container(
                                        margin: EdgeInsets.only(
                                          bottom: 16,
                                          right: 8,
                                        ),
                                        child: GestureDetector(
                                          onTap: null,
                                          child: Image.asset(
                                            movies[index].movieImage,
                                            fit: BoxFit.contain,
                                            width: Get.width / 3.6,
                                          ),
                                        ),
                                      )),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
