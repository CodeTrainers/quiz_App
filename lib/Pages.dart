import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:newproj/ExamPage.dart';
import 'package:newproj/Models/VideoModel.dart';
// import 'package:webview_flutter/webview_flutter.dart';
// import 'package:webview_flutter_android/webview_flutter_android.dart';
// import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 1.0),
          child: Text("Your Exams", textAlign: TextAlign.start,),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(5),
              height: MediaQuery.of(context).size.width/3.8,
              width:MediaQuery.of(context).size.width/3.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15), //border corner radius
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: const Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(MdiIcons.broadcast, size: 40, color: Colors.redAccent,),
                  const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text("Live Questions", textAlign:TextAlign.start, style: TextStyle(fontSize: 12),),
                  ),
                  const Text("You completed 40%", textAlign:TextAlign.start, style: TextStyle(fontSize: 10)),
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 4),
                      child: LinearProgressIndicator(
                        backgroundColor: Colors.white60,
                        color: Colors.green,
                        value: 1,
                      )
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(5),
              height: MediaQuery.of(context).size.width/3.8,
              width:MediaQuery.of(context).size.width/3.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15), //border corner radius
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: const Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(MdiIcons.timerAlertOutline, size: 40, color: Colors.blueAccent,),
                  const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text("Past Questions", textAlign:TextAlign.start, style: TextStyle(fontSize: 12),),
                  ),
                  const Text("You completed 40%", textAlign:TextAlign.start, style: TextStyle(fontSize: 10)),
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                      child: LinearProgressIndicator(
                        backgroundColor: Colors.white60,
                        color: Colors.green,
                        value: 1,
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 1.0),
          child: Text("Recent Exams", textAlign: TextAlign.start,),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ExamPage(course: "Algebra 101")));
          },
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: const EdgeInsets.all(5),
            height: MediaQuery.of(context).size.width/6,
            width:double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10), //border corner radius
              boxShadow:[
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), //color of shadow
                  spreadRadius: 5, //spread radius
                  blurRadius: 7, // blur radius
                  offset: const Offset(0,2), // changes position of shadow
                ),
              ],
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Algebra 101", textAlign:TextAlign.start, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),),
                      Text("100 Questions", textAlign:TextAlign.start, style: TextStyle(color: Colors.grey, fontSize: 8),),
                    ],
                  ),
                ),
                Icon(MdiIcons.library, size: 40, color: Colors.orangeAccent,)
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => ExamPage(course: "Algebra 101"))),
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: const EdgeInsets.all(5),
            height: MediaQuery.of(context).size.width/6,
            width:double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10), //border corner radius
              boxShadow:[
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), //color of shadow
                  spreadRadius: 5, //spread radius
                  blurRadius: 7, // blur radius
                  offset: const Offset(0,2), // changes position of shadow
                ),
              ],
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Algebra 101", textAlign:TextAlign.start, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),),
                      Text("100 Questions", textAlign:TextAlign.start, style: TextStyle(color: Colors.grey, fontSize: 8),),
                    ],
                  ),
                ),
                Icon(MdiIcons.library, size: 40, color: Colors.teal,)
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => ExamPage(course: "Algebra 101"))),
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: const EdgeInsets.all(5),
            height: MediaQuery.of(context).size.width/6,
            width:double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10), //border corner radius
              boxShadow:[
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), //color of shadow
                  spreadRadius: 5, //spread radius
                  blurRadius: 7, // blur radius
                  offset: const Offset(0,2), // changes position of shadow
                ),
              ],
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Algebra 101", textAlign:TextAlign.start, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),),
                      Text("100 Questions", textAlign:TextAlign.start, style: TextStyle(color: Colors.grey, fontSize: 8),),
                    ],
                  ),
                ),
                Icon(MdiIcons.library, size: 40, color: Colors.cyanAccent,)
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * (2/3),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 0.8,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: bookList.length,
            itemBuilder: (BuildContext ctx, index) {
              return GestureDetector(
                // onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => ReadBooks())),
                child: Container(
                  alignment: Alignment.center,
                  decoration:
                  BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15), //border corner radius
                                boxShadow:[
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5), //color of shadow
                                    spreadRadius: 5, //spread radius
                                    blurRadius: 7, // blur radius
                                    offset: const Offset(0, 2), // changes position of shadow
                                  ),
                                ],
                              ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(child: Center(child: Image.network(bookList[index]["url"]))),
                                Text(bookList[index]["name"], textAlign: TextAlign.center,
                                  style: const TextStyle(fontSize: 8),),
                              ],
                            ),
                  )
                ),
              );

            }),
      ),
    );
  }
}

List videoList = [
  {
    "url": "StzCe2enqlU",
    "desc": "Match Video",
  },
  {
    "url": "StzCe2enqlU",
    "desc": "Match Video",
  },
  {
    "url": "StzCe2enqlU",
    "desc": "Match Video",
  }
];

List bookList = [
  {
    "name": "Modeling Structured Finance Cash Flows With Microsoft Excel",
    "url": "https://picsum.photos/250?image=9",
  },
  {
    "name": "Modeling Structured Finance Cash Flows With Microsoft Excel",
    "url": "https://picsum.photos/250?image=9",
  },
  {
    "name": "Modeling Structured Finance Cash Flows With Microsoft Excel",
    "url": "https://picsum.photos/250?image=9",
  },
  {
    "name": "Modeling Structured Finance Cash Flows With Microsoft Excel",
    "url": "https://picsum.photos/250?image=9",
  },
  {
    "name": "Modeling Structured Finance Cash Flows With Microsoft Excel",
    "url": "https://picsum.photos/250?image=9",
  },
  {
    "name": "Modeling Structured Finance Cash Flows With Microsoft Excel",
    "url": "https://picsum.photos/250?image=9",
  },
];


List desc = ["Page1","Page1","Page1","Page1"];
List<IconData> icons = [
  Icons.dashboard,Icons.dashboard,Icons.dashboard,Icons.dashboard];

List <Color> color = [Colors.orangeAccent, Colors.black38, Colors.amberAccent, Colors.teal];

Future<void> main() async {
  runApp(const VideoPage());
}

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

    @override
  Widget build(BuildContext context) {

      return ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemCount: videoList.length,
          itemBuilder: (context, index) {
            return VideoTile(videoModel: VideoModel(description: videoList[index]["desc"], url: videoList[index]["url"]));
          });
  }
}

class LearningPage extends StatelessWidget {
  const LearningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * (2/3),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 0.8,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: icons.length,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                  alignment: Alignment.center,
                  decoration:
                  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15), //border corner radius
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), //color of shadow
                        spreadRadius: 5, //spread radius
                        blurRadius: 7, // blur radius
                        offset: const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(child: Center(
                          child: Icon(icons[index], color: color[index],size: 40,),
                        )),
                        Text(desc[index], textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 8),),
                      ],
                    ),
                  )
              );

            }),
      ),
    );
  }
}


class ReadBooks extends StatefulWidget {
  const ReadBooks({super.key});

  @override
  State<ReadBooks> createState() => _ReadBooksState();
}

class _ReadBooksState extends State<ReadBooks> {
  late InAppWebViewController inAppWebViewController;
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
                url: Uri.parse("https://flutter.com")
            ),
            onWebViewCreated: (InAppWebViewController controller){
              inAppWebViewController = controller;
            },
            onProgressChanged: (InAppWebViewController controller, int progress){
              setState(() {
                _progress = progress/100;
              });
            },
          )
        ],
      ),
    );
  }

}


