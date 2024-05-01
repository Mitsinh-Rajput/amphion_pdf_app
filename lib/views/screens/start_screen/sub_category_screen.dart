import 'dart:async';
import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_template/services/extensions.dart';
import 'package:flutter_template/services/route_helper.dart';
import 'package:flutter_template/views/base/custom_image.dart';
import 'package:flutter_template/views/screens/start_screen/reference_screen.dart';
import 'package:flutter_template/views/screens/start_screen/start_screen.dart';

import '../../../data/models/response/category.dart';
import '../../base/animations/slide_animation.dart';

/*class SubCategoryScreen extends StatefulWidget {
  const SubCategoryScreen({Key? key, required this.categoryModel, required this.index}) : super(key: key);
  // final SubCategoryModel subCategoryModel;
  final CategoryModel categoryModel;
  final int index;

  @override
  State<SubCategoryScreen> createState() => _SubCategoryScreenState();
}

class _SubCategoryScreenState extends State<SubCategoryScreen> {
  PageController pageController = PageController(initialPage: 0);
  bool viewSubCategories = false;

  @override
  void initState() {
    super.initState();
    Timer.run(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SubCategoryModel subCategoryModel = widget.categoryModel.subCategories[widget.index];
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            onPageChanged: (value) {
              Future.delayed(const Duration(milliseconds: 500), () {
                setState(() {});
              });
            },
            itemCount: subCategoryModel.images.length,
            itemBuilder: (context, int index) {
              return Stack(
                children: [
                  InteractiveViewer(
                    panAxis: PanAxis.vertical,
                    child: CustomImage(
                      path: subCategoryModel.images[index].image,
                      fit: BoxFit.fill,
                      height: size.height,
                      width: size.width,
                    ),
                  ),
                  if (pageController.hasClients) //
                    if (pageController.position.haveDimensions)
                      Builder(builder: (context) {
                        // log(subCategoryModel.title.getIfValid);
                        if (subCategoryModel.title == 'TROP XR') {
                          if (pageController.page!.round() == 0) {
                            return Positioned(
                              bottom: size.height * .145,
                              left: size.width * .085,
                              // right: size.width * .12,
                              child: Material(
                                color: Colors.transparent,
                                elevation: 0,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, getCustomRoute(child: ReferenceScreen(image: subCategoryModel.images[pageController.page!.round()].extra1!)));
                                  },
                                  borderRadius: BorderRadius.circular(20),
                                  child: Ink(
                                    height: size.height * .38,
                                    width: size.width * .415,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                        }
                        if (subCategoryModel.title == 'DURP') {
                          log('${subCategoryModel.images[pageController.page!.round()]}');
                          if (pageController.page!.round() == 1) {
                            return Positioned(
                              bottom: size.height * .23,
                              left: size.width * .13,
                              right: size.width * .12,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 0,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(context, getCustomRoute(child: ReferenceScreen(image: subCategoryModel.images[pageController.page!.round()].extra1!)));
                                      },
                                      child: Ink(
                                        height: size.height * .28,
                                        width: size.width * .32,
                                        color: Colors.transparent,
                                      ),
                                    ),
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 0,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(context, getCustomRoute(child: ReferenceScreen(image: subCategoryModel.images[pageController.page!.round()].extra2!)));
                                      },
                                      child: Ink(
                                        height: size.height * .28,
                                        width: size.width * .34,
                                        color: Colors.transparent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                        }
                        if (subCategoryModel.title == 'DEGA') {
                          if (pageController.page!.round() == 1) {
                            return Positioned(
                              bottom: size.height * .09,
                              left: size.width * .07,
                              right: size.width * .09,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 0,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(context, getCustomRoute(child: ReferenceScreen(image: subCategoryModel.images[pageController.page!.round()].extra1!)));
                                      },
                                      child: Ink(
                                        height: size.height * .36,
                                        width: size.width * .38,
                                        color: Colors.transparent,
                                      ),
                                    ),
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 0,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(context, getCustomRoute(child: ReferenceScreen(image: subCategoryModel.images[pageController.page!.round()].extra2!)));
                                      },
                                      child: Ink(
                                        height: size.height * .36,
                                        width: size.width * .4,
                                        color: Colors.transparent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                        }
                        if (subCategoryModel.title == 'ZEL') {
                          if (pageController.page!.round() == 2) {
                            return Positioned(
                              bottom: size.height * .05,
                              left: size.width * .265,
                              // right: size.width * .12,
                              child: Material(
                                color: Colors.transparent,
                                elevation: 0,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, getCustomRoute(child: ReferenceScreen(image: subCategoryModel.images[pageController.page!.round()].extra1!)));
                                  },
                                  borderRadius: BorderRadius.circular(20),
                                  child: Ink(
                                    height: size.height * .1,
                                    width: size.width * .47,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                        }
                        return const SizedBox.shrink();
                      }),
                ],
              );
            },
          ),
          if (pageController.hasClients)
            if (pageController.page!.round() == subCategoryModel.images.length - 1)
              if (widget.index < widget.categoryModel.subCategories.length - 1)
                GestureDetector(
                  onHorizontalDragEnd: (value) {
                    log('${value.primaryVelocity}');
                    if ((value.primaryVelocity ?? 0).isNegative) {
                      Navigator.pushReplacement(context, getCustomRoute(child: SubCategoryScreen(categoryModel: widget.categoryModel, index: widget.index + 1)));
                    } else if (!(value.primaryVelocity ?? 0).isNegative) {
                      log('${value.primaryVelocity}');
                      Navigator.pushReplacement(context, getCustomRoute(child: SubCategoryScreen(categoryModel: widget.categoryModel, index: widget.index - 1)));
                    }
                  },
                  child: Container(
                    color: Colors.blue.withOpacity(.4),
                  ),
                ),
          // if (pageController.hasClients)
          //   if (pageController.page!.round() == 0)
          //     if (widget.index > 0)
          //       GestureDetector(
          //         onHorizontalDragEnd: (value) {
          //           if (!(value.primaryVelocity ?? 0).isNegative) {
          //             log('${value.primaryVelocity}');
          //             Navigator.pushReplacement(context, getCustomRoute(child: SubCategoryScreen(categoryModel: widget.categoryModel, index: widget.index - 1)));
          //           }
          //         },
          //         child: Container(
          //           color: Colors.transparent,
          //         ),
          //       ),
          if (viewSubCategories)
            Positioned(
              left: 180,
              bottom: 10,
              child: ClipRRect(
                child: CustomSlideAnimation(
                  curve: Curves.ease,
                  start: const Alignment(-1, 0),
                  child: Container(
                    height: size.height * .07,
                    width: size.width * .7,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        SvgPicture.asset(
                          Assets.svgsContainerBg,
                          height: size.height * .07,
                          width: size.width * .7,
                          // color: Colors.black87,
                          fit: BoxFit.fitWidth,
                        ),
                        Center(
                          child: SizedBox(
                            height: size.height * .07,
                            width: size.width * .65,
                            child: Center(
                              child: ListView.separated(
                                itemCount: widget.categoryModel.subCategories.length,
                                physics: const NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (context, int index) {
                                  double width = (size.width * .65) / widget.categoryModel.subCategories.length;
                                  log("${(width).toString()}  ${size.width * .65}");
                                  return SizedBox(
                                    width: width,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pushReplacement(
                                            context,
                                            getCustomRoute(
                                                child: SubCategoryScreen(
                                                  categoryModel: widget.categoryModel,
                                                  index: index,
                                                ),
                                                animate: false));
                                      },
                                      child: SubCategoryIcon(image: widget.categoryModel.subCategories[index].icon),
                                    ),
                                  );
                                },
                                separatorBuilder: (BuildContext context, int index) {
                                  return Center(child: Container(height: 30, width: 1, color: Colors.black45));
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          Positioned(
            left: 60,
            bottom: 0,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, getCustomRoute(child: const IndexScreen()));
                  },
                  icon: const CustomImage(
                    path: Assets.imagesHomeIcon,
                    height: 40,
                    width: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      viewSubCategories = !viewSubCategories;
                    });
                  },
                  icon: const CustomImage(
                    path: Assets.imagesPlusIcon,
                    height: 40,
                    width: 40,
                  ),
                ),
              ],
            ),
          ),
          if (pageController.hasClients)
            if (subCategoryModel.images[pageController.page!.round()].reference.isValid)
              Positioned(
                right: 60,
                bottom: 0,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, getCustomRoute(child: ReferenceScreen(image: subCategoryModel.images[pageController.page!.round()].reference!)));
                  },
                  icon: const CustomImage(
                    path: Assets.imagesRefIcon,
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
        ],
      ),
    );
  }
}*/

class SubCategoryScreenV2 extends StatefulWidget {
  const SubCategoryScreenV2({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  State<SubCategoryScreenV2> createState() => _SubCategoryScreenV2State();
}

class _SubCategoryScreenV2State extends State<SubCategoryScreenV2> {
  late PageController pageController;
  bool viewSubCategories = false;

  double opacity = 0.0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: widget.index);
    Timer.run(() {
      setState(() {});
    });
    Timer.periodic(Duration(milliseconds: 200), (timer) {
      setState(() {
        opacity = opacity + 0.3;
        if (opacity >= 1) {
          opacity = 0;
        }
      });
    });
  }

  List<List<Map<String, dynamic>>> subData = [
    [
      {
        "image": "assets/images/contiflot.png",
        "index": 0,
      },
      {
        "image": "assets/images/contifloi.png",
        "index": 5,
      },
      {
        "image": "assets/images/tamdura.png",
        "index": 6,
      },
      {
        "image": "assets/images/modula.png",
        "index": 7,
      },
      {
        "image": "assets/images/solitral.png",
        "index": 8,
      },
    ],
    [
      {
        "image": "assets/images/mirago.png",
        "index": 9,
      },
      {
        "image": "assets/images/miragos.png",
        "index": 12,
      },
      {
        "image": "assets/images/tropan.png",
        "index": 17,
      },
      {
        "image": "assets/images/dariten.png",
        "index": 18,
      },
      {
        "image": "assets/images/cystopen.png",
        "index": 19,
      },
    ],
    [
      {
        "image": "assets/images/modula.png",
        "index": 22,
      },
      {
        "image": "assets/images/cernos.png",
        "index": 24,
      },
      {
        "image": "assets/images/duralast.png",
        "index": 29,
      },
      {
        "image": "assets/images/duraplus.png",
        "index": 31,
      },
    ],
    [
      {
        "image": "assets/images/lupride1.png",
        "index": 32,
      },
      {
        "image": "assets/images/orgonist.png",
        "index": 39,
      },
      {
        "image": "assets/images/degapride.png",
        "index": 44,
      },
      {
        "image": "assets/images/caluran.png",
        "index": 47,
      },
      {
        "image": "assets/images/zelgor.png",
        "index": 49,
      },
      {
        "image": "assets/images/enzyl.png",
        "index": 53,
      },
    ],
    [
      {
        "image": "assets/images/contiflot.png",
        "index": 56,
      },
      {
        "image": "assets/images/tamdura.png",
        "index": 58,
      },
      {
        "image": "assets/images/mirago.png",
        "index": 59,
      },
      {
        "image": "assets/images/modula.png",
        "index": 63,
      },
      {
        "image": "assets/images/cernos.png",
        "index": 65,
      },
      {
        "image": "assets/images/duralast.png",
        "index": 69,
      },
      {
        "image": "assets/images/duraplus.png",
        "index": 70,
      }
    ],
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (value) {
              Future.delayed(const Duration(milliseconds: 200), () {
                setState(() {});
              });
            },
            itemCount: allImages.length,
            itemBuilder: (context, int index) {
              return GestureDetector(
                onHorizontalDragEnd: (DragEndDetails? drag) {
                  log("${drag!.velocity}  $index");
                  if (drag.velocity.pixelsPerSecond.dx.isNegative) {
                    if (index == allImages.length - 1) {
                      Navigator.push(context, getCustomRoute(child: const IndexScreen()));
                    }
                    if (index != 71) {
                      pageController.animateToPage(index + 1, duration: const Duration(milliseconds: 100), curve: Curves.ease);
                    } else {
                      log("index61");
                    }
                  } else {
                    if (index != 0) {
                      pageController.animateToPage(index - 1, duration: const Duration(milliseconds: 100), curve: Curves.ease);
                    }
                  }
                },
                child: Stack(
                  children: [
                    InteractiveViewer(
                      panAxis: PanAxis.vertical,
                      child: CustomImage(
                        path: allImages[index].image,
                        fit: BoxFit.fill,
                        height: size.height,
                        width: size.width,
                      ),
                    ),
                    if (pageController.hasClients) //
                      if (pageController.position.haveDimensions)
                        Builder(builder: (context) {
                          // log(subCategoryModel.title.getIfValid);
                          if (allImages[index].title == 'TROP XR') {
                            return Positioned(
                              bottom: size.height * .145,
                              left: size.width * .085,
                              // right: size.width * .12,
                              child: Material(
                                color: Colors.transparent,
                                elevation: 0,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, getCustomRoute(child: ReferenceScreen(image: allImages[pageController.page!.round()].extra1!)));
                                  },
                                  borderRadius: BorderRadius.circular(20),
                                  child: Ink(
                                    height: size.height * .38,
                                    width: size.width * .415,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                          if (allImages[index].title == 'DURP') {
                            // log('${allImages[pageController.page!.round()]}');
                            return Positioned(
                              bottom: size.height * .23,
                              left: size.width * .13,
                              right: size.width * .12,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 0,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(context, getCustomRoute(child: ReferenceScreen(image: allImages[pageController.page!.round()].extra1!)));
                                      },
                                      child: Ink(
                                        height: size.height * .28,
                                        width: size.width * .32,
                                        color: Colors.transparent,
                                      ),
                                    ),
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 0,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(context, getCustomRoute(child: ReferenceScreen(image: allImages[pageController.page!.round()].extra2!)));
                                      },
                                      child: Ink(
                                        height: size.height * .28,
                                        width: size.width * .34,
                                        color: Colors.transparent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                          if (allImages[index].title == 'DEGA') {
                            return Positioned(
                              bottom: size.height * .09,
                              left: size.width * .07,
                              right: size.width * .09,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 0,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(context, getCustomRoute(child: ReferenceScreen(image: allImages[pageController.page!.round()].extra1!)));
                                      },
                                      child: Ink(
                                        height: size.height * .36,
                                        width: size.width * .38,
                                        color: Colors.transparent,
                                      ),
                                    ),
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 0,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(context, getCustomRoute(child: ReferenceScreen(image: allImages[pageController.page!.round()].extra2!)));
                                      },
                                      child: Ink(
                                        height: size.height * .36,
                                        width: size.width * .4,
                                        color: Colors.transparent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                          if (allImages[index].title == 'ZEL') {
                            return Positioned(
                              bottom: size.height * .05,
                              left: size.width * .265,
                              // right: size.width * .12,
                              child: Material(
                                color: Colors.transparent,
                                elevation: 0,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, getCustomRoute(child: ReferenceScreen(image: allImages[pageController.page!.round()].extra1!)));
                                  },
                                  borderRadius: BorderRadius.circular(20),
                                  child: Ink(
                                    height: size.height * .1,
                                    width: size.width * .47,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                          if (allImages[index].title == 'ProstateLup1') {
                            return Stack(
                              children: [
                                Opacity(
                                  opacity: opacity,
                                  child: CustomImage(
                                    path: Assets.imagesAmphionIpadVA21a,
                                    width: size.width,
                                    height: size.height,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                AnimatedSwitcher(
                                    duration: Duration(minutes: 300),
                                    child: FadeTransition(
                                      opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
                                        CurvedAnimation(
                                          parent: AlwaysStoppedAnimation(1),
                                          curve: Curves.easeInOut,
                                        ),
                                      ),
                                      child: CustomImage(
                                        path: Assets.imagesAmphionIpadVA21a,
                                        width: size.width,
                                        height: size.height,
                                        fit: BoxFit.fill,
                                      ),
                                    )),
                                Positioned(
                                    top: 50,
                                    left: size.width * 0.33,
                                    child: GestureDetector(
                                      onTap: () async {
                                        await pageController.animateToPage((pageController.page! + 1).round(), duration: const Duration(milliseconds: 50), curve: Curves.ease);
                                      },
                                      child: Container(
                                        height: 220,
                                        width: 300,
                                        color: Colors.transparent,
                                      ),
                                    )),
                                Positioned(
                                    bottom: 50,
                                    left: 180,
                                    child: GestureDetector(
                                      onTap: () async {
                                        await pageController.animateToPage((pageController.page! + 1).round(), duration: const Duration(milliseconds: 50), curve: Curves.ease);
                                      },
                                      child: Container(
                                        height: 200,
                                        width: 200,
                                        color: Colors.transparent,
                                      ),
                                    )),
                                Positioned(
                                    top: size.height * 0.45,
                                    left: size.width * 0.5,
                                    child: GestureDetector(
                                      onTap: () async {
                                        await pageController.animateToPage((pageController.page! + 1).round(), duration: const Duration(milliseconds: 50), curve: Curves.ease);
                                      },
                                      child: Container(
                                        height: 200,
                                        width: 250,
                                        color: Colors.transparent,
                                      ),
                                    )),
                                Positioned(
                                    top: size.height * 0.27,
                                    right: 50,
                                    child: GestureDetector(
                                      onTap: () async {
                                        await pageController.animateToPage((pageController.page! + 1).round(), duration: const Duration(milliseconds: 50), curve: Curves.ease);
                                      },
                                      child: Container(
                                        height: 200,
                                        width: 200,
                                        color: Colors.transparent,
                                      ),
                                    )),
                              ],
                            );
                          }
                          if (allImages[index].title == 'ZEL1') {
                            return Positioned(
                                bottom: 20,
                                right: 60,
                                child: GestureDetector(
                                  onTap: () async {
                                    await pageController.animateToPage((pageController.page! + 1).round(), duration: const Duration(milliseconds: 50), curve: Curves.ease);
                                  },
                                  child: Container(
                                    height: 200,
                                    width: 300,
                                    color: Colors.transparent,
                                  ),
                                ));
                          }
                          if (allImages[index].title == 'ZEL15') {
                            return Positioned(
                                top: 20,
                                right: 60,
                                child: GestureDetector(
                                  onTap: () async {
                                    await pageController.animateToPage((pageController.page! - 1).round(), duration: const Duration(milliseconds: 50), curve: Curves.ease);
                                  },
                                  child: Container(
                                    height: 200,
                                    width: 300,
                                    color: Colors.transparent,
                                  ),
                                ));
                          }

                          if (allImages[index].title == 'ProstateLup3') {
                            return Stack(
                              children: [
                                Positioned(
                                    right: 100,
                                    bottom: 50,
                                    // left: size.width * 0.33,
                                    child: GestureDetector(
                                      onTap: () async {
                                        await pageController.animateToPage((pageController.page! + 1).round(), duration: const Duration(milliseconds: 50), curve: Curves.ease);
                                      },
                                      child: Container(
                                        height: 380,
                                        width: 500,
                                        color: Colors.transparent,
                                      ),
                                    )),
                              ],
                            );
                          }
                          if (allImages[index].title == 'ProstateLup55') {
                            return Stack(
                              children: [
                                Positioned(
                                    right: 10,
                                    bottom: 300,
                                    // left: size.width * 0.33,
                                    child: GestureDetector(
                                      onTap: () async {
                                        await pageController.animateToPage((pageController.page! - 1).round(), duration: const Duration(milliseconds: 50), curve: Curves.ease);
                                      },
                                      child: Container(
                                        height: 200,
                                        width: 200,
                                        color: Colors.transparent,
                                      ),
                                    )),
                              ],
                            );
                          }
                          return const SizedBox.shrink();
                        }),
                  ],
                ),
              );
            },
          ),
          /*if (pageController.hasClients)
            if (pageController.page!.round() == allImages.length - 1)
              if (widget.index < widget.categoryModel.subCategories.length - 1)
                GestureDetector(
                  onHorizontalDragEnd: (value) {
                    log('${value.primaryVelocity}');
                    if ((value.primaryVelocity ?? 0).isNegative) {
                      Navigator.pushReplacement(context, getCustomRoute(child: SubCategoryScreen(categoryModel: widget.categoryModel, index: widget.index + 1)));
                    } else if (!(value.primaryVelocity ?? 0).isNegative) {
                      log('${value.primaryVelocity}');
                      Navigator.pushReplacement(context, getCustomRoute(child: SubCategoryScreen(categoryModel: widget.categoryModel, index: widget.index - 1)));
                    }
                  },
                  child: Container(
                    color: Colors.blue.withOpacity(.4),
                  ),
                ),*/
          // if (pageController.hasClients)
          //   if (pageController.page!.round() == 0)
          //     if (widget.index > 0)
          //       GestureDetector(
          //         onHorizontalDragEnd: (value) {
          //           if (!(value.primaryVelocity ?? 0).isNegative) {
          //             log('${value.primaryVelocity}');
          //             Navigator.pushReplacement(context, getCustomRoute(child: SubCategoryScreen(categoryModel: widget.categoryModel, index: widget.index - 1)));
          //           }
          //         },
          //         child: Container(
          //           color: Colors.transparent,
          //         ),
          //       ),
          if (pageController.hasClients)
            if (allImages[pageController.page!.round()].subCategoryIndex != null)
              if (viewSubCategories)
                Positioned(
                  left: 180,
                  bottom: 10,
                  child: ClipRRect(
                    child: CustomSlideAnimation(
                      curve: Curves.ease,
                      start: const Alignment(-1, 0),
                      child: Container(
                        height: size.height * .073,
                        width: size.width * .7,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            // if (false)
                            ImageFiltered(
                              imageFilter: ImageFilter.blur(sigmaY: 2, sigmaX: 2),
                              child: SvgPicture.asset(
                                Assets.svgsContainerBg,
                                height: size.height * .07,
                                width: size.width * .7,
                                fit: BoxFit.fitWidth,
                                colorFilter: ColorFilter.mode(Colors.grey.shade500, BlendMode.srcIn),
                              ),
                            ),
                            Positioned(
                              top: 3,
                              bottom: 3,
                              left: 3,
                              right: -3,
                              child: SvgPicture.asset(
                                Assets.svgsContainerBg,
                                height: size.height * .07,
                                width: size.width * .8,
                                // color: Colors.black87,
                                fit: BoxFit.fitWidth,
                                colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                              ),
                            ),
                            if (pageController.hasClients)
                              Center(
                                child: Center(
                                  child: ListView.separated(
                                    itemCount: subData[allImages[pageController.page!.round()].subCategoryIndex!].length,
                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                    // physics: const NeverScrollableScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemBuilder: (context, int index1) {
                                      log(allImages[pageController.page!.round()].index!.toString());
                                      // log(subData[allImages[pageController.page!.round()].subCategoryIndex!].length.toString());
                                      double width = (size.width * .50) / (subData[allImages[pageController.page!.round()].subCategoryIndex!].length);
                                      // log("${(width).toString()}  ${size.width * .65}");
                                      return Center(
                                        child: SizedBox(
                                          width: width * 1.3,
                                          child: GestureDetector(
                                            onTap: () {
                                              log('${subData[allImages[pageController.page!.round()].subCategoryIndex!][index1]['index']}');
                                              Navigator.pushReplacement(
                                                context,
                                                getCustomRoute(
                                                    child: SubCategoryScreenV2(index: subData[allImages[pageController.page!.round()].subCategoryIndex!][index1]['index']),
                                                    animate: false),
                                              );
                                            },
                                            child: SubCategoryIcon(image: subData[allImages[pageController.page!.round()].subCategoryIndex!][index1]['image']),
                                          ),
                                        ),
                                      );
                                    },
                                    separatorBuilder: (BuildContext context, int index) {
                                      return Center(child: Container(height: 30, width: 1, color: Colors.black45));
                                    },
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
          if (pageController.hasClients)
            // if (pageController.page!.round() != 61)
            Positioned(
              left: 60,
              bottom: 0,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, getCustomRoute(child: const IndexScreen()));
                    },
                    icon: const CustomImage(
                      path: Assets.imagesHomeIcon,
                      height: 40,
                      width: 40,
                    ),
                  ),
                  if (allImages[pageController.page!.round()].subCategoryIndex != null)
                    IconButton(
                      onPressed: () {
                        setState(() {
                          viewSubCategories = !viewSubCategories;
                        });
                      },
                      icon: const CustomImage(
                        path: Assets.imagesPlusIcon,
                        height: 40,
                        width: 40,
                      ),
                    ),
                ],
              ),
            ),
          if (pageController.hasClients)
            if (allImages[pageController.page!.round()].reference.isValid)
              Positioned(
                right: 60,
                bottom: 0,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, getCustomRoute(child: ReferenceScreen(image: allImages[pageController.page!.round()].reference!)));
                  },
                  icon: const CustomImage(
                    path: Assets.imagesRefIcon,
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
        ],
      ),
    );
  }
}

class SubCategoryIcon extends StatelessWidget {
  const SubCategoryIcon({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: CustomImage(
        path: image,
        height: 30,
      ),
    );
  }
}
//BladderTropXr
// AndrologyDurl
// ProstateDega
// ProstateZel

// List<SubCategoryImage> allImages = [
//   SubCategoryImage(index: 0, subCategoryIndex: 0, image: Assets.imagesBphConti1, title: 'BphConti', reference: null),
//   SubCategoryImage(index: 1, subCategoryIndex: 0, image: Assets.imagesBphConti2, title: 'BphConti', reference: Assets.imagesBphConti2Ref),
//   SubCategoryImage(index: 2, subCategoryIndex: 0, image: Assets.imagesBphConti3, title: 'BphConti', reference: Assets.imagesBphConti3Ref),
//   SubCategoryImage(index: 3, subCategoryIndex: 0, image: Assets.imagesBphConti4, title: 'BphConti', reference: Assets.imagesBphConti4Ref),
//   SubCategoryImage(index: 4, subCategoryIndex: 0, image: Assets.imagesBphConti5, title: 'BphConti', reference: Assets.imagesBphConti5Ref),
//   SubCategoryImage(index: 5, subCategoryIndex: 0, image: Assets.imagesBphConti6, title: 'BphConti', reference: Assets.imagesBphConti6Ref),
//   SubCategoryImage(index: 6, subCategoryIndex: 0, image: Assets.imagesBphConi1, title: 'BphConi', reference: Assets.imagesBphConi1Ref),
//   SubCategoryImage(index: 7, subCategoryIndex: 0, image: Assets.imagesBphTam1, title: 'BphTam', reference: Assets.imagesBphTam1Ref),
//   SubCategoryImage(index: 8, subCategoryIndex: 0, image: Assets.imagesBphMod1, title: 'BphMod', reference: Assets.imagesBphMod1Ref),
//   SubCategoryImage(index: 9, subCategoryIndex: 0, image: Assets.imagesBphMod2, title: 'BphMod', reference: Assets.imagesBphMod2Ref),
//   SubCategoryImage(index: 10, subCategoryIndex: 0, image: Assets.imagesBphSol1, title: 'BphSol', reference: Assets.imagesBphSol1Ref),
//   SubCategoryImage(index: 11, subCategoryIndex: 1, image: Assets.imagesBladderMir1, title: 'BladderMir', reference: Assets.imagesBladderMir1Ref),
//   SubCategoryImage(index: 12, subCategoryIndex: 1, image: Assets.imagesBladderMir2, title: 'BladderMir', reference: Assets.imagesBladderMir2Ref),
//   SubCategoryImage(index: 13, subCategoryIndex: 1, image: Assets.imagesBladderMir3, title: 'BladderMir', reference: Assets.imagesBladderMir3Ref),
//   SubCategoryImage(index: 14, subCategoryIndex: 1, image: Assets.imagesBladderMirS1, title: 'BladderMirS', reference: Assets.imagesBladderMirS1Ref),
//   SubCategoryImage(index: 15, subCategoryIndex: 1, image: Assets.imagesBladderMirS2, title: 'BladderMirS', reference: Assets.imagesBladderMirS2Ref),
//   SubCategoryImage(index: 16, subCategoryIndex: 1, image: Assets.imagesBladderMirS3, title: 'BladderMirS', reference: Assets.imagesBladderMirS3Ref),
//   SubCategoryImage(index: 17, subCategoryIndex: 1, image: Assets.imagesBladderMirS4, title: 'BladderMirS'),
//   SubCategoryImage(index: 18, subCategoryIndex: 1, image: Assets.imagesBladderMirS5, title: 'BladderMirS', reference: Assets.imagesBladderMirS5Ref),
//   SubCategoryImage(index: 19, subCategoryIndex: 1, image: Assets.imagesBladderDar1, title: 'BladderDar', reference: Assets.imagesBladderDar1Ref),
//   SubCategoryImage(index: 20, subCategoryIndex: 1, image: Assets.imagesBladderCys1, title: 'BladderCys', reference: Assets.imagesBladderCys1Ref),
//   SubCategoryImage(index: 21, subCategoryIndex: 1, image: Assets.imagesBladderCys2, title: 'BladderCys', reference: Assets.imagesBladderCys2Ref),
//   SubCategoryImage(
//       index: 22, subCategoryIndex: 1, image: Assets.imagesBladderTropXr1, title: 'TROP XR', reference: Assets.imagesBladderTropXr1Ref, extra1: Assets.imagesBladderTropXr2),
//   SubCategoryImage(index: 23, subCategoryIndex: 2, image: Assets.imagesAndrologyCer1, title: 'AndrologyCer', reference: Assets.imagesAndrologyCer1Ref),
//   SubCategoryImage(index: 24, subCategoryIndex: 2, image: Assets.imagesAndrologyCer2, title: 'AndrologyCer', reference: Assets.imagesAndrologyCer2Ref),
//   SubCategoryImage(index: 25, subCategoryIndex: 2, image: Assets.imagesAndrologyCer3, title: 'AndrologyCer', reference: Assets.imagesAndrologyCer3Ref),
//   SubCategoryImage(index: 26, subCategoryIndex: 2, image: Assets.imagesAndrologyDurl1, title: 'AndrologyDurl', reference: Assets.imagesAndrologyDurl1Ref),
//   SubCategoryImage(
//       index: 27,
//       subCategoryIndex: 2,
//       image: Assets.imagesAndrologyDurl2,
//       title: 'DURP',
//       reference: Assets.imagesAndrologyDurl2Ref,
//       extra1: Assets.imagesAndrologyDurl3,
//       extra2: Assets.imagesAndrologyDurl4),
//   SubCategoryImage(index: 28, subCategoryIndex: 2, image: Assets.imagesAndrologyDurp1, title: 'AndrologyDurp', reference: Assets.imagesAndrologyDurp1Ref),
//   SubCategoryImage(index: 29, subCategoryIndex: 3, image: Assets.imagesProstateLup0),
//   SubCategoryImage(index: 30, subCategoryIndex: 3, image: Assets.imagesProstateLup1, title: 'ProstateLup', reference: Assets.imagesProstateLup1Ref),
//   SubCategoryImage(index: 31, subCategoryIndex: 3, image: Assets.imagesProstateLup2, title: 'ProstateLup', reference: Assets.imagesProstateLup2Ref),
//   SubCategoryImage(index: 32, subCategoryIndex: 3, image: Assets.imagesProstateDega1, title: 'ProstateDega'),
//   SubCategoryImage(
//       index: 33,
//       subCategoryIndex: 3,
//       image: Assets.imagesProstateDega2,
//       title: 'DEGA',
//       reference: Assets.imagesProstateDega2Ref,
//       extra1: Assets.imagesProstateDega2Extra1,
//       extra2: Assets.imagesProstateDega2Extra2),
//   SubCategoryImage(index: 34, subCategoryIndex: 3, image: Assets.imagesProstateDega3, title: 'ProstateDega'),
//   SubCategoryImage(index: 35, subCategoryIndex: 3, image: Assets.imagesProstateDega4, title: 'ProstateDega', reference: Assets.imagesProstateDega4Ref),
//   SubCategoryImage(index: 36, subCategoryIndex: 3, image: Assets.imagesProstateCal1, title: 'ProstateCal'),
//   SubCategoryImage(index: 37, subCategoryIndex: 3, image: Assets.imagesProstateZel1, title: 'ProstateZel', reference: Assets.imagesProstateZel1Ref),
//   SubCategoryImage(index: 38, subCategoryIndex: 3, image: Assets.imagesProstateZel2, title: 'ProstateZel', reference: Assets.imagesProstateZel2Ref),
//   SubCategoryImage(index: 39, subCategoryIndex: 3, image: Assets.imagesProstateZel3, title: 'ZEL', reference: Assets.imagesProstateZel3Ref, extra1: Assets.imagesProstateZel3Extra),
//   SubCategoryImage(index: 40, subCategoryIndex: 3, image: Assets.imagesProstateEnz1, title: 'ProstateEnz'),
//   SubCategoryImage(index: 41, subCategoryIndex: 3, image: Assets.imagesProstateEnz2, title: 'ProstateEnz'),
//   SubCategoryImage(index: 42, subCategoryIndex: 3, image: Assets.imagesProstateEnz3, title: 'ProstateEnz', reference: Assets.imagesProstateEnz3Ref),
//
//   //
//   SubCategoryImage(index: 43, subCategoryIndex: 4, image: Assets.imagesPhysician1, reference: Assets.imagesPhysician2),
//   SubCategoryImage(index: 44, subCategoryIndex: 4, image: Assets.imagesPhysician3, reference: Assets.imagesPhysician4),
//   SubCategoryImage(index: 45, subCategoryIndex: 4, image: Assets.imagesPhysician5, reference: Assets.imagesPhysician6),
//   SubCategoryImage(index: 46, subCategoryIndex: 4, image: Assets.imagesPhysician7, reference: Assets.imagesPhysician8),
//   SubCategoryImage(index: 47, subCategoryIndex: 4, image: Assets.imagesPhysician9, reference: Assets.imagesPhysician10),
//   SubCategoryImage(index: 48, subCategoryIndex: 4, image: Assets.imagesPhysician11),
//   SubCategoryImage(index: 49, subCategoryIndex: 4, image: Assets.imagesPhysician12, reference: Assets.imagesPhysician13),
//   SubCategoryImage(index: 50, subCategoryIndex: 4, image: Assets.imagesPhysician14, reference: Assets.imagesPhysician15),
//   SubCategoryImage(index: 51, subCategoryIndex: 4, image: Assets.imagesPhysician16, reference: Assets.imagesPhysician17),
//   SubCategoryImage(index: 53, subCategoryIndex: 4, image: Assets.imagesPhysician18, reference: Assets.imagesPhysician19),
//   SubCategoryImage(index: 54, subCategoryIndex: 4, image: Assets.imagesPhysician20, reference: Assets.imagesPhysician21),
//   SubCategoryImage(index: 55, subCategoryIndex: 4, image: Assets.imagesPhysician22, reference: Assets.imagesPhysician23),
//   SubCategoryImage(index: 56, subCategoryIndex: 4, image: Assets.imagesPhysician24, reference: Assets.imagesPhysician25),
//   SubCategoryImage(
//       index: 57,
//       subCategoryIndex: 4,
//       image: Assets.imagesPhysician26,
//       title: 'DURP',
//       reference: Assets.imagesPhysician27,
//       extra1: Assets.imagesAndrologyDurl3,
//       extra2: Assets.imagesAndrologyDurl4),
//   SubCategoryImage(index: 58, image: Assets.imagesEsurge1),
// ];

List<SubCategoryImage> allImages = [
  SubCategoryImage(index: 0, subCategoryIndex: 0, image: Assets.imagesAmphionIpadVA13, title: 'BphConti', reference: null),
  SubCategoryImage(index: 1, subCategoryIndex: 0, image: Assets.imagesAmphionIpadVA14, title: 'BphConti', reference: Assets.imagesAmphionIpadVA15),
  SubCategoryImage(index: 2, subCategoryIndex: 0, image: Assets.imagesAmphionIpadVA16, title: 'BphConti', reference: Assets.imagesAmphionIpadVA17),
  SubCategoryImage(index: 3, subCategoryIndex: 0, image: Assets.imagesAmphionIpadVA18, title: 'BphConti', reference: Assets.imagesAmphionIpadVA19),
  SubCategoryImage(index: 4, subCategoryIndex: 0, image: Assets.imagesAmphionIpadVA110, title: 'BphConti', reference: Assets.imagesAmphionIpadVA111),
  SubCategoryImage(index: 5, subCategoryIndex: 0, image: Assets.imagesAmphionIpadVA112, title: 'BphConi', reference: Assets.imagesAmphionIpadVA113),
  SubCategoryImage(index: 6, subCategoryIndex: 0, image: Assets.imagesAmphionIpadVA114, title: 'BphTam', reference: Assets.imagesAmphionIpadVA115),
  // SubCategoryImage(index: 7, subCategoryIndex: 0, image: Assets.new14, title: 'BphMod', reference: Assets.new15),
  SubCategoryImage(index: 8, subCategoryIndex: 0, image: Assets.imagesAmphionIpadVA116, title: 'BphMod', reference: Assets.imagesAmphionIpadVA117),
  SubCategoryImage(index: 9, subCategoryIndex: 0, image: Assets.imagesAmphionIpadVA118, title: 'BphMod', reference: Assets.imagesAmphionIpadVA119),
  SubCategoryImage(index: 10, subCategoryIndex: 1, image: Assets.imagesAmphionIpadVA120, title: 'BphSol', reference: Assets.imagesAmphionIpadVA121),

  /*-------------------------------------------------------------------------------------------------------------------*/

  SubCategoryImage(index: 11, subCategoryIndex: 1, image: Assets.imagesAmphionIpadVA122, title: 'BladderMir', reference: Assets.imagesAmphionIpadVA123),
  SubCategoryImage(index: 12, subCategoryIndex: 1, image: Assets.imagesAmphionIpadVA124, title: 'BladderMir', reference: Assets.imagesAmphionIpadVA125),
  SubCategoryImage(index: 13, subCategoryIndex: 1, image: Assets.imagesAmphionIpadVA126, title: 'BladderMir', reference: Assets.imagesAmphionIpadVA127),
  SubCategoryImage(index: 14, subCategoryIndex: 1, image: Assets.imagesAmphionIpadVA128, title: 'BladderMirS', reference: Assets.imagesAmphionIpadVA129),
  SubCategoryImage(index: 15, subCategoryIndex: 1, image: Assets.imagesAmphionIpadVA130, title: 'BladderMirS', reference: Assets.imagesAmphionIpadVA131),
  SubCategoryImage(index: 16, subCategoryIndex: 1, image: Assets.imagesAmphionIpadVA132, title: 'BladderMirS'),
  SubCategoryImage(index: 17, subCategoryIndex: 1, image: Assets.imagesAmphionIpadVA133, title: 'BladderMirS', reference: Assets.imagesAmphionIpadVA134),
  SubCategoryImage(index: 18, subCategoryIndex: 1, image: Assets.imagesAmphionIpadVA135, title: 'BladderTro', reference: Assets.imagesAmphionIpadVA136),
  SubCategoryImage(index: 19, subCategoryIndex: 1, image: Assets.imagesAmphionIpadVA137, title: 'BladderDar', reference: Assets.imagesAmphionIpadVA138),
  SubCategoryImage(index: 20, subCategoryIndex: 1, image: Assets.imagesAmphionIpadVA139, title: 'BladderCys'),
  SubCategoryImage(index: 21, subCategoryIndex: 1, image: Assets.imagesAmphionIpadVA140, title: 'BladderCys'),
  SubCategoryImage(index: 22, subCategoryIndex: 1, image: Assets.imagesAmphionIpadVA141, title: 'TROP XR', reference: Assets.imagesAmphionIpadVA142),
  SubCategoryImage(index: 23, subCategoryIndex: 2, image: Assets.imagesAmphionIpadVA143, title: 'MOD'),
  SubCategoryImage(index: 24, subCategoryIndex: 2, image: Assets.imagesAmphionIpadVA144, title: 'AndrologyCer', reference: Assets.imagesAmphionIpadVA145),
  SubCategoryImage(index: 25, subCategoryIndex: 2, image: Assets.imagesAmphionIpadVA146, title: 'AndrologyCer', reference: Assets.imagesAmphionIpadVA147),
  SubCategoryImage(index: 26, subCategoryIndex: 2, image: Assets.imagesAmphionIpadVA148, title: 'AndrologyCer', reference: Assets.imagesAmphionIpadVA149),
  SubCategoryImage(index: 27, subCategoryIndex: 2, image: Assets.imagesAmphionIpadVA150, title: 'AndrologyCer', reference: Assets.imagesAmphionIpadVA151),
  SubCategoryImage(index: 28, subCategoryIndex: 2, image: Assets.imagesAmphionIpadVA152, title: 'AndrologyCer', reference: Assets.imagesAmphionIpadVA153),
  SubCategoryImage(index: 29, subCategoryIndex: 2, image: Assets.imagesAmphionIpadVA154, title: 'AndrologyCer', reference: Assets.imagesAmphionIpadVA155),
  SubCategoryImage(index: 30, subCategoryIndex: 2, image: Assets.imagesAmphionIpadVA156, title: 'DUR', reference: Assets.imagesAmphionIpadVA157),
  SubCategoryImage(index: 31, subCategoryIndex: 2, image: Assets.imagesAmphionIpadVA158, title: 'DUR', reference: Assets.imagesAmphionIpadVA159),
  SubCategoryImage(
      index: 32,
      subCategoryIndex: 2,
      image: Assets.imagesAmphionIpadVA160,
      title: 'DURP',
      reference: Assets.imagesAmphionIpadVA161,
      extra1: Assets.imagesAndrologyDurl3,
      extra2: Assets.imagesAndrologyDurl4),

  // /*-------------------------------------------------------------------------------------------------------------------*/

  SubCategoryImage(index: 33, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA21, title: 'ProstateLup1'),
  SubCategoryImage(index: 34, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA22, title: 'ProstateLup'),
  SubCategoryImage(index: 35, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA23, title: 'ProstateLup3'),
  SubCategoryImage(index: 36, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA24, title: 'ProstateLup55'),
  SubCategoryImage(index: 37, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA25, title: 'ProstateLup', reference: Assets.imagesAmphionIpadVA26),
  SubCategoryImage(index: 38, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA27, title: 'ProstateCan'),
  SubCategoryImage(index: 39, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA28, title: 'ProstateCan', reference: Assets.imagesAmphionIpadVA29),
  SubCategoryImage(index: 40, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA210, title: 'ProstateOrg', reference: Assets.imagesAmphionIpadVA211),
  SubCategoryImage(index: 41, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA212, title: 'ProstateOrg', reference: Assets.imagesAmphionIpadVA213),
  SubCategoryImage(index: 42, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA214, title: 'ProstateOrg', reference: Assets.imagesAmphionIpadVA215),
  SubCategoryImage(index: 43, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA216, title: 'ProstateOrg', reference: Assets.imagesAmphionIpadVA217),
  SubCategoryImage(index: 44, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA218, title: 'ProstateOrg', reference: Assets.imagesAmphionIpadVA219),
  SubCategoryImage(index: 45, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA31, title: 'Dega', reference: Assets.imagesAmphionIpadVA32),
  SubCategoryImage(index: 46, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA33, title: 'Dega', reference: Assets.imagesAmphionIpadVA34),
  SubCategoryImage(index: 47, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA35, title: 'Dega', reference: Assets.imagesAmphionIpadVA36),
  SubCategoryImage(index: 48, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA37, title: 'CAL'),
  SubCategoryImage(index: 49, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA38, title: 'CAL'),
  SubCategoryImage(index: 50, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA39, title: 'CAL', reference: Assets.imagesAmphionIpadVA310),
  SubCategoryImage(index: 51, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA311, title: 'ZEL', reference: Assets.imagesAmphionIpadVA312),
  SubCategoryImage(index: 52, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA313, title: 'ZEL1', reference: Assets.imagesAmphionIpadVA314),
  SubCategoryImage(index: 53, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA315, title: 'ZEL15', reference: Assets.imagesAmphionIpadVA316),
  SubCategoryImage(index: 54, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA317, title: 'CAL'),
  SubCategoryImage(index: 55, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA318, title: 'CAL'),
  SubCategoryImage(index: 55, subCategoryIndex: 3, image: Assets.imagesAmphionIpadVA319, title: 'CAL', reference: Assets.imagesAmphionIpadVA320),

  // /*-------------------------------------------------------------------------------------------------------------------*/

  SubCategoryImage(index: 56, subCategoryIndex: 4, image: Assets.imagesAmphionPhysicianVAIpadFinalAW1, reference: Assets.imagesAmphionPhysicianVAIpadFinalAW1a),
  //
  SubCategoryImage(index: 57, subCategoryIndex: 4, image: Assets.imagesAmphionPhysicianVAIpadFinalAW2, reference: Assets.imagesAmphionPhysicianVAIpadFinalAW3),
  //
  SubCategoryImage(index: 58, subCategoryIndex: 4, image: Assets.imagesAmphionPhysicianVAIpadFinalAW4, reference: Assets.imagesAmphionPhysicianVAIpadFinalAW5),
  SubCategoryImage(index: 59, subCategoryIndex: 4, image: Assets.imagesAmphionPhysicianVAIpadFinalAW6, reference: Assets.imagesAmphionPhysicianVAIpadFinalAW7),
  //
  SubCategoryImage(index: 60, subCategoryIndex: 4, image: Assets.imagesAmphionPhysicianVAIpadFinalAW8),
  SubCategoryImage(index: 61, subCategoryIndex: 4, image: Assets.imagesAmphionPhysicianVAIpadFinalAW9, reference: Assets.imagesAmphionPhysicianVAIpadFinalAW10),
  SubCategoryImage(index: 62, subCategoryIndex: 4, image: Assets.imagesAmphionPhysicianVAIpadFinalAW11, reference: Assets.imagesAmphionPhysicianVAIpadFinalAW12),
  SubCategoryImage(index: 63, subCategoryIndex: 4, image: Assets.imagesAmphionPhysicianVAIpadFinalAW13),
  //
  SubCategoryImage(index: 64, subCategoryIndex: 4, image: Assets.imagesAmphionPhysicianVAIpadFinalAW14, reference: Assets.imagesAmphionPhysicianVAIpadFinalAW15),
  SubCategoryImage(index: 65, subCategoryIndex: 4, image: Assets.imagesAmphionPhysicianVAIpadFinalAW16, reference: Assets.imagesAmphionPhysicianVAIpadFinalAW17),
  SubCategoryImage(index: 66, subCategoryIndex: 4, image: Assets.imagesAmphionPhysicianVAIpadFinalAW18, reference: Assets.imagesAmphionPhysicianVAIpadFinalAW19),
  SubCategoryImage(index: 67, subCategoryIndex: 4, image: Assets.imagesAmphionPhysicianVAIpadFinalAW20, reference: Assets.imagesAmphionPhysicianVAIpadFinalAW21),
  //
  SubCategoryImage(index: 68, subCategoryIndex: 4, image: Assets.imagesAmphionPhysicianVAIpadFinalAW22, reference: Assets.imagesAmphionPhysicianVAIpadFinalAW23),
  SubCategoryImage(index: 69, subCategoryIndex: 4, image: Assets.imagesAmphionPhysicianVAIpadFinalAW24, reference: Assets.imagesAmphionPhysicianVAIpadFinalAW25),
  SubCategoryImage(index: 70, subCategoryIndex: 4, image: Assets.imagesAmphionPhysicianVAIpadFinalAW26, reference: Assets.imagesAmphionPhysicianVAIpadFinalAW27),
  SubCategoryImage(
      index: 71,
      subCategoryIndex: 4,
      image: Assets.imagesAmphionPhysicianVAIpadFinalAW28,
      reference: Assets.imagesAmphionPhysicianVAIpadFinalAW29,
      title: 'DURP',
      extra1: Assets.imagesAndrologyDurl3,
      extra2: Assets.imagesAndrologyDurl4),
  // SubCategoryImage(
  //     index: 58, subCategoryIndex: 4, image: Assets.new118, title: 'DURP', reference: Assets.new119, extra1: Assets.imagesAndrologyDurl3, extra2: Assets.imagesAndrologyDurl4),
  // SubCategoryImage(index: 59, image: Assets.new120),
];
