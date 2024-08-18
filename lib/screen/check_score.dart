import 'package:assignment/screen/admit_card.dart';
import 'package:flutter/material.dart';
late Size mq;
class CheckScore extends StatefulWidget {
  const CheckScore({super.key});

  @override
  State<CheckScore> createState() => _CheckScoreState();
}

class _CheckScoreState extends State<CheckScore> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    final List<Map<String, dynamic>> data = [
      {
        "title": "Delhi Police Constable 2023",
        "details": {
          'ger': 76,
          'OBC': 70,
          'SC': 55,
          'ST': 49,
          // 'img' : 'assets/images/img.png',
          'icon': const Icon(Icons.bar_chart)
        }
      },
      {
        "title": "Delhi Police Constable",
        "details": {
          'ger': 76,
          'OBC': 70,
          'SC': 55,
          'ST': 49,
          // 'img' : 'assets/images/img.png',
          'icon': const Icon(Icons.menu_book_outlined)
        }
      },
      {
        "title": "Delhi Police Constable",
        "details": {
          'date': 'Start - 12/05/2024,10:00am',
          // 'img' : 'assets/images/img.png'
          'icon': const Icon(Icons.mode_edit_sharp)

        }
      },
      {
        "title": "Delhi Police Constable",
        "details": {
          'date': 'Closed - 15/05/2024,12:00pm',
          // 'img' : 'assets/images/img.png',
          'icon': const Icon(Icons.pie_chart)
        }
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Check Score',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: mq.height*0.020),
        child: ListView.builder(
          itemBuilder: (context, index) {
            final title = data[index]['title'];
            final details = data[index]['details'];
            return Card(
              margin:  EdgeInsets.symmetric(vertical: mq.height*.010,horizontal: mq.width*.030),
              elevation: 8,
              // shape: const RoundedRectangleBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(20))
              // ),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  // backgroundImage: AssetImage(details['img']),
                  child: details['icon'],

                ),
                title: Text(title,style: const TextStyle(fontWeight: FontWeight.bold),),
                subtitle: details['OBC'] == null
                    ? Text(details['date'].toString())
                    : Text(
                        "Ger-${details['ger']} | Ger-${details['OBC']} | SC-${details['SC']} | ST-${details['ST']}"),
                trailing: InkWell(
                    child: const Icon(Icons.keyboard_arrow_right,color: Colors.blue,),
                onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>const AdmitCard()));
              },
                ),
              ),
            );
          },
          itemCount: data.length,
        ),
      ),
    );
  }
}
