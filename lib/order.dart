import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFDFA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0 ,
        title: Text("تأكيد الطلب" , style: TextStyle(color: Colors.black ,fontSize: 22 ,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {},icon: Icon(Icons.arrow_forward_ios_outlined),color: Colors.black.withOpacity(0.5)),
        ],
      ) ,
      body: ListView(
        padding: EdgeInsets.only(left: 20,right: 20),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("العنوان" , style: TextStyle(fontSize: 20,color: Colors.grey ,),),
              SizedBox(height: 10,),
              TextField(
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon:Icon(Icons.location_on_outlined),
                    prefixIconColor: Colors.brown,
                    hintText: 'الخرطوم ، المعمورة ، شارع السجانة',
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.grey.withOpacity(0.7),style: BorderStyle.solid)
                    )
                ),
              ),
              SizedBox(height: 10,),
              Text("طرق الدفع" , style: TextStyle(fontSize: 20,color: Colors.grey ,),),
              SizedBox(height: 10,),
              TextField(
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon:Icon(Icons.clean_hands_outlined),
                    prefixIconColor: Colors.brown,
                    hintText: 'الدفع عند الاستلام',
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.grey.withOpacity(0.7),style: BorderStyle.solid)
                    )
                ),
              ),
              SizedBox(height: 5,),
              Text("المنتجات" , style: TextStyle(fontSize: 20,color: Colors.grey ,),),
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
                          Icon(Icons.border_color_outlined ,color: Colors.brown, ),
                          SizedBox(height: 20,),
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
                          Icon(Icons.border_color_outlined ,color: Colors.brown, ),
                          SizedBox(height: 20,),
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
                    ],
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("36" , style: TextStyle(fontSize: 20,color: Colors.grey ,),),
                  Text("تكلفة الشراء" , style: TextStyle(fontSize: 20,color: Colors.grey ,),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("5" , style: TextStyle(fontSize: 20,color: Colors.grey ,),),
                  Text("تكلف الشحن" , style: TextStyle(fontSize: 20,color: Colors.grey ,),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("1.5" , style: TextStyle(fontSize: 20,color: Colors.grey ,),),
                  Text("ضرائب" , style: TextStyle(fontSize: 20,color: Colors.grey ,),),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("42.5" , style: TextStyle(fontSize: 20,color: Colors.black ,fontWeight: FontWeight.bold,),),
                  Text("التكلفة النهائية" , style: TextStyle(fontSize: 20,color: Colors.black ,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 5,),
              Card(
                //margin: EdgeInsets.fromLTRB(20, 5, 20, 15),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("بيانات المستلم" , style: TextStyle(fontSize: 20,color: Colors.grey ,),),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    Text("احمد محمد عبد الرحمن العتيبي" , style: TextStyle(fontSize: 22,color: Colors.black ,fontWeight: FontWeight.bold),),
                    Text("+249755778487" , style: TextStyle(fontSize: 20,color: Colors.grey ,),),
                    SizedBox(height:15,),
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
                    SizedBox(height: 20,)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
