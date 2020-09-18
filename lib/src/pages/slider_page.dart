import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider')),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [_createSlider(), _createImage()],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Image Size',
      divisions: 20,
      value: _sliderValue,
      min: 10.0,
      max: 400.0,
      onChanged: (value) {
        setState(() {
          _sliderValue = value;
        });
      },
    );
  }

  Widget _createImage() {
    return Image(
      width: _sliderValue,
      fit: BoxFit.contain,
      image: NetworkImage(
          "https://rihappy.vteximg.com.br/arquivos/ids/411656-800-800/mascara-basica-dc-comics-batman-sunny-2190_Frente.jpg"),
    );
  }
}
