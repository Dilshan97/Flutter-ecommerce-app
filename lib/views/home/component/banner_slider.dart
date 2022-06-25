import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({Key? key}) : super(key: key);

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  List<String> imgList = [
    'https://essstr.blob.core.windows.net/uiimg/Carousel/DirectImportCarousel.jpg',
    'https://essstr.blob.core.windows.net/uiimg/DonationCard/Donation_Carousel_Banner_Web_View.jpg',
    'https://essstr.blob.core.windows.net/uiimg/Carousel/NexusRedemption/NexusRedemption_WebImage.jpg',
    'https://essstr.blob.core.windows.net/uiimg/Carousel/slide1.jpg',
    'https://essstr.blob.core.windows.net/uiimg/Carousel/slide9.jpg',
    'https://essstr.blob.core.windows.net/uiimg/Carousel/FreshVegetables/FreshVegetablesWebBanner.png',
    'https://essstr.blob.core.windows.net/uiimg/Carousel/slide3.jpg',
    'https://essstr.blob.core.windows.net/uiimg/BannerSections/BannerSection2A.jpg',
    'https://essstr.blob.core.windows.net/uiimg/DonationCard/Donation_Section_Banner_Web_View.jpg',
    'https://essstr.blob.core.windows.net/uiimg/BannerSections/BannerSection4A.jpg',
    'https://essstr.blob.core.windows.net/uiimg/BannerSections/BannerSection4B.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        child: CarouselSlider(
          options: CarouselOptions(
            enlargeCenterPage: true,
            height: MediaQuery.of(context).size.height * 0.24,
            // aspectRatio: 16/9,
            disableCenter: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
          ),
          items: imgList
              .map((item) => Container(
                    child: Center(
                        child: Image.network(
                      item,
                      fit: BoxFit.cover,
                      width: 1000,
                    )),
                  ))
              .toList(),
        ));
  }
}
