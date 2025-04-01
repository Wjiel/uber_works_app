import 'package:flutter/material.dart';
import 'package:uber_works_app/start_screen/widget/CarouselItem.dart';


class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 409,
      child: CarouselView.weighted(      
      padding: EdgeInsets.only(left: 19),
      itemSnapping: true,
      flexWeights: [3,1],
      children: List.generate(3, (index) => Carouselitem(listString: _item[index]))),
    );
  }
}

List<Map<String, dynamic>> _item = [
{
  'image': 'assets/images/santehnik1.png',
  'text': 'Лучшая платформа для сантехников в 2025 году!'
},
{
  'image': 'assets/images/santehnik2.png',
  'text': 'Помогаем не только клиентам, но и работникам!'
},
{
  'image': 'assets/images/santehnik3.png',
  'text': 'Выбирай стабильный заработок и комфорт!'
},
];