part of 'pages.dart';

class DetailBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: BackgroundDetail(
        child: ListView(
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
                  top: size.height * 0.01,
                  right: size.width * 0.025,
                  left: size.width * 0.05),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    height: size.height * 0.25,
                    width: size.width * 0.25,
                    child: Image.asset("../assets/images/book.png",
                        width: size.width),
                  ),
                  Container(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Cara Bersemayam diatas langit tanpa terjatuh',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Nama Penulis',
                          ),
                        ),
                        Container(
                          child: Text(
                            'Nama Penerbit',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: size.height * 0.015,
                  right: size.width * 0.05,
                  left: size.width * 0.05),
              height: size.height * 0.09,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            height: 40,
                            width: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 0),
                                  padding: EdgeInsets.all(0),
                                  child: Text(
                                    '4.9',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 0),
                                  padding: EdgeInsets.all(0),
                                  width: 25,
                                  child: Image.asset(
                                    "../assets/images/star.png",
                                  ),
                                ),
                              ],
                            )),
                        Text('123 reviews'),
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          child: Image.asset("../assets/images/bookmark.png",
                              width: size.width),
                        ),
                        Text('ditandai'),
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '205',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text('Halaman')
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Kalangan ',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text('Semua'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: size.height * 0.035,
                  right: size.width * 0.05,
                  left: size.width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: size.height * 0.04,
                      width: size.width * 0.4,
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
                      child: Center(
                        child: Text('Preview'),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) {
                      //   return LoginScreen();
                      // }));
                    },
                    child: Container(
                      height: size.height * 0.04,
                      width: size.width * 0.4,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent[400],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            offset: Offset(0, 3),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Beli Rp.125.000',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: size.height * 0.035,
                  right: size.width * 0.05,
                  left: size.width * 0.05),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'Tentang Buku',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(child: Icon(Icons.arrow_forward)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi massa massa, scelerisque nec venenatis a, viverra ac nisi. Nunc sit amet aliquet'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    alignment: Alignment.centerLeft,
                    child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        alignment: Alignment.center,
                        height: size.height * 0.04,
                        width: size.width * 0.4,
                        decoration: new BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(80.0),
                            color: Colors.white),
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          "Genre",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: size.height * 0.035,
                  right: size.width * 0.05,
                  left: size.width * 0.05),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Comments();
                      }));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'Rating & Review',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(child: Icon(Icons.arrow_forward)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    height: size.height * 0.2,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: ListView(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  '4.9',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: 25,
                                child: Image.asset(
                                  "../assets/images/star.png",
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
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
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: size.height * 0.035,
                  right: size.width * 0.05,
                  left: size.width * 0.05),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'Karya Lain Dari Penulis',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(child: Icon(Icons.keyboard_arrow_right)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.85,
                    height: size.height * 0.30,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              child: Container(
                                margin:
                                    EdgeInsets.only(right: size.width * 0.04),
                                child: Column(
                                  children: [
                                    Container(
                                      height: size.height * 0.18,
                                      width: size.width * 0.18,
                                      child: Image.asset(
                                          "../assets/images/book.png",
                                          width: size.width),
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text(
                                              'Judul Buku',
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              'IDR 15.000',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              child: Container(
                                margin:
                                    EdgeInsets.only(right: size.width * 0.04),
                                child: Column(
                                  children: [
                                    Container(
                                      height: size.height * 0.18,
                                      width: size.width * 0.18,
                                      child: Image.asset(
                                          "../assets/images/book.png",
                                          width: size.width),
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text(
                                              'Judul Buku',
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              'IDR 15.000',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              child: Container(
                                margin:
                                    EdgeInsets.only(right: size.width * 0.04),
                                child: Column(
                                  children: [
                                    Container(
                                      height: size.height * 0.18,
                                      width: size.width * 0.18,
                                      child: Image.asset(
                                          "../assets/images/book.png",
                                          width: size.width),
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text(
                                              'Judul Buku',
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              'IDR 15.000',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              child: Container(
                                margin:
                                    EdgeInsets.only(right: size.width * 0.04),
                                child: Column(
                                  children: [
                                    Container(
                                      height: size.height * 0.18,
                                      width: size.width * 0.18,
                                      child: Image.asset(
                                          "../assets/images/book.png",
                                          width: size.width),
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text(
                                              'Judul Buku',
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              'IDR 15.000',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              child: Container(
                                margin:
                                    EdgeInsets.only(right: size.width * 0.04),
                                child: Column(
                                  children: [
                                    Container(
                                      height: size.height * 0.18,
                                      width: size.width * 0.18,
                                      child: Image.asset(
                                          "../assets/images/book.png",
                                          width: size.width),
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text(
                                              'Judul Buku',
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              'IDR 15.000',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
