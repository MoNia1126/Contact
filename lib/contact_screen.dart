import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  static const String routeName = 'contact_screen';

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  bool isVisible = true;
  int counter = 0;
  List names = ['', '', ''];
  List phones = ['', '', ''];
  List visible = [false, false, false];

  TextEditingController nameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Contacts Screen'),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Enter Your Name Here",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    suffixIcon: Icon(Icons.edit, color: Color(0xFF42A5F5)),
                    // iconColor: Colors.cyan,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1.0,
                      ),
                    ),
                  )),
              // phoneController.clear();
              SizedBox(height: 20),
              TextField(
                controller: phoneController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter Your Number Here",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  suffixIcon: Icon(Icons.call, color: Color(0xFF42A5F5)),
                  iconColor: Colors.cyan,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Visibility(child:
                    ElevatedButton(
                      onPressed: () {
                        if (counter < 4) {
                          names[counter] = nameController.text;
                          phones[counter] = phoneController.text;
                          visible[counter] = isVisible;
                          counter += 1;
                          // nameController.text="";
                          // phoneController.text="";
                          setState(() {});
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF42A5F5),
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.sizeOf(context).width * 0.4,
                              vertical: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Text(
                        'Add',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // SizedBox(width: 10),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     if (counter == 0) {
                    //       return;
                    //     } else {
                    //       counter -= 1;
                    //       names[counter] = '';
                    //       phones[counter] = '';
                    //       visible[counter] = false;
                    //       setState(() {});
                    //     }
                    //   },
                    //   style: ElevatedButton.styleFrom(
                    //       primary: Color(0xFFEF5350),
                    //       padding: EdgeInsets.symmetric(
                    //           horizontal: 68, vertical: 13),
                    //       shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(20))),
                    //   child: Text(
                    //     'Delete',
                    //     style: TextStyle(
                    //       fontSize: 15,
                    //       color: Colors.black,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Visibility(
                visible: visible[0],
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            height: MediaQuery.sizeOf(context).height * 0.1,
                            width: MediaQuery.sizeOf(context).width * 0.87,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '''Name: ${names[0]}
Phone: ${phones[0]}''',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                    ),
                                    onPressed: () {
                                      if (counter == 0) {
                                        return;
                                      } else {
                                        counter -= 1;
                                        names[counter] = '';
                                        phones[counter] = '';
                                        visible[counter] = false;
                                        setState(() {});
                                      }
                                    },
                                    child: Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                      size: 30,
                                    )),
                              ],
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Visibility(
                  visible: visible[1],
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        height: MediaQuery.sizeOf(context).height * 0.1,
                        width: MediaQuery.sizeOf(context).width * 0.87,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '''Name: ${names[0]}
Phone: ${phones[0]}''',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                ),
                                onPressed: () {
                                  if (counter == 0) {
                                    return;
                                  } else {
                                    counter -= 1;
                                    names[counter] = '';
                                    phones[counter] = '';
                                    visible[counter] = false;
                                    setState(() {});
                                  }
                                },
                                child: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: 30,
                                )),
                          ],
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )),
              Visibility(
                visible: visible[2],
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        height: MediaQuery.sizeOf(context).height * 0.1,
                        width: MediaQuery.sizeOf(context).width * 0.87,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '''Name: ${names[0]}
Phone: ${phones[0]}''',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                              child: Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 30,
                              ),
                              onPressed: () {
                                if (counter == 0) {
                                  return;
                                } else {
                                  counter -= 1;
                                  names[counter] = '';
                                  phones[counter] = '';
                                  visible[counter] = false;
                                  setState(() {});
                                }
                              },
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          color: Colors.white,
                        ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
