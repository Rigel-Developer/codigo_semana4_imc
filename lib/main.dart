import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String title = "Welcome";
  double heigth = 160;
  double weigth = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text("Altura: "),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  heigth.toStringAsFixed(1),
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                ),
                const Text(
                  "cm",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Slider(
              value: heigth,
              min: 100,
              max: 200,
              onChanged: (value) {
                heigth = value;
                setState(() {});
              },
            ),
            const Text("Peso: "),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  weigth.toStringAsFixed(1),
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                ),
                const Text(
                  "cm",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Slider(
              value: weigth,
              min: 30,
              max: 150,
              onChanged: (value) {
                weigth = value;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 12.0,
            ),
            SizedBox(
              height: 50.0,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Calcular",
                ),
              ),
            ),
            Expanded(
              child: Card(
                child: Column(
                  children: [
                    const Text(
                      "Resultado",
                    ),
                    const Text(
                      "22.2",
                    ),
                    const Text(
                      "Normal",
                    ),
                    Image.asset(
                      "assets/images/image1.png",
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
