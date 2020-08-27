import 'package:flutter/material.dart';
import './customWidgets.dart';

class ShareLocation extends StatefulWidget {
  @override
  _ShareLocationState createState() => _ShareLocationState();
}

class _ShareLocationState extends State<ShareLocation> {
  final GlobalKey<ScaffoldState> _scfldKey = new GlobalKey<ScaffoldState>();
  double ht;
  double wt;
  @override
  Widget build(BuildContext context) {
    ht=MediaQuery.of(context).size.height;
    wt=MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scfldKey,
      drawer: cstmDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 0.25*ht,
              width: wt,
              child: Card(
                child: InkWell(
                  splashColor: c_divi,
                  onTap: (){
                    _scfldKey.currentState.openDrawer();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: ht*.1),
                    child: ListTile(
                      leading: Container(
                        width: wt*0.25,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.menu),
                            SizedBox(
                              width: wt*0.08,
                            ),
                            FittedBox(
                              fit: BoxFit.contain,
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/images/user.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      title: Padding(
                        padding: EdgeInsets.only(left: wt*0.01),
                        child: Text('Meher Chaitanya'),
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.only(left: wt*0.01),
                        child: Text('19MCME12'),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back!'),
            ),
          ],
        )
      ),
    );
  }
}