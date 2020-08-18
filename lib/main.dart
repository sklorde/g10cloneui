import 'package:carousel_pro/carousel_pro.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(85),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          height: 500,
          child: Padding(
            padding: EdgeInsets.only(left: 119.5, right: 119.5, top: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  'http://www.g10sistemas.com/wp-content/uploads/2019/09/g10-1.png',
                  filterQuality: FilterQuality.high,
                  height: 50,
                  width: 89,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 6, right: 44),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Container(
                          height: 41,
                          width: 146,
                          child: FlatButton(
                            focusColor: Colors.amber,
                            hoverColor: Colors.amber,
                            onPressed: () async {
                              try {
                                Response response =
                                    await Dio().get("http://www.google.com");
                                print(response);
                              } catch (e) {
                                print(e);
                              }
                            },
                            child: Center(
                              child: Text(
                                'G10 SISTEMAS',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          height: 41,
                          width: 123,
                          child: FlatButton(
                            focusColor: Colors.amber,
                            hoverColor: Colors.amber,
                            onPressed: () {},
                            child: Center(
                              child: Text(
                                'SOLUÇÕES',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          height: 41,
                          width: 110,
                          child: FlatButton(
                            focusColor: Colors.amber,
                            hoverColor: Colors.amber,
                            onPressed: () {},
                            child: Center(
                              child: Text(
                                'NOTICÍAS',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          height: 41,
                          width: 112,
                          child: FlatButton(
                            focusColor: Colors.amber,
                            hoverColor: Colors.amber,
                            onPressed: () {},
                            child: Center(
                              child: Text(
                                'CLIENTES',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          height: 41,
                          width: 119,
                          child: FlatButton(
                            focusColor: Colors.amber,
                            hoverColor: Colors.amber,
                            onPressed: () {},
                            child: Center(
                              child: Text(
                                'AFILIADOS',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
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
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 503,
                width: MediaQuery.of(context).size.width,
                child: Carousel(
                  boxFit: BoxFit.cover,
                  autoplay: true,
                  animationCurve: Curves.fastOutSlowIn,
                  animationDuration: Duration(seconds: 3),
                  autoplayDuration: Duration(seconds: 5),
                  dotSize: 0,
                  dotIncreasedColor: Color(0xFFFF335C),
                  dotBgColor: Colors.transparent,
                  dotVerticalPadding: 10.0,
                  showIndicator: true,
                  indicatorBgPadding: 7.0,
                  images: [
                    NetworkImage(
                        'http://www.g10sistemas.com/wp-content/uploads/2020/07/2WS.png'),
                    NetworkImage(
                        'http://www.g10sistemas.com/wp-content/uploads/2020/07/Sem-t%C3%ADtulo-2.png'),
                    NetworkImage(
                        'http://www.g10sistemas.com/wp-content/uploads/2020/07/as.png'),
                    NetworkImage(
                        'http://www.g10sistemas.com/wp-content/uploads/2020/07/FGDFG.png'),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 120, top: 65, right: 104, bottom: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        height: 368,
                        width: 540,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'CLIENTES',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 37,
                                  color: Color.fromRGBO(33, 37, 41, 1),
                                  letterSpacing: -1,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 11),
                                child: Text(
                                  'Junte-se ao nosso grupo de clientes, vem fazer parte da família G10.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18,
                                    color: Color.fromRGBO(33, 37, 41, 1),
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15, right: 15),
                                child: Container(
                                  height: 160,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'http://www.g10sistemas.com/wp-content/uploads/2019/10/clientes-7.png'))),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15, right: 15),
                                child: Container(
                                  height: 160,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'http://www.g10sistemas.com/wp-content/uploads/2019/10/clientes-2.png'))),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15, right: 15),
                                child: Container(
                                  height: 160,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'http://www.g10sistemas.com/wp-content/uploads/2019/10/clientes-12.png'))),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15, bottom: 15),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15, right: 15),
                                child: Container(
                                  height: 160,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'http://www.g10sistemas.com/wp-content/uploads/2019/10/clientes-9.png'))),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15, right: 15),
                                child: Container(
                                  height: 160,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'http://www.g10sistemas.com/wp-content/uploads/2019/10/clientes-10.png'))),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15, right: 15),
                                child: Container(
                                  height: 160,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'http://www.g10sistemas.com/wp-content/uploads/2019/10/clientes-5.png'))),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 915,
                width: MediaQuery.of(context).size.width,
                color: Colors.amber.withOpacity(0.9),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 48, bottom: 10),
                        child: Text(
                          'SOLUÇÕES',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Color.fromRGBO(33, 37, 41, 1),
                            fontSize: 40,
                            letterSpacing: -1,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Conheça aqui algumas das tecnologias que desenvolvemos e oferecemos para sua empresa.',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.9,
                        letterSpacing: 0.6,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 72),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 576,
                              width: 420,
                              color: Color.fromRGBO(0, 183, 15, 1),
                              child: Column(
                                children: [
                                  Container(
                                    height: 360,
                                    width: 420,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            'http://www.g10sistemas.com/wp-content/uploads/2019/10/industrias.jpg'),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(20),
                                    child: Container(
                                      height: 152,
                                      width: 380,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 12, bottom: 12),
                                            child: Text(
                                              'Industria',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 28,
                                                letterSpacing: 0.6,
                                                color: Colors.white,
                                                fontFamily: 'Montserrat',
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Você é dono uma Indústria e sente necessidade de um sistema que te auxilie no dia a dia?',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w200,
                                              fontSize: 18,
                                              letterSpacing: 0.6,
                                              color: Colors.white,
                                              fontFamily: 'Montserrat',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 630,
                              width: 420,
                              color: Color.fromRGBO(240, 78, 50, 1),
                              child: Column(
                                children: [
                                  Container(
                                    height: 360,
                                    width: 420,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            'http://www.g10sistemas.com/wp-content/uploads/2019/10/servicos.jpg'),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(20),
                                    child: Container(
                                      height: 206,
                                      width: 380,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 12, bottom: 12),
                                            child: Text(
                                              'Serviços',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 28,
                                                letterSpacing: 0.6,
                                                color: Colors.white,
                                                fontFamily: 'Montserrat',
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Softwares especializados para negócios de: salão de beleza e spas; imobiliárias e corretores; escolas, cursos e faculdades; construtoras e incorporadoras; sindicatos e associações; lojas de móveis projetados.',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w200,
                                              fontSize: 18,
                                              letterSpacing: 0.6,
                                              color: Colors.white,
                                              fontFamily: 'Montserrat',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 549,
                              width: 420,
                              color: Color.fromRGBO(92, 58, 151, 1),
                              child: Column(
                                children: [
                                  Container(
                                    height: 360,
                                    width: 420,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            'http://www.g10sistemas.com/wp-content/uploads/2019/10/varejo.jpg'),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(20),
                                    child: Container(
                                      height: 149,
                                      width: 380,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 12, bottom: 12),
                                            child: Text(
                                              'Varejo e Atacado',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 28,
                                                letterSpacing: 0.6,
                                                color: Colors.white,
                                                fontFamily: 'Montserrat',
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Atacadistas e varejistas em qualquer segmento.',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w200,
                                              fontSize: 18,
                                              letterSpacing: 0.6,
                                              color: Colors.white,
                                              fontFamily: 'Montserrat',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
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
                height: 698,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(left: 120, right: 120),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 540,
                        width: 402,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'G10 SISTEMAS',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 40,
                                  color: Color.fromRGBO(33, 37, 41, 1),
                                  letterSpacing: -1,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  'Há 10 anos no mercado desenvolvendo soluções em tecnologia que auxiliam na gestão de centenas de empresas em diversos segmentos',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17,
                                    color: Color.fromRGBO(33, 37, 41, 1),
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 16),
                                child: Container(
                                  width: 150,
                                  height: 36,
                                  child: OutlineButton(
                                    textColor: Color.fromRGBO(52, 58, 64, 1),
                                    onPressed: () {},
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(52, 58, 64, 1)),
                                    child: Text(
                                      'Continue lendo',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 17,
                                        letterSpacing: 0.6,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Image.network(
                              'http://www.g10sistemas.com/wp-content/uploads/2019/09/logo-g10-1.png',
                              height: 450,
                              width: 450,
                              filterQuality: FilterQuality.high),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
