import 'package:flutter/material.dart';
import 'package:uber_works_app/colors.dart';
import 'package:uber_works_app/start_screen/widget/CarouselItem.dart';

final _controllerCarouselController = CarouselController();

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 409,
      child: CarouselView.weighted(      
      padding: EdgeInsets.only(left: 19),
      itemSnapping: true,
      controller: _controllerCarouselController,
      flexWeights: [3,1],
      children: List.generate(3, (index) => Carouselitem(listString: _item, index: index,))),
    );
  }
}

List<Map<String, dynamic>> _item = [
{
  'image': DecorationImage(image: Image.asset('assets/images/santehnik1.png').image, fit: BoxFit.cover),
  'text': 'Лучшая платформа для сантехников в 2025 году!'
},
{
  'image': DecorationImage(image: Image.asset('assets/images/santehnik2.png').image, fit: BoxFit.cover),
  'text': 'Помогаем не только клиентам, но и работникам!'
},
{
  'image': DecorationImage(image: Image.asset('assets/images/santehnik3.png').image, fit: BoxFit.cover),
  'text': 'Выбирай стабильный заработок и комфорт!'
},
];