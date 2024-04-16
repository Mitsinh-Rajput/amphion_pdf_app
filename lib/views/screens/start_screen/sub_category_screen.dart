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

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: widget.index);
    Timer.run(() {
      setState(() {});
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
        "index": 10,
      },
    ],
    [
      {
        "image": "assets/images/mirago.png",
        "index": 11,
      },
      {
        "image": "assets/images/miragos.png",
        "index": 14,
      },
      {
        "image": "assets/images/dariten.png",
        "index": 19,
      },
      {
        "image": "assets/images/cystopen.png",
        "index": 20,
      },
      {
        "image": "assets/images/tropanxl.png",
        "index": 22,
      },
    ],
    [
      {
        "image": "assets/images/cernos.png",
        "index": 23,
      },
      {
        "image": "assets/images/duralast.png",
        "index": 28,
      },
      {
        "image": "assets/images/duraplus.png",
        "index": 29,
      },
    ],
    [
      {
        "image": "assets/images/lupride.png",
        "index": 31,
      },
      {
        "image": "assets/images/degapride.png",
        "index": 34,
      },
      {
        "image": "assets/images/caluran.png",
        "index": 38,
      },
      {
        "image": "assets/images/zelgor.png",
        "index": 39,
      },
      {
        "image": "assets/images/enzyl.png",
        "index": 42,
      },
    ],
    [
      {
        "image": "assets/images/contiflot.png",
        "index": 45,
      },
      {
        "image": "assets/images/tamdura.png",
        "index": 47,
      },
      {
        "image": "assets/images/modula.png",
        "index": 48,
      },
      {
        "image": "assets/images/mirago.png",
        "index": 50,
      },
      {
        "image": "assets/images/cernos.png",
        "index": 54,
      },
      {
        "image": "assets/images/duralast.png",
        "index": 58,
      },
      {
        "image": "assets/images/duraplus.png",
        "index": 59,
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
                    if (index != 61) {
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
                                width: size.width * .7,
                                // color: Colors.black87,
                                fit: BoxFit.fitWidth,
                                colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                              ),
                            ),
                            if (pageController.hasClients)
                              Center(
                                child: SizedBox(
                                  height: size.height * .07 - 6,
                                  width: size.width * .65 - 6,
                                  child: Center(
                                    child: ListView.separated(
                                      itemCount: subData[allImages[pageController.page!.round()].subCategoryIndex!].length,
                                      physics: const NeverScrollableScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                      itemBuilder: (context, int index1) {
                                        log(allImages[pageController.page!.round()].index!.toString());
                                        // log(subData[allImages[pageController.page!.round()].subCategoryIndex!].length.toString());
                                        double width = (size.width * .65) / (subData[allImages[pageController.page!.round()].subCategoryIndex!].length);
                                        // log("${(width).toString()}  ${size.width * .65}");
                                        return SizedBox(
                                          width: width,
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
    return CustomImage(path: image);
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
  SubCategoryImage(index: 0, subCategoryIndex: 0, image: Assets.new1, title: 'BphConti', reference: null),
  SubCategoryImage(index: 1, subCategoryIndex: 0, image: Assets.new2, title: 'BphConti', reference: Assets.new3),
  SubCategoryImage(index: 2, subCategoryIndex: 0, image: Assets.new4a, title: 'BphConti', reference: Assets.new5a),
  SubCategoryImage(index: 3, subCategoryIndex: 0, image: Assets.new6, title: 'BphConti', reference: Assets.new7),
  SubCategoryImage(index: 4, subCategoryIndex: 0, image: Assets.new8, title: 'BphConti', reference: Assets.new9),
  SubCategoryImage(index: 5, subCategoryIndex: 0, image: Assets.new10, title: 'BphConi', reference: Assets.new11),
  SubCategoryImage(index: 6, subCategoryIndex: 0, image: Assets.new12, title: 'BphTam', reference: Assets.new13),
  // SubCategoryImage(index: 7, subCategoryIndex: 0, image: Assets.new14, title: 'BphMod', reference: Assets.new15),
  SubCategoryImage(index: 8, subCategoryIndex: 0, image: Assets.new16, title: 'BphMod', reference: Assets.new17),
  SubCategoryImage(index: 9, subCategoryIndex: 0, image: Assets.new18a, title: 'BphMod', reference: Assets.new19a),
  SubCategoryImage(index: 10, subCategoryIndex: 0, image: Assets.new20a, title: 'BphSol', reference: Assets.new21a),

  /*-------------------------------------------------------------------------------------------------------------------*/

  SubCategoryImage(index: 11, subCategoryIndex: 1, image: Assets.new22, title: 'BladderMir', reference: Assets.new23),
  SubCategoryImage(index: 12, subCategoryIndex: 1, image: Assets.new24, title: 'BladderMir', reference: Assets.new25),
  SubCategoryImage(index: 13, subCategoryIndex: 1, image: Assets.new26, title: 'BladderMir', reference: Assets.new27),
  SubCategoryImage(index: 14, subCategoryIndex: 1, image: Assets.new28, title: 'BladderMirS', reference: Assets.new29),
  SubCategoryImage(index: 15, subCategoryIndex: 1, image: Assets.new30, title: 'BladderMirS', reference: Assets.new31),
  SubCategoryImage(index: 16, subCategoryIndex: 1, image: Assets.new32, title: 'BladderMirS', reference: Assets.new33),
  SubCategoryImage(index: 17, subCategoryIndex: 1, image: Assets.new34, title: 'BladderMirS'),
  SubCategoryImage(index: 18, subCategoryIndex: 1, image: Assets.new35, title: 'BladderMirS', reference: Assets.new36),
  SubCategoryImage(index: 19, subCategoryIndex: 1, image: Assets.new37a, title: 'BladderDar', reference: Assets.new38),
  SubCategoryImage(index: 20, subCategoryIndex: 1, image: Assets.new39, title: 'BladderCys', reference: Assets.new40),
  SubCategoryImage(index: 21, subCategoryIndex: 1, image: Assets.new41, title: 'BladderCys', reference: Assets.new42),
  SubCategoryImage(index: 22, subCategoryIndex: 1, image: Assets.new43, title: 'TROP XR', reference: Assets.new45, extra1: Assets.new44),
  SubCategoryImage(index: 23, subCategoryIndex: 2, image: Assets.new46, title: 'AndrologyCer', reference: Assets.new47),
  SubCategoryImage(index: 24, subCategoryIndex: 2, image: Assets.new48, title: 'AndrologyCer', reference: Assets.new49),
  SubCategoryImage(index: 25, subCategoryIndex: 2, image: Assets.new50, title: 'AndrologyCer', reference: Assets.new51),
  SubCategoryImage(index: 26, subCategoryIndex: 2, image: Assets.new52, title: 'AndrologyCer', reference: Assets.new53),
  SubCategoryImage(index: 27, subCategoryIndex: 2, image: Assets.new54, title: 'AndrologyCer', reference: Assets.new55),
  SubCategoryImage(index: 28, subCategoryIndex: 2, image: Assets.new56, title: 'AndrologyDurl', reference: Assets.new57),
  SubCategoryImage(index: 29, subCategoryIndex: 2, image: Assets.new58, title: 'AndrologyDurp', reference: Assets.new59),
  SubCategoryImage(index: 30, subCategoryIndex: 2, image: Assets.new60, title: 'DURP', reference: Assets.new63, extra1: Assets.new61, extra2: Assets.new62),

  /*-------------------------------------------------------------------------------------------------------------------*/

  SubCategoryImage(index: 31, subCategoryIndex: 3, image: Assets.new64, title: 'ProstateLup'),
  SubCategoryImage(index: 32, subCategoryIndex: 3, image: Assets.new65, title: 'ProstateLup', reference: Assets.new66),
  SubCategoryImage(index: 33, subCategoryIndex: 3, image: Assets.new67, title: 'ProstateLup', reference: Assets.new68),
  SubCategoryImage(index: 34, subCategoryIndex: 3, image: Assets.new69, title: 'ProstateDega'),
  SubCategoryImage(index: 35, subCategoryIndex: 3, image: Assets.new70a, title: 'DEGA', reference: Assets.new73a, extra1: Assets.new71a, extra2: Assets.new72a),
  SubCategoryImage(index: 36, subCategoryIndex: 3, image: Assets.new74a, title: 'ProstateDega', reference: Assets.new74ref),
  SubCategoryImage(index: 37, subCategoryIndex: 3, image: Assets.new75a, title: 'ProstateDega', reference: Assets.new76a),
  SubCategoryImage(index: 38, subCategoryIndex: 3, image: Assets.new77, title: 'ProstateCal'),
  SubCategoryImage(index: 39, subCategoryIndex: 3, image: Assets.new78, title: 'ProstateZel', reference: Assets.new79),
  SubCategoryImage(index: 40, subCategoryIndex: 3, image: Assets.new80, title: 'ProstateZel', reference: Assets.new81a),
  SubCategoryImage(index: 41, subCategoryIndex: 3, image: Assets.new82, title: 'ZEL', reference: Assets.new84, extra1: Assets.new83),
  SubCategoryImage(index: 42, subCategoryIndex: 3, image: Assets.new85, title: 'ProstateEnz'),
  SubCategoryImage(index: 43, subCategoryIndex: 3, image: Assets.new86, title: 'ProstateEnz'),
  SubCategoryImage(index: 44, subCategoryIndex: 3, image: Assets.new87a, title: 'ProstateEnz', reference: Assets.new88a),

  /*-------------------------------------------------------------------------------------------------------------------*/

  SubCategoryImage(index: 45, subCategoryIndex: 4, image: Assets.new89, reference: Assets.new90),
  SubCategoryImage(index: 46, subCategoryIndex: 4, image: Assets.new91, reference: Assets.new92),
  //
  SubCategoryImage(index: 47, subCategoryIndex: 4, image: Assets.new93, reference: Assets.new94),
  //
  SubCategoryImage(index: 48, subCategoryIndex: 4, image: Assets.new95, reference: Assets.new96),
  SubCategoryImage(index: 49, subCategoryIndex: 4, image: Assets.new97a, reference: Assets.new98a),
  //
  SubCategoryImage(index: 50, subCategoryIndex: 4, image: Assets.new99),
  SubCategoryImage(index: 51, subCategoryIndex: 4, image: Assets.new100, reference: Assets.new101),
  SubCategoryImage(index: 52, subCategoryIndex: 4, image: Assets.new102, reference: Assets.new103),
  SubCategoryImage(index: 53, subCategoryIndex: 4, image: Assets.new104, reference: Assets.new105),
  //
  SubCategoryImage(index: 54, subCategoryIndex: 4, image: Assets.new106, reference: Assets.new107),
  SubCategoryImage(index: 55, subCategoryIndex: 4, image: Assets.new108, reference: Assets.new109),
  SubCategoryImage(index: 56, subCategoryIndex: 4, image: Assets.new110, reference: Assets.new111),
  SubCategoryImage(index: 57, subCategoryIndex: 4, image: Assets.new112, reference: Assets.new113),
  //
  SubCategoryImage(index: 58, subCategoryIndex: 4, image: Assets.new114, reference: Assets.new115),
  SubCategoryImage(index: 58, subCategoryIndex: 4, image: Assets.new116, reference: Assets.new117),
  SubCategoryImage(
      index: 58, subCategoryIndex: 4, image: Assets.new118, title: 'DURP', reference: Assets.new119, extra1: Assets.imagesAndrologyDurl3, extra2: Assets.imagesAndrologyDurl4),
  SubCategoryImage(index: 59, image: Assets.new120),
];
