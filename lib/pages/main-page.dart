part of 'pages.dart';

class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    TabController _tabController = TabController(length: 5, vsync: this);
    return Scaffold(
        body: Stack(
      children: [
        // Container(
        //   decoration: BoxDecoration(
        //       image: DecorationImage(
        //           image: AssetImage("assets/icons/main.png"),
        //           fit: BoxFit.scaleDown,
        //           alignment: Alignment.topLeft)),
        // ),
        ListView(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(
                  size.height * 0.02, size.height * 0.05, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: size.height * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 1,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search a Book",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  icon: Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  )),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    width: size.height * 1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange[900]),
                    child: TabBar(
                        controller: _tabController,
                        labelColor: Colors.white,
                        isScrollable: true,
                        indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(color: Colors.white)),
                        unselectedLabelColor: Colors.white,
                        tabs: [
                          Tab(
                            text: "For You",
                          ),
                          Tab(
                            text: "Novel",
                          ),
                          Tab(
                            text: "Top Selling",
                          ),
                          Tab(
                            text: "Top Selling",
                          ),
                          Tab(
                            text: "Top Selling",
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    width: double.maxFinite,
                    height: size.height * 0.9,
                    child: TabBarView(controller: _tabController, children: [
                      ListView.builder(
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return Container(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      right: size.height * 0.01),
                                  child: CarouselSlider(
                                    options: CarouselOptions(
                                        height: 180,
                                        autoPlay: true,
                                        viewportFraction: 1),
                                    items: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            right: size.height * 0.01),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/icons/iklan1.png"),
                                                fit: BoxFit.fill)),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            right: size.height * 0.01),
                                        child: Image.asset(
                                            "assets/icons/iklan2.png"),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/icons/iklan2.png"),
                                                fit: BoxFit.fill)),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            right: size.height * 0.02),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color: Colors.cyan[100]),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      right: size.width * 0.05,
                                      left: size.width * 0.05),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          margin: EdgeInsets.only(bottom: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Text(
                                                  'Karya Lain Dari Penulis',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Container(
                                                  child: Icon(Icons
                                                      .keyboard_arrow_right)),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: size.width * 0.85,
                                        height: size.height * 0.30,
                                        child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: 6,
                                            itemBuilder: (context, index) {
                                              return Container(
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(context,
                                                        MaterialPageRoute(
                                                            builder: (context) {
                                                      return DetailBook();
                                                    }));
                                                  },
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                        right:
                                                            size.width * 0.04),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          height: size.height *
                                                              0.18,
                                                          width:
                                                              size.width * 0.18,
                                                          child: Image.asset(
                                                              "../assets/images/book.png",
                                                              width:
                                                                  size.width),
                                                        ),
                                                        Container(
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                child: Text(
                                                                  'Judul Buku',
                                                                ),
                                                              ),
                                                              Container(
                                                                child: Text(
                                                                  'IDR 15.000',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .grey,
                                                                    fontSize:
                                                                        11,
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
                                              );
                                            }),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      right: size.width * 0.05,
                                      left: size.width * 0.05),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          margin: EdgeInsets.only(bottom: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Text(
                                                  'Karya Lain Dari Penulis',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Container(
                                                  child: Icon(Icons
                                                      .keyboard_arrow_right)),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: size.width * 0.85,
                                        height: size.height * 0.40,
                                        child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: 6,
                                            itemBuilder: (context, index) {
                                              return Container(
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(context,
                                                        MaterialPageRoute(
                                                            builder: (context) {
                                                      return DetailBook();
                                                    }));
                                                  },
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                        right:
                                                            size.width * 0.04),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          height: size.height *
                                                              0.18,
                                                          width:
                                                              size.width * 0.18,
                                                          child: Image.asset(
                                                              "../assets/images/book.png",
                                                              width:
                                                                  size.width),
                                                        ),
                                                        Container(
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                child: Text(
                                                                  'Judul Buku',
                                                                ),
                                                              ),
                                                              Container(
                                                                child: Text(
                                                                  'IDR 15.000',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .grey,
                                                                    fontSize:
                                                                        11,
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
                                              );
                                            }),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ));
                          }),
                      ListView.builder(
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Column(children: [
                                Container(
                                  height: size.height * 0.15,
                                  width: size.height * 1,
                                  child: GFListTile(
                                    avatar: Row(
                                      children: [
                                        Text(
                                          "1",
                                          style: TextStyle(
                                              fontSize: size.height * 0.02,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          width: size.height * 0.02,
                                        ),
                                        Image.asset(
                                          "assets/icons/book2.png",
                                          height: size.height * 0.1,
                                        ),
                                        SizedBox(
                                          width: size.height * 0.02,
                                        )
                                      ],
                                    ),
                                    title: Text(
                                      "Buku Mantep bet sumpah",
                                      style: TextStyle(
                                          fontSize: size.height * 0.02,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    subTitle: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Ebook",
                                          style: TextStyle(
                                              fontSize: size.height * 0.018,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          width: size.height * 0.02,
                                        ),
                                        Text(
                                          "4.6",
                                          style: TextStyle(
                                              fontSize: size.height * 0.018,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.grey,
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ]),
                            );
                          }),
                      ListView.builder(
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Text("Hhalo"),
                            );
                          }),
                      ListView.builder(
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Text("Hhalo"),
                            );
                          }),
                      ListView.builder(
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Text("Hhalo"),
                            );
                          }),
                    ]),
                  )
                ],
              ),
            )
          ],
        )
      ],
    ));
  }
}
