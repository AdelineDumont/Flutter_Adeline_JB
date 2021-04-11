import 'package:flutter/material.dart';

class ProfileThumbnail extends StatelessWidget {
  const ProfileThumbnail({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Profil',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height * .6,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey[400],
                blurRadius: 4,
                offset: Offset(
                  0.0,
                  4,
                ),
              )
            ], color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * .25,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(25)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://wallpapercave.com/wp/wp5268567.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 150, left: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://thumbs.gfycat.com/AggravatingImmaculateKiskadee-small.gif'),
                            radius: 45,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 190, left: 125),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Le binôme : Adeline et Jb',
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.bold)),
                            Text('Lyon & Gex, France',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600)),
                          ],
                        ))
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                  child: Row(
                    children: [
                      Icon(Icons.domain),
                      SizedBox(width: 10),
                      Text('It-Akademy',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                  child: Row(
                    children: [
                      Icon(Icons.work_outline),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Etudiants développement',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                  child: Row(
                    children: [
                      Icon(Icons.mail_outline),
                      SizedBox(width: 10),
                      Text('BinomeDeChoc@it.com',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


