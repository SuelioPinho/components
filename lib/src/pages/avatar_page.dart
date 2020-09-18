import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(7.0),
            child: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(
                  "https://conteudo.imguol.com.br/blogs/88/files/2018/11/monkeymasterstanlee-1-e1542048422172_rthu.jpg"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 12.0),
            child: CircleAvatar(
              child: Text('SP'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              "https://veja.abril.com.br/wp-content/uploads/2019/11/stan-lee.jpg"),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
