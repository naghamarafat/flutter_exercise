import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  int selectedIndex = 0;
  PageController controller = PageController(initialPage: 0);
  List<AssetImage> image = [AssetImage("images/img.png"),AssetImage("images/img.png"),AssetImage("images/img.png"),AssetImage("images/img.png"),];
  List<AssetImage> images = [AssetImage("images/hate.png"),AssetImage("images/shose.png"),AssetImage("images/short.png"),AssetImage("images/t_shert.png"),];
  List<String> s = ["حذاء رياضي","حذاء رياضي","شرط قطن","بلوزة موضة "];
  List<String> n = ["كاب","نايكي","قوتونيل","اورجينال"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFDFA),
      // extendBodyBehindAppBar:true ,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0 ,
        title: Text("أهلا و سهلا" , style: TextStyle(color: Colors.black ,fontSize: 22 ,fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading:Icon(
            Icons.dashboard_outlined,
            color: Colors.black.withOpacity(0.5),
        ),
        actions: [
          IconButton(onPressed: () {},icon: Icon(Icons.notifications_none),color: Colors.black.withOpacity(0.5)),
        ],
      ) ,
      body:
        Column(
          children: [
            SizedBox(height: 20,),
            TextField(
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                suffixIcon:Icon(Icons.search),
                hintText: 'ابحث عن تيشرتات و قمصان',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.grey.withOpacity(0.7),style: BorderStyle.solid)
                )
              ),
            ),
            SizedBox(
              height: 190,
              child: Expanded(
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                  itemCount: image.length,
                    itemBuilder: (context, index) {
                      return Container(
                     margin: EdgeInsets.only(left: 20,right: 20),
                        decoration: BoxDecoration(
                          image:DecorationImage(image: image[index]),

                        ),
                      );
                    },),
              ),
            ),
            Center(
              child: SizedBox(
                height: 60,
                child: Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                  width: 500,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),border: Border.all(style: BorderStyle.solid , color: Colors.black12)),
                  child: DefaultTabController(length: 3, child: TabBar(
                    onTap:(value) {
                      setState(() {
                        selectedIndex = value;
                      });
                    },
                   indicator: BoxDecoration(borderRadius: BorderRadius.circular(40),border: Border.all(style: BorderStyle.solid),color: Colors.brown),
                   indicatorColor: Colors.brown,

                    tabs: [
                      Container(child: Text("وصل حديثا",style: TextStyle(fontSize: 20 , color: selectedIndex == 0?Colors.white:Colors.grey, ))),
                      Container(child: Text("الأكثر مبيعا",style: TextStyle(fontSize: 20 ,color: selectedIndex == 1?Colors.white:Colors.grey, ) )),
                      Container(child: Text("العروض",style: TextStyle(fontSize: 20 , color: selectedIndex == 2?Colors.white:Colors.grey, ) )),
                    ],
                  )),
                ),
              ),
            ),

            Expanded(
              child: GridView.builder(
                  itemCount: s.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (context,index){
                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image(image: images[index] , width: 100, height: 100 ,)
                        ),
                        Positioned(
                            right:20,
                            top:20,
                            child:Icon(Icons.favorite_border,size:30)),
                        Positioned(
                          right: 20,
                            top: 70,
                            child: Container(
                              child: Row(
                                children: [
                                   Text("ترند",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ),),
                                  Icon(Icons.local_fire_department_outlined,color: Colors.orange ,),
                                ],
                              ),
                              decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.circular(30)),
                            )),
                        Positioned(
                            top:110,
                            right:20,
                            child: Container(
                              height: 40,
                              color:Colors.white,
                              child: Text(s[index],style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                //backgroundColor: Colors.amberAccent,
                              ),textAlign: TextAlign.right,),
                            )
                        ),
                        Positioned(
                            top:135,
                            right:20,
                            child: Container(
                              color:Colors.white,
                              child: Text(n[index],style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                //backgroundColor: Colors.amberAccent,
                              ),textAlign: TextAlign.right,),
                            )
                        ),
                        Positioned(
                          top:170,
                          right:20,
                          child: Row(
                        children: [
                        Text("18",style: TextStyle(color: Colors.brown , fontSize: 18),),
                        Text("20", style: TextStyle(decoration: TextDecoration.lineThrough , color: Colors.black38,fontSize: 18),),
                      ],
                    ),),
                        Positioned(
                          top:175,
                          left:20,
                          child: Container(
                            child: Row(
                              children: [
                                Icon(Icons.add_shopping_cart_outlined ,size: 25,),
                                
                              ],
                            ),
                            decoration:BoxDecoration(color: Colors.grey[350],borderRadius: BorderRadius.circular(30),),
                            padding: EdgeInsets.all(5),
                          ),
                        ),

                      ],
                    );

                    //   Card(
                    //   color: Colors.white,
                    //   margin: EdgeInsets.all(2),
                    //   elevation:0 ,
                    //   shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular((5)),
                    //       side: BorderSide(
                    //           color: Colors.blue,
                    //           width: 1,
                    //           style: BorderStyle.solid
                    //       )
                    //   ),
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //
                    //     children: [
                    //       Image(image: images[index] ,width: 1,height: 1,),
                    //      // Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSW1p196FdFnjs53-qod0Iv6TbQwPWf3M4yZTRbJHH9KQ&s",width: 180,height: 130,),
                    //       Text(s[index], style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500), textDirection: TextDirection.rtl),
                    //       Container(
                    //         width: 200,
                    //
                    //         color: Color(0xff0E1B8F),
                    //         alignment: AlignmentDirectional.center,
                    //         child: Text(n[index],style: TextStyle(color: Colors.white,fontSize: 20)),
                    //       ),
                    //     ],
                    //   ),
                    // );
                  }),
            ),








            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.all(2),
            //       child: CircleAvatar(
            //         radius: 5,
            //         backgroundColor: selectedIndex == 0?Colors.black:Colors.grey,
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(2),
            //       child: CircleAvatar(
            //         radius: 5,
            //         backgroundColor: selectedIndex == 1?Colors.black:Colors.grey,
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(2),
            //       child: CircleAvatar(
            //         radius: 5,
            //         backgroundColor: selectedIndex == 2?Colors.black:Colors.grey,
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(2),
            //       child: CircleAvatar(
            //         radius: 5,
            //         backgroundColor: selectedIndex == 2?Colors.black:Colors.grey,
            //       ),
            //     ),
            //   ],
            // ),


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
