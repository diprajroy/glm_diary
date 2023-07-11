import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geology/constants.dart';

class sylleBus extends StatefulWidget {
  static String routeName = 'sylleBus';

  @override
  State<sylleBus> createState() => _sylleBusState();
}

class _sylleBusState extends State<sylleBus> {
  List<List<dynamic>> dataa = [];
  void _loadCSV() async {
    final _rawData = await rootBundle.loadString("assets/images/2nd_year.csv");
    List<List<dynamic>> _listData =
        const CsvToListConverter().convert(_rawData);
    setState(() {
      dataa = _listData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2nd Year Course List"),
      ),
      drawer: SideMenu(),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadCSV,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: dataa.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
            title: Text(dataa[index][0]),
            children: [
              ListTile(
                title: Text(dataa[index][1]),
              ),
            ],
          );
        },
      ),
    );
  }
}

class sylleBus1 extends StatefulWidget {
  static String routeName = 'sylleBus1';

  @override
  State<sylleBus1> createState() => _sylleBus1State();
}

class _sylleBus1State extends State<sylleBus1> {
  List<List<dynamic>> dataa = [];
  void _loadCSV() async {
    final _rawData = await rootBundle.loadString("assets/images/1st_year.csv");
    List<List<dynamic>> _listData =
        const CsvToListConverter().convert(_rawData);
    setState(() {
      dataa = _listData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st Year Course List"),
      ),
      drawer: SideMenu(),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadCSV,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: dataa.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
            title: Text(dataa[index][0]),
            children: [
              ListTile(
                title: Text(dataa[index][1]),
              ),
            ],
          );
        },
      ),
    );
  }
}

class sylleBus3 extends StatefulWidget {
  static String routeName = 'sylleBus3';

  @override
  State<sylleBus3> createState() => _sylleBus3State();
}

class _sylleBus3State extends State<sylleBus3> {
  List<List<dynamic>> dataa = [];
  void _loadCSV() async {
    final _rawData = await rootBundle.loadString("assets/images/3rd_year.csv");
    List<List<dynamic>> _listData =
        const CsvToListConverter().convert(_rawData);
    setState(() {
      dataa = _listData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("3rd Year Course List"),
      ),
      drawer: SideMenu(),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadCSV,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: dataa.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
            title: Text(dataa[index][0]),
            children: [
              ListTile(
                title: Text(dataa[index][1]),
              ),
            ],
          );
        },
      ),
    );
  }
}

class sylleBus4 extends StatefulWidget {
  static String routeName = 'sylleBus4';

  @override
  State<sylleBus4> createState() => _sylleBus4State();
}

class _sylleBus4State extends State<sylleBus4> {
  List<List<dynamic>> dataa = [];
  void _loadCSV() async {
    final _rawData = await rootBundle.loadString("assets/images/4th_year.csv");
    List<List<dynamic>> _listData =
        const CsvToListConverter().convert(_rawData);
    setState(() {
      dataa = _listData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("4th Year Course List"),
      ),
      drawer: SideMenu(),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadCSV,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: dataa.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
            title: Text(dataa[index][0]),
            children: [
              ListTile(
                title: Text(dataa[index][1]),
              ),
            ],
          );
        },
      ),
    );
  }
}
