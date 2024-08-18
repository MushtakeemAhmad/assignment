import 'package:flutter/material.dart';
import 'check_score.dart';

class CutOff extends StatefulWidget {
  const CutOff({super.key});

  @override
  State<CutOff> createState() => _CutOffState();
}

class _CutOffState extends State<CutOff> {
  String? _gender;
  String? _state;


  final List<Map<String, dynamic>> data = [
    {
      "title": "General",
      "details": {
        'selected': 1232,
        'outOf': 126432,
        // 'img' : 'assets/images/img.png',
        'icon': const Text('82',style: TextStyle(
            fontWeight: FontWeight.bold
        ),)
      }
    },
    {
      "title": "EWS",
      "details": {
        'selected': 1232,
        'outOf': 126432,
        // 'img' : 'assets/images/img.png',
        'icon': const Text('74',style: TextStyle(
            fontWeight: FontWeight.bold
        ),),
      }
    },
    {
      "title": "OBC",
      "details": {
        'selected': 1232,
        'outOf': 126432,
        // 'img' : 'assets/images/img.png'
        'icon': const Text('78',style: TextStyle(
            fontWeight: FontWeight.bold
        ),)

      }
    },
    {
      "title": "SC",
      "details": {
        'selected': 1232,
        'outOf': 126432,
        // 'img' : 'assets/images/img.png',
        'icon': const Text('63',style: TextStyle(
            fontWeight: FontWeight.bold
        ),)
      }
    },
    {
      "title": "ST",
      "details": {
        'selected': 1232,
        'outOf': 126432,
        // 'img' : 'assets/images/img.png',
        'icon': const Text('54',style: TextStyle(
          fontWeight: FontWeight.bold
        ),)
      }
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(mq.width*.04),
            child: Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: _gender,
                    decoration: InputDecoration(
                      labelText: 'Gender',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                      ),
                    ),
                    hint: const Text('All'),
                    // Hint text displayed when no value is selected
                    items: <String>['All','Male', 'Female', 'Other'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _gender = newValue; // Update the selected value
                      });
                    },
                  ),
                ),
                SizedBox(width: mq.width*.025,),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: _state,
                    decoration: InputDecoration(
                      labelText: 'State',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                      ),
                    ),
                    hint: const Text('All State'),
                    // Hint text displayed when no value is selected
                    items: <String>['All State','Male', 'Female', 'Other'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _gender = newValue; // Update the selected value
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: mq.height*.010,),
          Padding(
            padding: EdgeInsets.only(left:mq.width*.05,right:mq.width*.05),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('1232 ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Text('Selected Male',style: TextStyle(fontSize: 16),)
                  ],
                ),
                Row(
                  children: [
                    Text('Out of ',style: TextStyle(fontSize: 16),),
                    Text('126432',style: TextStyle(fontSize: 20),)
                  ],
                )

              ],
            ),
          ),
          Flexible(
            child: Padding(
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
                      subtitle: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text('${details['selected'].toString()} ',style: const TextStyle(
                                fontWeight: FontWeight.bold
                              ),),
                              const Text('Selected')
                            ],
                          ),
                        Text('out of ${details['outOf'].toString()}')
                        ],
                      ),
                      // trailing: InkWell(
                      //   child: const Icon(Icons.keyboard_arrow_right,color: Colors.blue,),
                      //   onTap: (){
                      //     Navigator.push(context, MaterialPageRoute(builder: (_)=>AdmitCard()));
                      //   },
                      // ),
                    ),
                  );
                },
                itemCount: data.length,
              ),
            ),
          ),
        ],
      )
    );
  }
}
