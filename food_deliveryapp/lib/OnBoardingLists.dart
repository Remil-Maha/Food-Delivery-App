class OnBoarding{
  final String image;
  final String title;
  final String description;

  OnBoarding({
    required this.image,
     required this.title,
     required this.description});
}
List<OnBoarding> OnBoardingContents =[
  OnBoarding(
      image: "images/OnBoarding1.svg" ,
      title: "Culinary Marvels Delivered",
      description:"Our delivery heroes are on a mission to bring you culinary marvels. With the utmost care and precision, they ensure that your food arrives fresh, hot, and ready to tantalize your taste buds." ,

    ),
    OnBoarding(
          image: "images/OnBoarding2.svg" ,
          title: "Payment at Warp Speed ",
          description:"We believe in the power of quick transactions. Our payment process is lightning-fast, ensuring that you can finalize your order in a blink. " ,

     ),
     OnBoarding(
          image: "images/OnBoarding3.svg",
          title: 'Lightning Fast Delivery ',
          description:"We serve up speed on a platter. Hungry? We'll have your food at your door before you can say ""yum!"" Our turbocharged delivery gets your favorite dishes to you in record time",
),
];