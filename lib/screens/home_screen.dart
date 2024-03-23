import 'package:flutter/material.dart';
import '../theme/theme.dart';
import '../components/cook_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: bleu,),
        ),
      ),

      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("What do you like \nto cook?",
                style: TextStyle(
                    color: bleu,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: gris,width: 5)
                ),
                child: Text("1",
                  style: TextStyle(
                      color: bleu,
                      fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Text("Gravido in fermentum et sollicitudin aelementum etiam non quals",
            style: TextStyle(
                fontSize: 18,
              color: Colors.black38
            ),
          ),
          Container(
            height: 500,
            margin: EdgeInsets.only(top: 15),
            child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 0,
                children: [
                  CookWidget(image: "images/1.jpg", text: "Itley"),
                  CookWidget(image: "images/2.jpg", text: "Odia"),
                  CookWidget(image: "images/3.jpg", text: "Russian"),
                  CookWidget(image: "images/4.jpg", text: "Burmese"),
                  CookWidget(image: "images/16.jpg", text: "African"),
                  CookWidget(image: "images/6.jpg", text: "Rajasthani"),
                  CookWidget(image: "images/19.jpg", text: "Indian"),
                  CookWidget(image: "images/12.jpg", text: "Rome"),
                  CookWidget(image: "images/9.jpg", text: "Peris"),
                ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
              },
              child: Text("Next"),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(orange),
                foregroundColor: MaterialStatePropertyAll(blanc),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
