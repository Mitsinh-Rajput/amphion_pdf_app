import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_template/services/extensions.dart';
import 'package:flutter_template/services/theme.dart';
import 'package:flutter_template/views/base/common_button.dart';
import 'package:flutter_template/views/screens/splash_screen/splash_screen.dart';
import 'package:flutter_template/views/screens/start_screen/sub_category_screen.dart';

import '../../../data/models/response/category.dart';
import '../../../services/route_helper.dart';
import '../../base/custom_image.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<CategoryModel> categories = [
      CategoryModel(
        title: "BPH",
        image: Assets.imagesIndexIcon1,
        subCategories: [
          SubCategoryModel(
            title: "CON T",
            icon: Assets.imagesContiflot,
            index: 0,
            images: [
              // SubCategoryImage(image: Assets.imagesBphConti1, reference: null),
              // SubCategoryImage(image: Assets.imagesBphConti2, reference: Assets.imagesBphConti2Ref),
              // SubCategoryImage(image: Assets.imagesBphConti3, reference: Assets.imagesBphConti3Ref),
              // SubCategoryImage(image: Assets.imagesBphConti4, reference: Assets.imagesBphConti4Ref),
              // SubCategoryImage(image: Assets.imagesBphConti5, reference: Assets.imagesBphConti5Ref),
              // SubCategoryImage(image: Assets.imagesBphConti6, reference: Assets.imagesBphConti6Ref),
            ],
          ),
          SubCategoryModel(
            title: "CON I",
            icon: Assets.imagesContifloi,
            index: 5,
            images: [
              // SubCategoryImage(image: Assets.imagesBphConi1, reference: Assets.imagesBphConi1Ref),
            ],
          ),
          SubCategoryModel(
            title: "TAM",
            index: 6,
            icon: Assets.imagesTamdura,
            images: [
              // SubCategoryImage(image: Assets.imagesBphTam1, reference: Assets.imagesBphTam1Ref),
            ],
          ),
          SubCategoryModel(
            title: "MOD",
            index: 7,
            icon: Assets.imagesModula,
            images: [
              // SubCategoryImage(image: Assets.imagesBphMod1, reference: Assets.imagesBphMod1Ref),
              // SubCategoryImage(image: Assets.imagesBphMod2, reference: Assets.imagesBphMod2Ref),
            ],
          ),
          SubCategoryModel(
            title: "SOL",
            icon: Assets.imagesSolitral,
            index: 10,
            images: [
              // SubCategoryImage(image: Assets.imagesBphSol1, reference: Assets.imagesBphSol1Ref),
            ],
          ),
        ],
      ),
      CategoryModel(
        title: "BLADDER",
        image: Assets.imagesIndexIcon2,
        subCategories: [
          SubCategoryModel(
            title: "MIR",
            icon: Assets.imagesMirago,
            index: 11,
            images: [
              // SubCategoryImage(image: Assets.imagesBladderMir1, reference: Assets.imagesBladderMir1Ref),
              // SubCategoryImage(image: Assets.imagesBladderMir2, reference: Assets.imagesBladderMir2Ref),
              // SubCategoryImage(image: Assets.imagesBladderMir3, reference: Assets.imagesBladderMir3Ref),
            ],
          ),
          SubCategoryModel(
            title: "MIR S",
            index: 14,
            icon: Assets.imagesMiragos,
            images: [
              // SubCategoryImage(image: Assets.imagesBladderMirS1, reference: Assets.imagesBladderMirS1Ref),
              // SubCategoryImage(image: Assets.imagesBladderMirS2, reference: Assets.imagesBladderMirS2Ref),
              // SubCategoryImage(image: Assets.imagesBladderMirS3, reference: Assets.imagesBladderMirS3Ref),
              // SubCategoryImage(image: Assets.imagesBladderMirS4),
              // SubCategoryImage(image: Assets.imagesBladderMirS5, reference: Assets.imagesBladderMirS5Ref),
            ],
          ),
          SubCategoryModel(
            title: "DAR",
            icon: Assets.imagesDariten,
            index: 19,
            images: [
              // SubCategoryImage(image: Assets.imagesBladderDar1, reference: Assets.imagesBladderDar1Ref),
            ],
          ),
          SubCategoryModel(
            title: "CYS",
            icon: Assets.imagesCystopen,
            index: 20,
            images: [
              // SubCategoryImage(image: Assets.imagesBladderCys1, reference: Assets.imagesBladderCys1Ref),
              // SubCategoryImage(image: Assets.imagesBladderCys2, reference: Assets.imagesBladderCys2Ref),
            ],
          ),
          SubCategoryModel(
            title: "TROP XL",
            icon: Assets.imagesTropanxl,
            index: 22,
            images: [
              // SubCategoryImage(image: Assets.imagesBladderTropXr1, reference: Assets.imagesBladderTropXr1Ref, extra1: Assets.imagesBladderTropXr2),
            ],
          ),
        ],
      ),
      CategoryModel(
        title: "ANDROLOGY",
        image: Assets.imagesIndexIcon3,
        subCategories: [
          SubCategoryModel(
            title: "CER",
            icon: Assets.imagesCernos,
            index: 23,
            images: [
              // SubCategoryImage(image: Assets.imagesAndrologyCer1, reference: Assets.imagesAndrologyCer1Ref),
              // SubCategoryImage(image: Assets.imagesAndrologyCer2, reference: Assets.imagesAndrologyCer2Ref),
              // SubCategoryImage(image: Assets.imagesAndrologyCer3, reference: Assets.imagesAndrologyCer3Ref),
            ],
          ),
          SubCategoryModel(
            title: "DURL",
            icon: Assets.imagesDuralast,
            index: 28,
            images: [
              // SubCategoryImage(image: Assets.imagesAndrologyDurp1, reference: Assets.imagesAndrologyDurp1Ref),
            ],
          ),
          SubCategoryModel(
            title: "DURP",
            icon: Assets.imagesDuraplus,
            index: 29,
            images: [
              // SubCategoryImage(image: Assets.imagesAndrologyDurl1, reference: Assets.imagesAndrologyDurl1Ref),
              // SubCategoryImage(
              //   image: Assets.imagesAndrologyDurl2,
              //   reference: Assets.imagesAndrologyDurl2Ref,
              //   extra1: Assets.imagesAndrologyDurl3,
              //   extra2: Assets.imagesAndrologyDurl4,
              // ),
            ],
          ),
        ],
      ),
      CategoryModel(
        title: "PROSTATE CANCER",
        image: Assets.imagesIndexIcon4,
        subCategories: [
          SubCategoryModel(
            title: "LUP",
            icon: Assets.imagesLupride,
            index: 31,
            images: [
              // SubCategoryImage(image: Assets.imagesProstateLup0),
              // SubCategoryImage(image: Assets.imagesProstateLup1, reference: Assets.imagesProstateLup1Ref),
              // SubCategoryImage(image: Assets.imagesProstateLup2, reference: Assets.imagesProstateLup2Ref),
            ],
          ),
          SubCategoryModel(
            title: "DEGA",
            icon: Assets.imagesDegapride,
            index: 34,
            images: [
              // SubCategoryImage(image: Assets.imagesProstateDega1),
              // SubCategoryImage(
              //   image: Assets.imagesProstateDega2,
              //   reference: Assets.imagesProstateDega2Ref,
              //   extra1: Assets.imagesProstateDega2Extra1,
              //   extra2: Assets.imagesProstateDega2Extra2,
              // ),
              // SubCategoryImage(image: Assets.imagesProstateDega3),
              // SubCategoryImage(image: Assets.imagesProstateDega4, reference: Assets.imagesProstateDega4Ref),
            ],
          ),
          SubCategoryModel(
            title: "CAL",
            icon: Assets.imagesCaluran,
            index: 38,
            images: [
              // SubCategoryImage(image: Assets.imagesProstateCal1),
            ],
          ),
          SubCategoryModel(
            title: "ZEL",
            icon: Assets.imagesZelgor,
            index: 39,
            images: [
              // SubCategoryImage(image: Assets.imagesProstateZel1, reference: Assets.imagesProstateZel1Ref),
              // SubCategoryImage(image: Assets.imagesProstateZel2, reference: Assets.imagesProstateZel2Ref),
              // SubCategoryImage(image: Assets.imagesProstateZel3, reference: Assets.imagesProstateZel3Ref, extra1: Assets.imagesProstateZel3Extra),
            ],
          ),
          SubCategoryModel(
            title: "ENZ",
            icon: Assets.imagesEnzyl,
            index: 42,
            images: [
              // SubCategoryImage(image: Assets.imagesProstateEnz1),
              // SubCategoryImage(image: Assets.imagesProstateEnz2),
              // SubCategoryImage(image: Assets.imagesProstateEnz3, reference: Assets.imagesProstateEnz3Ref),
            ],
          ),
        ],
      ),
      CategoryModel(
        title: "PHYSICIAN VA",
        image: Assets.imagesIndexIcon5,
        subCategories: [
          SubCategoryModel(
            title: "CON I",
            icon: Assets.imagesContiflot,
            index: 45,
            images: [
              // SubCategoryImage(image: Assets.imagesPhysician1, reference: Assets.imagesPhysician2),
              // SubCategoryImage(image: Assets.imagesPhysician3, reference: Assets.imagesPhysician4),
            ],
          ),
          SubCategoryModel(
            title: "TAM",
            icon: Assets.imagesTamdura,
            index: 47,
            images: [
              // SubCategoryImage(image: Assets.imagesPhysician5, reference: Assets.imagesPhysician6),
            ],
          ),
          SubCategoryModel(
            title: "MOD",
            icon: Assets.imagesModula,
            index: 48,
            images: [
              // SubCategoryImage(image: Assets.imagesPhysician7, reference: Assets.imagesPhysician8),
              // SubCategoryImage(image: Assets.imagesPhysician9, reference: Assets.imagesPhysician10),
            ],
          ),
          SubCategoryModel(
            title: "MIR",
            icon: Assets.imagesMirago,
            index: 50,
            images: [
              // SubCategoryImage(image: Assets.imagesPhysician11),
              // SubCategoryImage(image: Assets.imagesPhysician12, reference: Assets.imagesPhysician13),
              // SubCategoryImage(image: Assets.imagesPhysician14, reference: Assets.imagesPhysician15),
              // SubCategoryImage(image: Assets.imagesPhysician16, reference: Assets.imagesPhysician17),
            ],
          ),
          SubCategoryModel(
            title: "CER",
            icon: Assets.imagesCernos,
            index: 54,
            images: [
              // SubCategoryImage(image: Assets.imagesPhysician18, reference: Assets.imagesPhysician19),
              // SubCategoryImage(image: Assets.imagesPhysician20, reference: Assets.imagesPhysician21),
            ],
          ),
          SubCategoryModel(
            title: "DURL",
            icon: Assets.imagesDuralast,
            index: 58,
            images: [
              // SubCategoryImage(image: Assets.imagesPhysician22, reference: Assets.imagesPhysician23),
            ],
          ),
          SubCategoryModel(
            title: "DURP",
            icon: Assets.imagesDuraplus,
            index: 59,
            images: [
              // SubCategoryImage(
              //   image: Assets.imagesPhysician24,
              //   reference: Assets.imagesPhysician25,
              // ),
              // SubCategoryImage(
              //   image: Assets.imagesPhysician26,
              //   reference: Assets.imagesPhysician27,
              //   extra1: Assets.imagesAndrologyDurl3,
              //   extra2: Assets.imagesAndrologyDurl4,
              // ),
            ],
          ),
        ],
      ),
      CategoryModel(title: "Esurge", image: Assets.imagesIndexIcon6, subCategories: []),
    ];

    // List<List<String>> og = [];
    // for (var value in categories) {
    //   List<String> temp = [];
    //   for (var value1 in (value.subCategories)) {
    //     temp.add(value1.icon);
    //   }
    //   og.add(temp);
    // }
    // log(jsonEncode(og), name: "${'sadas'}");

    return Scaffold(
      body: Stack(
        children: [
          CustomImage(
            path: Assets.imagesCoverImage,
            width: size.width,
            height: size.height,
          ),
          Container(
            width: size.width,
            height: size.height,
            color: Colors.white70,
            padding: const EdgeInsets.all(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < categories.length; i++)
                  Builder(builder: (context) {
                    var category = categories[i];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 90,
                            padding: const EdgeInsets.only(left: 10),
                            child: Center(
                              child: Container(
                                height: 60,
                                width: size.width * .83,
                                decoration: BoxDecoration(
                                  color: i == categories.length - 1 ? Colors.transparent : context.primaryColor,
                                ),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: (i == categories.length - 1)
                                          ? () {
                                              // Navigator.push(context, getCustomRoute(child: const EsurgeScreen(), animate: false));
                                              Navigator.push(
                                                context,
                                                getCustomRoute(
                                                  child: SubCategoryScreenV2(
                                                    index: allImages.length - 1,
                                                  ),
                                                  animate: false,
                                                ),
                                              );
                                            }
                                          : null,
                                      child: SizedBox(
                                        width: size.width * .28,
                                        child: Stack(
                                          children: [
                                            SvgPicture.asset(
                                              Assets.svgsArrowJoined,
                                              colorFilter: ColorFilter.mode(purpleColor, BlendMode.srcIn),
                                              fit: BoxFit.fitWidth,
                                              width: size.width * .28,
                                            ),
                                            if (i == categories.length - 1)
                                              const Center(
                                                child: Padding(
                                                  padding: EdgeInsets.all(4.0),
                                                  child: CustomImage(path: Assets.imagesEsurge),
                                                ),
                                              )
                                            else
                                              Padding(
                                                padding: const EdgeInsets.only(left: 0),
                                                child: Center(
                                                  child: Text(
                                                    category.title,
                                                    style: context.textTheme.bodyLarge!.copyWith(
                                                      color: Colors.white,
                                                      fontSize: 19,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // for (String subCategory in item['sub_categories'])
                                    for (int i = 0; i < category.subCategories.length; i++)
                                      Builder(builder: (context) {
                                        SubCategoryModel subCategory = category.subCategories[i];
                                        return Row(
                                          children: [
                                            CustomButton(
                                              type: ButtonType.tertiary,
                                              onTap: () {
                                                log("${subCategory.index}");
                                                Navigator.push(
                                                    context,
                                                    getCustomRoute(
                                                        child: SubCategoryScreenV2(
                                                          index: subCategory.index ?? 0,
                                                        ),
                                                        animate: false));
                                              },
                                              child: Text(
                                                subCategory.title,
                                                style: context.textTheme.bodyLarge!.copyWith(
                                                  color: purpleColor,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            if (i != category.subCategories.length - 1)
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                                child: Container(
                                                  width: .5,
                                                  height: 20,
                                                  color: purpleColor,
                                                ),
                                              )
                                          ],
                                        );
                                      })
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (i == categories.length - 1)
                                ? () {
                                    // Navigator.push(context, getCustomRoute(child: const EsurgeScreen(), animate: false));
                                    log('HERE');
                                    Navigator.push(
                                        context,
                                        getCustomRoute(
                                            child: SubCategoryScreenV2(
                                              index: allImages.length - 1,
                                            ),
                                            animate: false));
                                  }
                                : null,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(90),
                              child: CustomImage(
                                path: category.image,
                                height: 90,
                                width: 90,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 50,
            child: IconButton(
              onPressed: () {
                Navigator.pushReplacement(context, getCustomRoute(child: const SplashScreen()));
              },
              icon: const CustomImage(
                path: Assets.imagesHomeIcon,
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

class EsurgeScreen extends StatelessWidget {
  const EsurgeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          CustomImage(
            path: Assets.imagesEsurge1,
            fit: BoxFit.fill,
            height: size.height,
            width: size.width,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
