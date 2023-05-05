import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFDFA),
      // extendBodyBehindAppBar:true ,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0 ,
        title: Text("سلة المشتريات" , style: TextStyle(color: Colors.black ,fontSize: 22 ,fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading:Icon(
          Icons.delete_forever_outlined,
          color: Colors.redAccent,
          size: 30,
        ),
      ) ,
      body:
     ListView(
       padding: EdgeInsets.only(left: 20,right: 20),
       children: [
         Text("00 منتج" , style: TextStyle(fontSize: 20,color: Colors.grey ,),textDirection: TextDirection.rtl,),
         SizedBox(height: 10,),
         Image(image: AssetImage("images/img_1.png"), width: 300,height: 400, ),
         SizedBox(height: 15,),
         Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("لم تقم باضافة اي منتج الى السلة مؤخرا",style: TextStyle(
               color: Colors.black,
               //fontWeight: FontWeight.bold,
                 fontSize: 20

             ),),
           ],
         ),
         SizedBox(height: 30,),
         Column(
           children: [
             TextField(

               textAlign: TextAlign.center,
               decoration: InputDecoration(
                   fillColor: Colors.brown,
                   filled: true,
                   hintText: 'اذهب للتسوق الأن',
                   hintStyle: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.bold),
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(50),
                       borderSide: BorderSide(color: Colors.brown,style: BorderStyle.solid)
                   )
               ),
             ),
           ],
         ),
       ],
     ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        currentIndex: selectedIndex ,
        iconSize: 30,
        selectedItemColor:selectedIndex == selectedIndex?Colors.brown:Colors.grey,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: '',backgroundColor: Color(0xffFFFDFA),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.backpack_outlined),label: '',backgroundColor: Color(0xffFFFDFA)),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: '' ,backgroundColor: Color(0xffFFFDFA)),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: '',backgroundColor: Color(0xffFFFDFA)),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: '',backgroundColor: Color(0xffFFFDFA)),
        ],
      ),

    );
  }
}
