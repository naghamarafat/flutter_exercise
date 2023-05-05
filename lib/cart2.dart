import 'package:flutter/material.dart';

class Cart2Page extends StatefulWidget {
  const Cart2Page({Key? key}) : super(key: key);

  @override
  State<Cart2Page> createState() => _Cart2PageState();
}

class _Cart2PageState extends State<Cart2Page> {
  int selectedIndex = 0;
  bool flag = false;
  bool flag2 = false;
  bool flag3 = false;
  bool flag4 = false;
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
        body: ListView(
          padding: EdgeInsets.only(left: 20,right: 20),
          children: [
            Column(
              children: [
                CheckboxListTile(value:flag , onChanged: (value) {
                  setState(() {
                    flag = value!;
                  });
                },
                  title: Text("3 منتجات" ,textDirection: TextDirection.rtl,),
                  contentPadding: EdgeInsets.only(left: 250),
                ),
                SizedBox(height: 10,),
                Card(
                    margin: EdgeInsets.fromLTRB(20, 5, 20, 15),
                    color: Colors.white,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Icon(Icons.border_color_outlined ,color: Colors.brown, ),
                            SizedBox(height: 50,),
                            Row(
                              children: [
                                Text("+" , style: TextStyle(fontSize: 25,backgroundColor: Colors.brown,color: Colors.white),),
                                Text("1" , style: TextStyle(fontSize: 20,color: Colors.black , fontWeight: FontWeight.bold),),
                                Text("-" , style: TextStyle(fontSize: 25,backgroundColor: Colors.orange[100],color: Colors.white),),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("حذاء رياضي" , style: TextStyle(fontSize: 20,color: Colors.black ,),),
                            Row(
                              children: [
                                CircleAvatar(backgroundColor: Colors.black,radius: 5),
                                Text("اللون : " , style: TextStyle(fontSize: 20,color: Colors.grey ,),),
                                Text("المقاس : 42" , style: TextStyle(fontSize: 20,color: Colors.grey ,),),
                              ],
                            ),
                            Text("18" , style: TextStyle(fontSize: 20,color: Colors.brown ,)),
                          ],
                        ),

                        Image.asset("images/shose.png" , width: 70,height: 70,),
                        Expanded(
                          child: CheckboxListTile(value:flag2 , onChanged: (value) {
                            setState(() {
                              flag2 = value!;
                            });
                          },
                          ),
                        ),

                      ],
                    )
                ),
                Card(
                    margin: EdgeInsets.fromLTRB(20, 5, 20, 15),
                    color: Colors.white,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Icon(Icons.border_color_outlined ,color: Colors.brown, ),
                            SizedBox(height: 50,),
                            Row(
                              children: [
                                Text("+" , style: TextStyle(fontSize: 25,backgroundColor: Colors.brown,color: Colors.white),),
                                Text("1" , style: TextStyle(fontSize: 20,color: Colors.black , fontWeight: FontWeight.bold),),
                                Text("-" , style: TextStyle(fontSize: 25,backgroundColor: Colors.orange[100],color: Colors.white),),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("حذاء رياضي" , style: TextStyle(fontSize: 20,color: Colors.black ,),),
                            Row(
                              children: [
                                CircleAvatar(backgroundColor: Colors.black,radius: 5),
                                Text("اللون : " , style: TextStyle(fontSize: 20,color: Colors.grey ,),),
                                Text("المقاس : 42" , style: TextStyle(fontSize: 20,color: Colors.grey ,),),
                              ],
                            ),
                            Text("18" , style: TextStyle(fontSize: 20,color: Colors.brown ,)),
                          ],
                        ),

                        Image.asset("images/shose.png" , width: 70,height: 70,),
                        Expanded(
                          child: CheckboxListTile(value:flag3 , onChanged: (value) {
                            setState(() {
                              flag3 = value!;
                            });
                          },
                          ),
                        ),

                      ],
                    )
                ),
                Card(
                    margin: EdgeInsets.fromLTRB(20, 5, 20, 15),
                    color: Colors.white,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Icon(Icons.border_color_outlined ,color: Colors.brown, ),
                            SizedBox(height: 50,),
                            Row(
                              children: [
                                Text("+" , style: TextStyle(fontSize: 25,backgroundColor: Colors.brown,color: Colors.white),),
                                Text("1" , style: TextStyle(fontSize: 20,color: Colors.black , fontWeight: FontWeight.bold),),
                                Text("-" , style: TextStyle(fontSize: 25,backgroundColor: Colors.orange[100],color: Colors.white),),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("حذاء رياضي" , style: TextStyle(fontSize: 20,color: Colors.black ,),),
                            Row(
                              children: [
                                CircleAvatar(backgroundColor: Colors.black,radius: 5),
                                Text("اللون : " , style: TextStyle(fontSize: 20,color: Colors.grey ,),),
                                Text("المقاس : 42" , style: TextStyle(fontSize: 20,color: Colors.grey ,),),
                              ],
                            ),
                            Text("18" , style: TextStyle(fontSize: 20,color: Colors.brown ,)),
                          ],
                        ),

                        Image.asset("images/shose.png" , width: 70,height: 70,),
                        Expanded(
                          child: CheckboxListTile(value:flag4 , onChanged: (value) {
                            setState(() {
                              flag4 = value!;
                            });
                          },
                          ),
                        ),

                      ],
                    )
                ),

                SizedBox(height:100,),

                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("36" , style: TextStyle(fontSize: 20,color: Colors.brown ,),),
                    Text("التكلفة " , style: TextStyle(fontSize: 20,color: Colors.black ,),),
                  ],
                ),
                SizedBox(height: 10,),
                TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      fillColor: Colors.brown,
                      filled: true,
                      hintText: 'شراء',
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
