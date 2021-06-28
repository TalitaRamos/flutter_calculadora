import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Calculadora Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String number1;
  String number2;
  String operador;
  String resultadoText;
  String operacao;

  @override
  void initState() {
    number1 = "";
    number2 = "";
    operador = "";
    operacao = "Operação: ";
    resultadoText = "Resultado: ";
    super.initState();
  }

  void _capturarNumber1(String number) {
    setState(() {
      this.number1 =  "$number1$number";
      this.operacao = this.operacao + number.toString();
    });
  }

  void _capturarNumber2(String number) {
    setState(() {
      this.number2 = "$number2$number";
      this.operacao = this.operacao + number.toString();
    });
  }

  void _capturarOperador(String operador) {
    setState(() {
      this.operador = operador;
      this.operacao = this.operacao + operador;
    });
  }

  void _zerar() {
    setState(() {
      this.number1 = "";
      this.number2 = "";
      this.operador = "";
      this.operacao = "Operação: ";
      this.resultadoText = "Resultado: ";
    });
  }

  void _calcular() {
    if (number1.isNotEmpty && number2.isNotEmpty && operador.isNotEmpty) {
      switch(operador) {
        case '+':
          int resultado = (int.parse(number1) + int.parse(number2));
          setState(() {
            resultadoText = resultadoText + resultado.toString();
          });
          break;
        case '-':
          int resultado = (int.parse(number1) - int.parse(number2));
          setState(() {
            resultadoText = resultadoText + resultado.toString();
          });
          break;
        case '*':
          int resultado = (int.parse(number1) * int.parse(number2));
          setState(() {
            resultadoText = resultadoText + resultado.toString();
          });
          break;
        case '/':
          double resultado = (int.parse(number1) / int.parse(number2));
          setState(() {
            resultadoText = resultadoText + resultado.toString();
          });
          break;
        case '%':
          int resultado = (int.parse(number1) % int.parse(number2));
          setState(() {
            resultadoText = resultadoText + resultado.toString();
          });
          break;
        default:
          setState(() {
            _zerar();
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Operadores inválidos"),
            ));
          });
          break;
      }
    } else {
      setState(() {
        _zerar();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Operadores inválidos"),
        ));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () =>_capturarNumber1('0'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () =>_capturarNumber1('1'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () =>_capturarNumber1('2'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () =>_capturarNumber1('3'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () =>_capturarNumber1('4'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () =>_capturarNumber1('5'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () =>_capturarNumber1('6'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '6',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () =>_capturarNumber1('7'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '7',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () =>_capturarNumber1('8'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '8',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () =>_capturarNumber1('9'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '9',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _capturarOperador('+'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () => _capturarOperador('-'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () => _capturarOperador('*'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '*',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () => _capturarOperador('/'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '/',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () => _capturarOperador('%'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '%',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _capturarNumber2('0'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () => _capturarNumber2('1'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () => _capturarNumber2('2'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () => _capturarNumber2('3'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () => _capturarNumber2('4'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _capturarNumber2('5'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () => _capturarNumber2('6'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '6',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () => _capturarNumber2('7'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '7',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () => _capturarNumber2('8'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '8',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: () => _capturarNumber2('9'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    '9',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _calcular,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  child: Text(
                    'Calcular',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ElevatedButton(
                  onPressed: _zerar,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  child: Text(
                    'Zerar',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(operacao),
            Text(resultadoText),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
