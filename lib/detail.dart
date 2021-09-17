import 'package:flutter/material.dart';
import 'package:ptsganjil202112rpl1dhea12/food.dart';

class FoodDetail extends StatefulWidget {
  final FoodModel food;

  FoodDetail(this.food);

  @override
  _FoodDetailState createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6D7D7),
      appBar: AppBar(
        backgroundColor: Color(0xFFF9A5A5),
        title: Text(widget.food.name),
      ),
      body: Stack(children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(3),
            child: Image.network("https://restaurant-api.dicoding.dev/images/medium/${widget.food.pictureId}"),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.food.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,fontFamily: "Stanberry",)),
                            SizedBox(height: 10,),
                            Text('${widget.food.city}', style: TextStyle(fontSize: 21, fontFamily: "Stanberry",)),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange, size: 25),
                            SizedBox(width: 5),
                            Text(widget.food.rating.toString(), style: TextStyle(fontSize: 20, fontFamily: "Stanberry",))
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Text(widget.food.description, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, fontFamily: "Stanberry",))
                  ],
                ),
              ),
          ],
        ),
      ]),
    );
  }
}