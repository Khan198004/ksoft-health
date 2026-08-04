import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FA),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //--------------------------------------------------------

              Row(
                children: [

                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.green,
                      size: 34,
                    ),
                  ),

                  const SizedBox(width:16),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [

                        Text(
                          "Доброе утро 👋",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),

                        SizedBox(height:4),

                        Text(
                          "Куаныш",
                          style: TextStyle(
                            fontSize:30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ],
                    ),
                  ),

                  Container(
                    width:50,
                    height:50,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),

                    child: const Icon(Icons.notifications_none),
                  )

                ],
              ),

              const SizedBox(height:30),

              //--------------------------------------------------------

              Container(

                padding: const EdgeInsets.all(24),

                decoration: BoxDecoration(

                  gradient: LinearGradient(

                    colors:[
                      Color(0xff10B981),
                      Color(0xff34D399),
                    ],

                  ),

                  borderRadius: BorderRadius.circular(28),

                ),

                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: const [

                    Text(
                      "Health Score",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize:16,
                      ),
                    ),

                    SizedBox(height:10),

                    Text(
                      "89",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize:64,
                      ),
                    ),

                    SizedBox(height:10),

                    Text(
                      "Отличное состояние здоровья",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:18,
                      ),
                    )

                  ],
                ),
              ),

              const SizedBox(height:30),

              const Text(
                "Сегодня",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:24,
                ),
              ),

              const SizedBox(height:20),

              GridView.count(

                shrinkWrap:true,

                physics:
                    const NeverScrollableScrollPhysics(),

                crossAxisCount:2,

                crossAxisSpacing:16,

                mainAxisSpacing:16,

                childAspectRatio:1.15,

                children:[

                  _HealthCard(
                    title:"Калории",
                    value:"1540",
                    subtitle:"из 2200",
                    icon:Icons.local_fire_department,
                    color:Colors.orange,
                  ),

                  _HealthCard(
                    title:"Вода",
                    value:"1.8 л",
                    subtitle:"из 2.5 л",
                    icon:Icons.water_drop,
                    color:Colors.blue,
                  ),

                  _HealthCard(
                    title:"Шаги",
                    value:"7854",
                    subtitle:"из 10000",
                    icon:Icons.directions_walk,
                    color:Colors.green,
                  ),

                  _HealthCard(
                    title:"Сон",
                    value:"7ч 40м",
                    subtitle:"хорошо",
                    icon:Icons.bedtime,
                    color:Colors.indigo,
                  ),

                ],

              ),

              const SizedBox(height:30),

              Container(

                padding:const EdgeInsets.all(22),

                decoration:BoxDecoration(

                  color:Colors.white,

                  borderRadius:
                  BorderRadius.circular(24),

                ),

                child:Row(

                  children:[

                    Container(

                      width:70,

                      height:70,

                      decoration:BoxDecoration(

                        color:Colors.green.shade50,

                        borderRadius:
                        BorderRadius.circular(18),

                      ),

                      child:const Icon(

                        Icons.smart_toy,

                        color:Colors.green,

                        size:38,

                      ),

                    ),

                    const SizedBox(width:18),

                    Expanded(

                      child:Column(

                        crossAxisAlignment:
                        CrossAxisAlignment.start,

                        children:const[

                          Text(

                            "AI Coach",

                            style:TextStyle(

                              fontSize:22,

                              fontWeight:
                              FontWeight.bold,

                            ),

                          ),

                          SizedBox(height:6),

                          Text(

                            "Сегодня рекомендую увеличить потребление белка на 20 г и выполнить 35 минут кардио.",

                            style:TextStyle(

                              color:Colors.black54,

                              height:1.4,

                            ),

                          ),

                        ],

                      ),

                    )

                  ],

                ),

              ),

              const SizedBox(height:30),

              const Text(

                "Быстрые действия",

                style:TextStyle(

                  fontWeight:FontWeight.bold,

                  fontSize:24,

                ),

              ),

              const SizedBox(height:20),

              GridView.count(

                shrinkWrap:true,

                physics:
                    NeverScrollableScrollPhysics(),

                crossAxisCount:2,

                crossAxisSpacing:16,

                mainAxisSpacing:16,

                children:[

                  _ActionButton(
                    Icons.camera_alt,
                    "Сканировать еду",
                  ),

                  _ActionButton(
                    Icons.restaurant,
                    "Добавить питание",
                  ),

                  _ActionButton(
                    Icons.fitness_center,
                    "Начать тренировку",
                  ),

                  _ActionButton(
                    Icons.chat,
                    "Спросить AI",
                  ),

                ],

              ),

              const SizedBox(height:40),

            ],
          ),
        ),
      ),
    );
  }
}