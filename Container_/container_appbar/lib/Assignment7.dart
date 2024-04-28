import 'package:flutter/material.dart';

class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Assignment6"),
          backgroundColor: Colors.blueAccent,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),
              Image.network(
                "https://static-cse.canva.com/blob/825910/ComposeStunningImages6.jpg",
                height: 300,
                width: 300,
              ),
              const SizedBox(
                width: 20,
              ),
              Image.network(
                "https://c8.alamy.com/comp/2A80YPD/blue-sneakers-on-a-background-of-yellow-autumn-leaves-11-aspect-ratio-2A80YPD.jpg",
                height: 300,
                width: 300,
              ),
              const SizedBox(
                width: 20,
              ),
              Image.network(
                "https://croppola.com/croppola/example-bird2/image.jpg?algorithm=croppola&aspectRatio=1&width=500&thumbnailMaximumWidth=150",
                height: 300,
                width: 300,
              ),
              const SizedBox(
                width: 20,
              ),
              Image.network(
                "https://g2.img-dpreview.com/81C81CB44922409EA3C99FA3E42369CD.jpg",
                height: 300,
                width: 300,
              ),
              const SizedBox(
                width: 20,
              ),
              Image.network(
                "https://phlearn.com/wp-content/uploads/2019/03/dhruv-deshmukh-266273-unsplash-square.jpg",
                height: 300,
                width: 300,
              ),
              const SizedBox(
                width: 20,
              ),
              Image.network(
                "https://thumbs.dreamstime.com/b/christmas-star-background-6396494.jpg",
                height: 300,
                width: 300,
              ),
              const SizedBox(
                width: 20,
              ),
              Image.network("https://thumbs.dreamstime.com/b/stardish-lovers-glam-glitter-gives-candy-dish-retro-look-faux-gold-highlights-its-gawky-urban-dictionary-45391088.jpg",
                height: 300,
                width: 300,
              ),
              const SizedBox(
                width: 20,
              ),
              Image.network(
                "https://i.pinimg.com/originals/94/65/33/9465336138419509480f55128741b14e.jpg",
                height: 300,
                width: 300,              
              ),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          ],
        )
        )
    );
  }
}
