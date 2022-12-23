import 'package:flutter/material.dart';

class EditBootcampDetail extends StatefulWidget {
  const EditBootcampDetail({super.key});

  @override
  State<EditBootcampDetail> createState() => _EditBootcampDetailState();
}

class _EditBootcampDetailState extends State<EditBootcampDetail> {
  final _namecontroller=TextEditingController();
  final _adresscontroller=TextEditingController();
  final _phonenumbercontroller=TextEditingController();
  final _emailcontroller=TextEditingController();
  final _websitecontrller=TextEditingController();
  final _descriptioncontroller=TextEditingController();
  final _scrollcontrller=ScrollController();

  String isselect='';
  bool  colorchange = false;
  bool housing=false;
  bool jobassistance=false;
  bool jobguarantee=false;
  bool acceptgibill=false;

  List careers=[
    'Select all that apply',
    'Web Description',
    'Mobile Development',
    'UI/UX',
    'Data Sciences',
    'Business',
    'Other',
  ];
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Bootcamp Detail',style: TextStyle(fontSize: size.height*0.025),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xffE05433),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02,top: size.height*0.02),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Add Bootcamp',style: TextStyle(fontSize: size.height*0.025,fontWeight: FontWeight.bold),),
              SizedBox(height: size.height*0.02,),
              Text('Important: You must be affiliated with a bootcamp to add to DevCamper',style: TextStyle(fontSize: size.height*0.020),),
              SizedBox(height: size.height*0.02,),
              Container(
                height: size.height*0.73,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade400),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02,top: size.height*0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Location & Contact',style: TextStyle(fontSize: size.height*0.025,fontWeight: FontWeight.bold),),
                      SizedBox(height: size.height*0.01,),
                      Text('If multiple locations, use the main or largest',style: TextStyle(fontSize: size.height*0.020,color: Colors.grey.shade500),),
                      SizedBox(height: size.height*0.01,),
                      Text('Name',style: TextStyle(fontSize: size.height*0.022,),),
                      SizedBox(height: size.height*0.01,),
                      TextFormField(
                controller: _namecontroller,
                decoration:InputDecoration(
                  hintText: 'Bootcamp Name',
                  contentPadding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                     borderSide: BorderSide(
                    color: Color(0xff495057),
                   ),
                  ),
                  enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                    color: Color(0xff495057),
                   ),
                   borderRadius: BorderRadius.circular(0),
                  ),
                  disabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(0),
                   borderSide: BorderSide(color:  Color(0xff495057)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                    color: Color(0xffE05433).withOpacity(0.4),
                    width: 3,
                   ),
                   borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
              SizedBox(height: size.height*0.02,),
              Text('Address',style:TextStyle(fontSize: size.height*0.022,)),
              SizedBox(height: size.height*0.01,),
              TextFormField(
                controller: _adresscontroller,
                decoration:InputDecoration(
                  hintText: 'Bootcamp Name',
                  contentPadding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                     borderSide: BorderSide(
                    color: Color(0xff495057),
                   ),
                  ),
                  enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                    color: Color(0xff495057),
                   ),
                   borderRadius: BorderRadius.circular(0),
                  ),
                  disabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(0),
                   borderSide: BorderSide(color:  Color(0xff495057)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                    color: Color(0xffE05433).withOpacity(0.4),
                    width: 3,
                   ),
                   borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
              SizedBox(height: size.height*0.005,),
              Text("street, city, state, etc",style: TextStyle(color: Colors.grey.shade500),),
              SizedBox(height: size.height*0.02,),
              Text('Phone Number',style: TextStyle(fontSize: size.height*0.022),),
              SizedBox(height: size.height*0.01,),
               TextFormField(
                controller: _phonenumbercontroller,
                decoration:InputDecoration(
                  hintText: 'Bootcamp Name',
                  contentPadding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                     borderSide: BorderSide(
                    color: Color(0xff495057),
                   ),
                  ),
                  enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                    color: Color(0xff495057),
                   ),
                   borderRadius: BorderRadius.circular(0),
                  ),
                  disabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(0),
                   borderSide: BorderSide(color:  Color(0xff495057)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                    color: Color(0xffE05433).withOpacity(0.4),
                    width: 3,
                   ),
                   borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
              SizedBox(height: size.height*0.02,),
              Text('Email',style: TextStyle(fontSize: size.height*0.022),),
              SizedBox(height: size.height*0.01,),
              TextFormField(
                controller: _emailcontroller,
                decoration:InputDecoration(
                  hintText: 'Bootcamp Name',
                  contentPadding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                     borderSide: BorderSide(
                    color: Color(0xff495057),
                   ),
                  ),
                  enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                    color: Color(0xff495057),
                   ),
                   borderRadius: BorderRadius.circular(0),
                  ),
                  disabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(0),
                   borderSide: BorderSide(color:  Color(0xff495057)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                    color: Color(0xffE05433).withOpacity(0.4),
                    width: 3,
                   ),
                   borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
              SizedBox(height: size.height*0.02,),
              Text('Website',style: TextStyle(fontSize: size.height*0.022),),
              SizedBox(height: size.height*0.01,),
              TextFormField(
                controller: _websitecontrller,
                decoration:InputDecoration(
                  hintText: 'Bootcamp Name',
                  contentPadding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                     borderSide: BorderSide(
                    color: Color(0xff495057),
                   ),
                  ),
                  enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                    color: Color(0xff495057),
                   ),
                   borderRadius: BorderRadius.circular(0),
                  ),
                  disabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(0),
                   borderSide: BorderSide(color:  Color(0xff495057)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                    color: Color(0xffE05433).withOpacity(0.4),
                    width: 3,
                   ),
                   borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height*0.02,),
              Container(
                height: size.height*0.78,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade400),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02,top: size.height*0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Other Info',style: TextStyle(fontSize: size.height*0.025,fontWeight: FontWeight.bold),),
                    SizedBox(height: size.height*0.02,),
                    Text('Description',style: TextStyle(fontSize: size.height*0.022,),),
                    SizedBox(height: size.height*0.01,),
                    TextFormField(
                controller: _descriptioncontroller,
                maxLines: 5,
                maxLength: 500,
                decoration:InputDecoration(
                  hintText: 'Description (What you offer, etc)',
                  contentPadding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02,top: size.height*0.02),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                     borderSide: BorderSide(
                    color: Color(0xff495057),
                   ),
                  ),
                  enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                    color: Color(0xff495057),
                   ),
                   borderRadius: BorderRadius.circular(0),
                  ),
                  disabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(0),
                   borderSide: BorderSide(color:  Color(0xff495057)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                    color: Color(0xffE05433).withOpacity(0.4),
                    width: 3,
                   ),
                   borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
              SizedBox(height: size.height*0.01,),
              Text('Careers',style: TextStyle(fontSize: size.height*0.022),),
              SizedBox(height: size.height*0.01,),
              Container(
                height: size.height*0.2,
                width: size.width*0.92,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color:colorchange==true?Color(0xffE05433).withOpacity(0.4):Color(0xff495057),width: colorchange==true?3:1),
                ),
                child: Scrollbar(
                  controller: _scrollcontrller,
                  thickness: 10,
                  thumbVisibility: true,
                  trackVisibility: true,
                  child: ListView.builder(
                    itemCount:careers.length,
                    itemBuilder: (context, index) {
                    
                      return
                       Padding(
                         padding:EdgeInsets.only(left: size.width*0.02),
                         child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                            SizedBox(height:size.height*0.02,),
                             Container(
                              decoration: BoxDecoration(
                                color:isselect==careers[index]?Colors.blue:Colors.transparent,
                              ),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                             isselect=careers[index];
                             colorchange = true;
                           });
                                },
                                child: Text(careers[index],style: TextStyle(fontSize: size.height*0.022,color: isselect==careers[index]?Colors.white:Colors.black),))),
                           ],
                         ),
                       );
                    },
                  ),
                  ),
              ),
              // SizedBox(
              //   height: size.height*0.02,
              // ),
              SizedBox(height: size.height*0.01,),
              Row(
                children: [
                Checkbox( 
                 materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                 visualDensity: VisualDensity.compact,
                 activeColor:Color(0xffE05433) , 
                   value:housing,  
                   onChanged: (bool? value) {  
                     setState(() {  
                       housing = value!;  
                     });  
                   },  
                 ),  
                 Text('Housing',style: TextStyle(fontSize: size.height*0.022),),
                ],
              ),
              Row(
                children: [
                Checkbox( 
                 materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                 visualDensity: VisualDensity.compact,
                 activeColor:Color(0xffE05433) , 
                   value:jobassistance,  
                   onChanged: (bool? value) {  
                     setState(() {  
                       jobassistance = value!;  
                     });  
                   },  
                 ),  
                 Text('Job Assistance',style: TextStyle(fontSize: size.height*0.022),),
                ],
              ),
              Row(
                children: [
                Checkbox( 
                 materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                 visualDensity: VisualDensity.compact,
                 activeColor:Color(0xffE05433) , 
                   value:jobguarantee,  
                   onChanged: (bool? value) {  
                     setState(() {  
                       jobguarantee = value!;  
                     });  
                   },  
                 ),  
                 Text('Job Guarantee',style: TextStyle(fontSize: size.height*0.022),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Checkbox( 
                 materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                 visualDensity: VisualDensity.compact,
                 activeColor:Color(0xffE05433) , 
                   value:acceptgibill,  
                   onChanged: (bool? value) {  
                     setState(() {  
                       acceptgibill = value!;  
                     });  
                   },  
                 ),  
                 Text('Accepts GI Bill',style: TextStyle(fontSize: size.height*0.022),),
                ],
              ),
              
              SizedBox(height: size.height*0.01,),
              Text('*After you add the bootcamp, you can add the specific courses offered',style: TextStyle(fontSize: size.height*0.020,color: Colors.grey.shade400),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height*0.02,),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff28a745),
                minimumSize: const Size.fromHeight(50),
                shadowColor: Colors.grey,
                foregroundColor: Colors.grey.shade400,
                elevation: 0,
              ),
              child: Text(
                'Submit Bootcamp',
                style: TextStyle(
                    fontSize: size.height * 0.022, color: Colors.white),
              ),
              onPressed: () {
              },
            ),
            SizedBox(height: size.height*0.02,),
            ],
          ),
          
        ),
      ),
    );
  }
}