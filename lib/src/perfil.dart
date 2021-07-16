import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:perfil1/src/ProdyServ.dart';

class R extends StatefulWidget {
  @override
  _RegistroState createState() => _RegistroState();
}

void _showOverlay(BuildContext context) {
  Navigator.of(context).push(Producto());
}

class _RegistroState extends State<R> {
  bool switchState = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.indigo[50],
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Expanded(
                      child: Image.network(
                        "https://ak1.picdn.net/shutterstock/videos/9276341/thumb/1.jpg",
                        height: 250,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                        ),
                      ),
                      child: ClipOval(
                        child: Image.network(
                          "https://img.flaticon.com/icons/png/512/1373/1373255.png?size=1200x630f&pad=10,10,10,10&ext=png&bg=FFFFFFFF",
                          height: 90,
                          width: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: _crearInfoP(),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: _crearAcercade(),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: _crearProducto(),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: _crearReputacion(),
              ),
              _crearTextComentarios(),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: _crearContenComentarios(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearInfoP() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Luis Fernando Anguiano Rios',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Inmobiliaria ',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              Text(
                ' | ',
                style: TextStyle(fontSize: 15),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    ' Santiago Queretaro',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _crearAcercade() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Divider(indent: 2),
              Expanded(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Acerca de...',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: FlatButton(
                    onPressed: () {},
                    child: new Text(
                      'Editar descripcion',
                      style: TextStyle(fontSize: 13, color: Colors.blue[900]),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1,
            indent: 0,
            endIndent: 0,
            color: Colors.grey,
          ),
          Divider(
            height: 25,
            thickness: 1.5,
            indent: 0,
            endIndent: 0,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _crearProducto() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Divider(indent: 2),
              Expanded(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Productos o Servicios',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: FlatButton(
                    onPressed: () => _showOverlay(context),
                    child: new Text(
                      'Editar Seccion',
                      style: TextStyle(fontSize: 13, color: Colors.blue[900]),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1,
            indent: 0,
            endIndent: 0,
            color: Colors.grey,
          ),
          Divider(
            height: 10,
            thickness: 1.5,
            indent: 0,
            endIndent: 0,
            color: Colors.white,
          ),
          Image.network(
            'https://datademia.es/wp-content/uploads/2020/03/que-es-python1-1024x576.png',
            height: 95,
            width: 180,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Servicio: Curso Python',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Descripcion: Curso Python',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          Divider(
            thickness: 0,
            indent: 10,
            endIndent: 5,
            color: Colors.grey,
          ),
          Image.network(
            'https://classes.engineering.wustl.edu/cse231/core/images/2/26/Java.png',
            height: 70,
            width: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Servicio: Curso Java',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Descripcion: Curso Java',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearReputacion() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Reputacion',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(
            thickness: 1.5,
            indent: 0,
            endIndent: 0,
            color: Colors.grey,
          ),
          Divider(
            height: 25,
            thickness: 1.5,
            indent: 0,
            endIndent: 0,
            color: Colors.white,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              '3.0',
              style: TextStyle(
                fontSize: 27,
                color: Colors.black,
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 35.0,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 35.0,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 35.0,
              ),
              Icon(
                Icons.star,
                color: Colors.black,
                size: 35.0,
              ),
              Icon(
                Icons.star,
                color: Colors.black,
                size: 35.0,
              ),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: FlatButton(
              onPressed: () {},
              child: new Text(
                'Numero de Evaluaciones 3',
                style: TextStyle(fontSize: 14.5, color: Colors.blue[900]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearTextComentarios() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Comentarios',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(
            thickness: 1.5,
            indent: 0,
            endIndent: 0,
            color: Colors.grey,
          ),
          Divider(
            height: 25,
            thickness: 1.5,
            indent: 0,
            endIndent: 0,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _crearContenComentarios() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        width: 500,
        height: 250,
        child: Container(
          child: Center(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 104),
                      child: Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 28.0,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 28.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 28.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.black,
                      size: 28.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.black,
                      size: 28.0,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Prueba',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Divider(
                  thickness: 0,
                  indent: 10,
                  endIndent: 5,
                  color: Colors.grey,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 104),
                      child: Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 28.0,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 28.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 28.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.black,
                      size: 28.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.black,
                      size: 28.0,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Regular',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Divider(
                  thickness: 0,
                  indent: 10,
                  endIndent: 5,
                  color: Colors.grey,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 104),
                      child: Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 28.0,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 28.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 28.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.black,
                      size: 28.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.black,
                      size: 28.0,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Simple',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Divider(
                  height: 15,
                  thickness: 1.5,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
