import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var appColors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          alignment: Alignment.topLeft,
                          image: NetworkImage(
                              "https://img.freepik.com/free-vector/modern-technology-background-with-hexagonal-background_1361-1231.jpg?size=626&ext=jpg"))),
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 40.0, left: 16.0, right: 16.0),
                        child: Container(
                          height: 40.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(Icons.menu),
                              Expanded(
                                child: Container(),
                              ),
                              Icon(Icons.movie_filter, color: Colors.black54)
                            ],
                          ),
                        ),
                      ),
                      Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.6,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            expands: false,
                            decoration: InputDecoration(
                              focusColor: Colors.white,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              filled: true,
                              hintText: "@username",
                            ),
                            cursorColor: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.6,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            expands: false,
                            decoration: InputDecoration(
                              focusColor: Colors.white,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              filled: true,
                              hintText: "password",
                            ),
                            cursorColor: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35),
                        child: Container(
                          decoration: ShapeDecoration(
                              shape: Border.all(color: Colors.white)),
                          child: FlatButton(
                            child: Text(
                              "GO !",
                              style: TextStyle(color: Colors.white),
                            ),
                            disabledColor: Colors.white,
                            onPressed: () {},
                            hoverColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(),
                      Container(),
                      FlatButton(
                        child: Container(
                          width: MediaQuery.of(context).size.height * 0.3,
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(
                                    "https://cdn4.iconfinder.com/data/icons/social-media-icons-the-circle-set/48/facebook_circle-512.png"),
                              ),
                              Text(
                                "Login with facebook",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                        onPressed: () {},
                      ),
                      FlatButton(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(10.0)),
                          width: MediaQuery.of(context).size.height * 0.3,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(
                                    "https://www.bh-bims.org/wp-content/uploads/2017/12/twitter-icon-white-e1513102680550.png"),
                              ),
                              Text(
                                "Login with Twitter",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                        onPressed: () {},
                      ),
                      Container(),
                      Column(
                        children: <Widget>[
                          Text("Create An Account"),
                          Padding(
                            padding:
                            const EdgeInsets.only(left: 32.0, right: 32.0),
                            child: Divider(
                              color: Colors.black,
                            ),
                          ),
                          Text("About | Contact")
                        ],
                      ),
                      Container()
                    ],
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: CircleAvatar(
              maxRadius: 30.0,
              child: Icon(
                Icons.keyboard_arrow_down,
                size: 40.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
