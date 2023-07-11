import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StudentData extends StatefulWidget {
  static String routeName = 'StudentData';
  @override
  State<StudentData> createState() => _StudentDataState();
}

class _StudentDataState extends State<StudentData> {
  List<List<dynamic>> dataa = [];
  void _loadCSV() async {
    final _rawData = await rootBundle.loadString("assets/images/1st_batch.csv");
    List<List<dynamic>> _listData =
        const CsvToListConverter().convert(_rawData);
    setState(() {
      dataa = _listData;
    });
    print("_listData: $_listData");
    print("_rawData: $_rawData");
    print("dataa: $dataa");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("1st Batch List", textAlign: TextAlign.center),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadCSV,
        child: Icon(Icons.add),
      ),
      // Display the contents from the CSV file
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 50,
            thickness: 2,
          );
        },
        itemCount: dataa.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            leading: Text(
              dataa[index][2].toString(),
              style: TextStyle(fontSize: 15),
            ),
            title: Text(dataa[index][1]),
            subtitle: Text(
              dataa[index][0].toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          );
        },
      ),
    );
  }
}

class StudentData2 extends StatefulWidget {
  static String routeName = 'StudentData2';
  @override
  State<StudentData2> createState() => _StudentData2State();
}

class _StudentData2State extends State<StudentData2> {
  List<List<dynamic>> dataa = [];
  void _loadCSV() async {
    final _rawData = await rootBundle.loadString("assets/images/2nd_batch.csv");
    List<List<dynamic>> _listData =
        const CsvToListConverter().convert(_rawData);
    setState(() {
      dataa = _listData;
    });
    print("_listData: $_listData");
    print("_rawData: $_rawData");
    print("dataa: $dataa");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("2nd Batch List", textAlign: TextAlign.center),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadCSV,
        child: Icon(Icons.add),
      ),
      // Display the contents from the CSV file
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 50,
            thickness: 2,
          );
        },
        itemCount: dataa.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            leading: Text(
              dataa[index][2].toString(),
              style: TextStyle(fontSize: 15),
            ),
            title: Text(dataa[index][1]),
            subtitle: Text(
              dataa[index][0].toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          );
        },
      ),
    );
  }
}

class StudentData3 extends StatefulWidget {
  static String routeName = 'StudentData3';
  @override
  State<StudentData3> createState() => _StudentData3State();
}

class _StudentData3State extends State<StudentData3> {
  List<List<dynamic>> dataa = [];
  void _loadCSV() async {
    final _rawData = await rootBundle.loadString("assets/images/3rd_batch.csv");
    List<List<dynamic>> _listData =
        const CsvToListConverter().convert(_rawData);
    setState(() {
      dataa = _listData;
    });
    print("_listData: $_listData");
    print("_rawData: $_rawData");
    print("dataa: $dataa");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("3rd Batch List", textAlign: TextAlign.center),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadCSV,
        child: Icon(Icons.add),
      ),
      // Display the contents from the CSV file
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 50,
            thickness: 2,
          );
        },
        itemCount: dataa.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            leading: Text(
              dataa[index][2].toString(),
              style: TextStyle(fontSize: 15),
            ),
            title: Text(dataa[index][1]),
            subtitle: Text(
              dataa[index][0].toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          );
        },
      ),
    );
  }
}

class StudentData4 extends StatefulWidget {
  static String routeName = 'StudentData4';
  @override
  State<StudentData4> createState() => _StudentData4State();
}

class _StudentData4State extends State<StudentData4> {
  List<List<dynamic>> dataa = [];
  void _loadCSV() async {
    final _rawData = await rootBundle.loadString("assets/images/4th_batch.csv");
    List<List<dynamic>> _listData =
        const CsvToListConverter().convert(_rawData);
    setState(() {
      dataa = _listData;
    });
    print("_listData: $_listData");
    print("_rawData: $_rawData");
    print("dataa: $dataa");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("4th Batch List", textAlign: TextAlign.center),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadCSV,
        child: Icon(Icons.add),
      ),
      // Display the contents from the CSV file
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 50,
            thickness: 2,
          );
        },
        itemCount: dataa.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            leading: Text(
              dataa[index][2].toString(),
              style: TextStyle(fontSize: 15),
            ),
            title: Text(dataa[index][1]),
            subtitle: Text(
              dataa[index][0].toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          );
        },
      ),
    );
  }
}

class StudentData5 extends StatefulWidget {
  static String routeName = 'StudentData5';
  @override
  State<StudentData5> createState() => _StudentData5State();
}

class _StudentData5State extends State<StudentData5> {
  List<List<dynamic>> dataa = [];
  void _loadCSV() async {
    final _rawData = await rootBundle.loadString("assets/images/5th_batch.csv");
    List<List<dynamic>> _listData =
        const CsvToListConverter().convert(_rawData);
    setState(() {
      dataa = _listData;
    });
    print("_listData: $_listData");
    print("_rawData: $_rawData");
    print("dataa: $dataa");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("5th Batch List", textAlign: TextAlign.center),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadCSV,
        child: Icon(Icons.add),
      ),
      // Display the contents from the CSV file
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 50,
            thickness: 2,
          );
        },
        itemCount: dataa.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            leading: Text(
              dataa[index][2].toString(),
              style: TextStyle(fontSize: 15),
            ),
            title: Text(dataa[index][1]),
            subtitle: Text(
              dataa[index][0].toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          );
        },
      ),
    );
  }
}

class StudentData6 extends StatefulWidget {
  static String routeName = 'StudentData6';
  @override
  State<StudentData6> createState() => _StudentData6State();
}

class _StudentData6State extends State<StudentData6> {
  List<List<dynamic>> dataa = [];
  void _loadCSV() async {
    final _rawData = await rootBundle.loadString("assets/images/6th_batch.csv");
    List<List<dynamic>> _listData =
        const CsvToListConverter().convert(_rawData);
    setState(() {
      dataa = _listData;
    });
    print("_listData: $_listData");
    print("_rawData: $_rawData");
    print("dataa: $dataa");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("6th Batch List", textAlign: TextAlign.center),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadCSV,
        child: Icon(Icons.add),
      ),
      // Display the contents from the CSV file
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 50,
            thickness: 2,
          );
        },
        itemCount: dataa.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            leading: Text(
              dataa[index][2].toString(),
              style: TextStyle(fontSize: 15),
            ),
            title: Text(dataa[index][1]),
            subtitle: Text(
              dataa[index][0].toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          );
        },
      ),
    );
  }
}

class StudentData7 extends StatefulWidget {
  static String routeName = 'StudentData7';
  @override
  State<StudentData7> createState() => _StudentData7State();
}

class _StudentData7State extends State<StudentData7> {
  List<List<dynamic>> dataa = [];
  void _loadCSV() async {
    final _rawData = await rootBundle.loadString("assets/images/7th_batch.csv");
    List<List<dynamic>> _listData =
        const CsvToListConverter().convert(_rawData);
    setState(() {
      dataa = _listData;
    });
    print("_listData: $_listData");
    print("_rawData: $_rawData");
    print("dataa: $dataa");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "7th Batch List",
          textAlign: TextAlign.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadCSV,
        child: Icon(Icons.add),
      ),
      // Display the contents from the CSV file
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 50,
            thickness: 2,
          );
        },
        itemCount: dataa.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            leading: Text(
              dataa[index][2].toString(),
              style: TextStyle(fontSize: 15),
            ),
            title: Text(dataa[index][1]),
            subtitle: Text(
              dataa[index][0].toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          );
        },
      ),
    );
  }
}
