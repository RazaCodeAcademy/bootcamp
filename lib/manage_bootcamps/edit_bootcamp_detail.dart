import 'package:devcamper/config.dart';
import 'package:devcamper/controllers/bootcamp/bootcamp.dart';
import 'package:devcamper/homepage.dart';
import 'package:devcamper/manage_bootcamps/manage_bootcamp.dart';
import 'package:devcamper/models/bootcamp/bootcamp_request_model.dart';
import 'package:devcamper/models/bootcamp/bootcamp_response_model.dart';
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';

class EditBootcampDetail extends StatefulWidget {
  final String? bootcampId;
  const EditBootcampDetail({this.bootcampId});

  @override
  State<EditBootcampDetail> createState() => _EditBootcampDetailState();
}

class _EditBootcampDetailState extends State<EditBootcampDetail> {
  final _name = TextEditingController();
  final _address = TextEditingController();
  final _phone = TextEditingController();
  final _email = TextEditingController();
  final _website = TextEditingController();
  final _description = TextEditingController();
  final _careers = TextEditingController();
  final _scroll = ScrollController();

  List <String> isselect = [];
  bool colorchange = false;
  bool housing = false;
  bool jobassistance = false;
  bool jobguarantee = false;
  bool acceptgibill = false;
  bool isAPIcallProcess = false;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();

  List careers = [
    'Web Development',
    'Mobile Development',
    'UI/UX',
    'Data Science',
    'Business',
    'Others',
  ];

  void initState() {
    // TODO: implement initState
    super.initState();
    getBootcamp();
  }

  // List<dynamic>? courses = [];

  BootcampResponseModel? bootcamp;
  void getBootcamp() async {
    bootcamp = await BootcampService.getBootcamp(widget.bootcampId);
    setState(() {
  _name.text = bootcamp!.data!.name.toString();
  _address.text = bootcamp!.data!.location!.city.toString();
  _phone.text = bootcamp!.data!.phone.toString();
  _email.text = bootcamp!.data!.email.toString();
  _website.text = bootcamp!.data!.website.toString();
  _description.text = bootcamp!.data!.description.toString();
  isselect = bootcamp!.data!.careers!.toList();
  housing = bootcamp!.data!.housing!;
  jobassistance = bootcamp!.data!.jobAssistance!;
  jobguarantee = bootcamp!.data!.jobGuarantee!;
  acceptgibill = bootcamp!.data!.acceptGi!;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Bootcamp Detail',
          style: TextStyle(fontSize: size.height * 0.025),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xffE05433),
      ),
      body: ProgressHUD(
        inAsyncCall: isAPIcallProcess,
        opacity: 0.3,
        key: UniqueKey(),
        child: Form(
          key: globalFormKey,
          child: _editBootcampUI(context),
        ),
      ),
    );
  }

  Widget _editBootcampUI(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
          left: size.width * 0.02,
          right: size.width * 0.02,
          top: size.height * 0.02),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add Bootcamp',
              style: TextStyle(
                  fontSize: size.height * 0.025, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              'Important: You must be affiliated with a bootcamp to add to DevCamper',
              style: TextStyle(fontSize: size.height * 0.020),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Container(
              height: size.height * 0.73,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade400),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.02,
                    right: size.width * 0.02,
                    top: size.height * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location & Contact',
                      style: TextStyle(
                          fontSize: size.height * 0.025,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'If multiple locations, use the main or largest',
                      style: TextStyle(
                          fontSize: size.height * 0.020,
                          color: Colors.grey.shade500),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Name',
                      style: TextStyle(
                        fontSize: size.height * 0.022,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    TextFormField(
                      controller: _name,
                      decoration: InputDecoration(
                        hintText: 'Bootcamp Name',
                        contentPadding: EdgeInsets.only(
                            left: size.width * 0.02, right: size.width * 0.02),
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
                          borderSide: BorderSide(color: Color(0xff495057)),
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
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text('Address',
                        style: TextStyle(
                          fontSize: size.height * 0.022,
                        )),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    TextFormField(
                      controller: _address,
                      decoration: InputDecoration(
                        hintText: 'Bootcamp Name',
                        contentPadding: EdgeInsets.only(
                            left: size.width * 0.02, right: size.width * 0.02),
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
                          borderSide: BorderSide(color: Color(0xff495057)),
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
                    SizedBox(
                      height: size.height * 0.005,
                    ),
                    Text(
                      "street, city, state, etc",
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Phone Number',
                      style: TextStyle(fontSize: size.height * 0.022),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    TextFormField(
                      controller: _phone,
                      decoration: InputDecoration(
                        hintText: 'Bootcamp Name',
                        contentPadding: EdgeInsets.only(
                            left: size.width * 0.02, right: size.width * 0.02),
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
                          borderSide: BorderSide(color: Color(0xff495057)),
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
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Email',
                      style: TextStyle(fontSize: size.height * 0.022),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    TextFormField(
                      controller: _email,
                      decoration: InputDecoration(
                        hintText: 'Bootcamp Name',
                        contentPadding: EdgeInsets.only(
                            left: size.width * 0.02, right: size.width * 0.02),
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
                          borderSide: BorderSide(color: Color(0xff495057)),
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
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Website',
                      style: TextStyle(fontSize: size.height * 0.022),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    TextFormField(
                      controller: _website,
                      decoration: InputDecoration(
                        hintText: 'Bootcamp Name',
                        contentPadding: EdgeInsets.only(
                            left: size.width * 0.02, right: size.width * 0.02),
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
                          borderSide: BorderSide(color: Color(0xff495057)),
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
            SizedBox(
              height: size.height * 0.02,
            ),
            Container(
              height: size.height * 0.78,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade400),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.02,
                    right: size.width * 0.02,
                    top: size.height * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Other Info',
                      style: TextStyle(
                          fontSize: size.height * 0.025,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Description',
                      style: TextStyle(
                        fontSize: size.height * 0.022,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    TextFormField(
                      controller: _description,
                      maxLines: 5,
                      maxLength: 500,
                      decoration: InputDecoration(
                        hintText: 'Description (What you offer, etc)',
                        contentPadding: EdgeInsets.only(
                            left: size.width * 0.02,
                            right: size.width * 0.02,
                            top: size.height * 0.02),
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
                          borderSide: BorderSide(color: Color(0xff495057)),
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
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Careers',
                      style: TextStyle(fontSize: size.height * 0.022),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Container(
                      height: size.height * 0.2,
                      width: size.width * 0.92,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: colorchange == true
                                ? Color(0xffE05433).withOpacity(0.4)
                                : Color(0xff495057),
                            width: colorchange == true ? 3 : 1),
                      ),
                      child: Scrollbar(
                        controller: _scroll,
                        thickness: 10,
                        thumbVisibility: true,
                        trackVisibility: true,
                        child: ListView.builder(
                          itemCount: careers.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(left: size.width * 0.02),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Container(
                                      decoration: BoxDecoration(
                                        color: isselect == careers[index]
                                            ? Colors.blue
                                            : Colors.transparent,
                                      ),
                                      child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              if (isselect
                                                  .contains(careers[index])) {
                                                isselect.remove(careers[index]);
                                              } else {
                                                isselect.add(careers[index]);
                                              }
                                              colorchange = true;
                                            });
                                          },
                                          child: Text(
                                            careers[index],
                                            style: TextStyle(
                                                fontSize: size.height * 0.022,
                                                backgroundColor:
                                                    isselect.contains(
                                                            careers[index])
                                                        ? Colors.blue
                                                        : Colors.white),
                                          ))),
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
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          visualDensity: VisualDensity.compact,
                          activeColor: Color(0xffE05433),
                          value: housing,
                          onChanged: (bool? value) {
                            setState(() {
                              housing = value!;
                            });
                          },
                        ),
                        Text(
                          'Housing',
                          style: TextStyle(fontSize: size.height * 0.022),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          visualDensity: VisualDensity.compact,
                          activeColor: Color(0xffE05433),
                          value: jobassistance,
                          onChanged: (bool? value) {
                            setState(() {
                              jobassistance = value!;
                            });
                          },
                        ),
                        Text(
                          'Job Assistance',
                          style: TextStyle(fontSize: size.height * 0.022),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          visualDensity: VisualDensity.compact,
                          activeColor: Color(0xffE05433),
                          value: jobguarantee,
                          onChanged: (bool? value) {
                            setState(() {
                              jobguarantee = value!;
                            });
                          },
                        ),
                        Text(
                          'Job Guarantee',
                          style: TextStyle(fontSize: size.height * 0.022),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          visualDensity: VisualDensity.compact,
                          activeColor: Color(0xffE05433),
                          value: acceptgibill,
                          onChanged: (bool? value) {
                            setState(() {
                              acceptgibill = value!;
                            });
                          },
                        ),
                        Text(
                          'Accepts GI Bill',
                          style: TextStyle(fontSize: size.height * 0.022),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      '*After you add the bootcamp, you can add the specific courses offered',
                      style: TextStyle(
                          fontSize: size.height * 0.020,
                          color: Colors.grey.shade400),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
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
              if (validateAndSave()) {
                setState(() {
                  isAPIcallProcess = true;

                  BootcampRequestModel model =
                      BootcampRequestModel(
                        name: _name.text,
                        address: _address.text,
                        phone: _phone.text,
                        email: _email.text,
                        website: _website.text,
                        description: _description.text,
                        careers: isselect,
                        housing: housing,
                        jobAssistance: jobassistance,
                        jobGuarantee: jobguarantee,
                        acceptGi: acceptgibill,
                      );
                  BootcampService.updateBootcamp(model, widget.bootcampId).then((response) => {
                        setState(() {
                          isAPIcallProcess = false;
                        }),
                        if (response.success == true)
                          {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => ManageBootcapm())))
                          }
                        else
                          {
                            FormHelper.showSimpleAlertDialog(
                                context,
                                Config.appName,
                                "Something went wrong!",
                                "OK", () {
                              Navigator.pop(context);
                            })
                          }
                      });
                });
              }
            },
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      return true;
    }
    return false;
  }
}
