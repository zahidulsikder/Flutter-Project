import 'package:e_commerce/models/catalog.dart';
import 'package:e_commerce/widget/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetail extends StatelessWidget {
  final Item catalog;

  const HomeDetail({Key? key, required this.catalog}) : assert(catalog!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    String demoText = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old";
    return Scaffold(
      backgroundColor: Mytheme.creamColor,
      appBar: AppBar(
        title: "Product Detail".text.bold.make(),
      ),

      bottomNavigationBar: Container(
        color: Mytheme.creamColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: Vx.mOnly(right: 16),
          children: [
            "Price \$ :  ${catalog.price}".text.bold.xl2.red500.make(),

            ElevatedButton(
                onPressed: () =>{
                },

                //
                // style: ElevatedButton.styleFrom(
                //     primary: Colors.green,
                //
                //     textStyle: TextStyle(
                //         fontSize: 30,
                //         fontWeight: FontWeight.bold)),



                style: ButtonStyle(

                  shape: MaterialStateProperty.all(StadiumBorder()),
                ),

                child: "Add to Cart".text.lg.make().p16()
            ),
          ],
        ).p16(),
      ),






      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
              height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,

                  child: Column(

                    children: [
                      40.heightBox,
                      catalog.name.text.xl4.bold.make(),
                      catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                      10.heightBox,
                      demoText.text.make(),



                    ],
                  ),

                ),

            ),
            ),
          ],
        ),
        
        
      ).pOnly(top: 30.0)
        
        
        
    );
  }
}
