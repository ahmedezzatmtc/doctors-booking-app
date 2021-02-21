import 'package:doctor/widgets/rating.dart';
import 'package:flutter/material.dart';



class ResultItem extends StatefulWidget {

final String drName;
final String type;
final double rating;
final String image;
final int reviews;
final int fee;
final String currency;
final String location;

ResultItem({this.drName, this.type,this.rating, this.image, this.reviews, this.fee, this.location, this.currency});

  @override
  _ResultItemState createState() => _ResultItemState();
}

class _ResultItemState extends State<ResultItem> {

bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 125.0,
                margin: EdgeInsets.only(right: 10.0),
                width: MediaQuery.of(context).size.width/4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(widget.image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr: ${widget.drName}',
                    style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold, height: 1.5),
                  ),
                  Text(
                    widget.type,
                    style: TextStyle(color: Color(0xff00BBDC), fontSize: 18.0, fontWeight: FontWeight.bold, height: 1.5),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RatingBar(
                        onRatingUpdate: null,
                        direction: Axis.horizontal,
                        initialRating: widget.rating,
                        itemCount: 5,
                        itemSize: 15,
                        minRating: 1.0,
                        maxRating: 5.0,
                        ratingWidget: RatingWidget(
                            full: Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            half: Icon(
                              Icons.star_half,
                              color: Colors.yellow,
                            ),
                            empty: Icon(
                              Icons.star_border,
                              color: Colors.yellow,
                            )),
                        glowColor: Colors.yellow,
                        unratedColor: Colors.grey,
                      ),
                      Text(
                        '  ( ${widget.reviews.toString()} Reviews)',
                        style: TextStyle(color: Color(0xff00BBDC), fontSize: 18.0, fontWeight: FontWeight.bold, height: 1.5),
                      ),
                    ],
                  ),
                  Text(
                    '${widget.location}',
                    style: TextStyle(color: Color(0xff18435A), fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Fee: ${widget.fee.toString()} ${widget.currency}',
                    style: TextStyle(color: Color(0xff18435A), fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Add To',
                style: TextStyle(color: Color(0xff00BBDC), fontSize: 18.0, fontWeight: FontWeight.normal, height: 1.5),
              ),
              IconButton(
                icon: Icon(pressed == false ? Icons.favorite_border : Icons.favorite),
                color: Color(0xff00BBDC),
                iconSize: 25.0,
                onPressed: () {
                  setState(() {
                    pressed = !pressed;
                  });
                }
              ),
              SizedBox(width: MediaQuery.of(context).size.width/4),
              Text(
                'Book',
                style: TextStyle(color: Color(0xff00BBDC), fontSize: 18.0, fontWeight: FontWeight.normal, height: 1.5),
              ),
              IconButton(
                icon: Icon(Icons.calendar_today),
                color: Color(0xff00BBDC),
                iconSize: 25.0,
                onPressed: () {}
              ),
            ],
          ),
        ],
      ),
    );
  }
}