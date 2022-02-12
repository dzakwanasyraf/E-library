part of 'pages.dart';

class Comments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: size.height * 0.03, left: size.width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    child: Icon(Icons.arrow_back),
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(
                  top: size.height * 0.03,
                  right: size.width * 0.01,
                  left: size.width * 0.01),
              padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.03, horizontal: size.width * 0.05),
              height: size.height * 1,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20.0)),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      child: Text(
                        'Comments & Reviews',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: size.height * 0.78,
                    child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                  
                            
                            margin: EdgeInsets.only(top: size.height * 0.02),
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(Icons.person),
                                      Text(' Abdullah')
                                    ],
                                  ),
                                ),
                                Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi massa massa, scelerisque nec venenatis a, viverra ac nisi. Nunc sit amet aliquet')
                              ],
                            ),
                          );
                        }),
                  ),
                  Stack(
                    children: [
                      Positioned(
                        child: Container(
                          height: size.height * 0.05,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54,
                                offset: Offset(0, 3),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          margin: EdgeInsets.symmetric(
                              horizontal: 5, vertical: 2.5),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText:
                                  "                          tulis komen",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
