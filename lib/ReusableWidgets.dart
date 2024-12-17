// import 'package:firstproject/BMRestuarant/BMItemsDeals.dart';
import 'package:flutter/material.dart';

// import 'BMRestuarant/BMitems.dart';

Widget FoodItemCard(
  BuildContext context, {
  required String Img,
  required String Title,
  required String Subtitle,
  required VoidCallback onTapped,
}) {
  return GestureDetector(
    onTap: onTapped,
    child: Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.55,
      decoration: BoxDecoration(
        color: Colors.brown.shade300,
        borderRadius: BorderRadius.circular(15),
         boxShadow: [
          BoxShadow(
            color: Colors.black26, // Matches customContainer's shadow
            blurRadius: 6,         // Consistent shadow blur
            offset: Offset(2, 2),  // Consistent shadow offset
          ),
        ],
      ),
      child: Row(children: [
        Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.02)),
        Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width * 0.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              Img,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.02)),
        Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centers content vertically
            crossAxisAlignment:
                CrossAxisAlignment.start, // Aligns text to the left
            children: [
              Text(
                Title,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 4), // Space between title and subtitle
              Text(
                Subtitle,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.brown.shade50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
      ]),
    ),
  );
}

Widget DealsDetailsPg(
  BuildContext context, {
  required String Img,
  required String CntrTitle,
  required String TitleTxt1,
  required String TitleTxt2,
  required String Price,
}) {
  return Column(children: [
    Center(
      child: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.2,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Img),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    ),
    SizedBox(
      height: MediaQuery.of(context).size.height * 0.05,
    ),
    Center(
      child: Center(
        child: Text(
          CntrTitle,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    SizedBox(
      height: MediaQuery.of(context).size.height * 0.05,
    ),
    Column(children: [
      Text(
        TitleTxt1,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.02,
      ),
      Text(
        TitleTxt2,
        style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.02,
      ),
      Text(
        Price,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black54,
        ),
      )
    ]),
  ]);
}

Widget ShowDlgOnElevatedBtn(BuildContext context,
    {required String CntrTitle,
    required String Img,
    required String PhoneNo1,
    required String PhoneNo2}) {
  return AlertDialog(
    title: Container(
      width: 250,
      height: 30,
      decoration: BoxDecoration(
          color: Colors.brown.shade300,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          )),
      child: Center(
        child: Text(
          CntrTitle,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    ),
    content: SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(children: [
        SizedBox(
          height: 10,
        ),
        Container(
            width: MediaQuery.of(context).size.height * 0.1,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(Img),
                fit: BoxFit.cover,
              ),
            )),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              'Contacts:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              height: 10,
            ),
            Icon(Icons.phone),
            SizedBox(
              width: 10,
            ),
            Column(children: [
              Text(PhoneNo1,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                PhoneNo2,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          ],
        ),
      ]),
    ),
    actions: [
      TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                height: 35,
                width: 100,
                color: Colors.red,
                child: Center(
                  child: Text(
                    'cancel',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Container(
                height: 35,
                width: 100,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Call Me',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
            ],
          )),
    ],
  );
}

// Widget customContainer(
//     {required Text child,
//     required Color color,
//     required BorderRadius borderRadius,
//     required double height,
//     required double width,
//      required VoidCallback onTapped,
//      }) {
//   return GestureDetector(
//     onTap:onTapped ,
//     child: Container(
//       height: height,
//       width: width,
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: borderRadius,
//       ),
//       child: Center(child: child),
//     ),
//   );
// }
customContainer({
  required Widget child,
  required Color customcolor,
  required BorderRadius borderRadius,
  required double height,
  required double width,
  required VoidCallback onTapped,
   List<BoxShadow>? boxShadow,
}) {
  return GestureDetector(
    onTap: onTapped,
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: customcolor,
        borderRadius: borderRadius,
         boxShadow: boxShadow ?? [], 
      ),
      child: Center(child: child),
    ),
  );
}


Widget VerticallyCenterTxt(BuildContext context,{required String CenterText}) {
  return Center(
    child: Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
         CenterText ,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.07,
            fontWeight: FontWeight.bold,
            color: Colors.brown.shade300,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}

Widget ALLRestuarantsDeals(
  BuildContext context, {
  required String Img,
  required String CenterTitle,
  required String Title,
  required String Subtitle,
  required VoidCallback onTapped,
}) {
  return Column(children: [
    Padding(padding: EdgeInsets.all(8.0)),
    Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.26,
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
          color: Colors.yellow.shade300,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.brown.shade300,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
            ),
            child: Center(
              child: Text(
                CenterTitle,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          GestureDetector(
            onTap: onTapped,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.17,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.brown.shade300,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(children: [
                Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.1)),
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      Img,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.1)),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        Subtitle,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
              ]),
            ),
          ),
        ]),
      ),
    ),
  ]);
}

Widget ItemsList(
  BuildContext context, {
  required String ItemImg,
  required String ItemName,
  required String Price,
  required String CntrTitle,
  required String Img,
  required String PhoneNo1,
  required String PhoneNo2,
}) {
  return GestureDetector(
    onTap: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Container(
              width: 250,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.brown.shade300,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Center(
                child: Text(
                  CntrTitle,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            content: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.height * 0.1,
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(Img),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Text(
                        'Contacts:',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(Icons.phone),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Text(
                            PhoneNo1,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            PhoneNo2,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Container(
                      height: 35,
                      width: 100,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'cancel',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 40),
                    Container(
                      height: 35,
                      width: 100,
                      color: Colors.green,
                      child: Center(
                        child: Text(
                          'Call Me',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      );
    },
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
          color: Colors.yellow.shade200,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            Container(
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width * 0.12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(ItemImg),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            Text(
              ItemName,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.05),
              child: Text(
                Price,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black87,
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget RestuarantNames(
  BuildContext context, {
  required String Img,
  required String RestuarantNames,
  required String Opening,
  required String Closing,
  required VoidCallback onTapped,
}) {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: onTapped,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
          color: Colors.yellow.shade200,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            Container(
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width * 0.12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(Img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            Text(
              RestuarantNames,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    Opening,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    Closing,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget CustomizeCard(
  BuildContext context, {
  required String Img,
  required String CenterTitle,
  required VoidCallback onTapped,
}) {
  return GestureDetector(
    onTap: onTapped,
    child: Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.35,
        decoration: BoxDecoration(
          color: Colors.yellow.shade300,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.80,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    Img,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.06,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.brown.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  CenterTitle,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}