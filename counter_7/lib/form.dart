import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/drawer.dart';

class currentData {
  static List<String> _judul = [];
  static List<String> _nominal = [];
  static List<String> _budgeting = [];

  static String placeholderJudul = '';
  static String placeholderNominal = '';
  static String placeholderBudgeting = 'Pilih';
  static List<String> jenisBudgeting = ['Pilih','Pemasukan', 'Pengeluaran'];

  static void addJudul(String t) {
    _judul.add(t);
  }

  static void addNominal(String a) {
    _nominal.add(a);
  }

  static void addData(String b) {
    _budgeting.add(b);
  }

  static List<String> getJudul() {
    return _judul;
  }

  static List<String> getNominal() {
    return _nominal;
  }

  static List<String> getBudgeting() {
    return _budgeting;
  }

  static int getLength() {
    return _judul.length;
  }
}

class AddBudgetPage extends StatefulWidget {
    const AddBudgetPage({super.key});

    @override
    State<AddBudgetPage> createState() => _AddBudgetPageState();
}

class _AddBudgetPageState extends State<AddBudgetPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController tanggal = TextEditingController();

  currentData data = currentData();

  @override
  void initState() {
    tanggal.text = "";
    super.initState();
  }

  @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Form Budget'),
            ),
             // Menambahkan drawer menu
            drawer: DrawerClass(),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              // Menggunakan padding sebesar 8 pixels
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "what's poppin?",
                                      labelText: "Judul",
                                      // Menambahkan icon agar lebih intuitif
                                      icon: const Icon(Icons.people),
                                      // Menambahkan circular border agar lebih rapi
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                      ),
                                  ),
                                  // Menambahkan behavior saat nama diketik 
                                  onChanged: (String? value) {
                                      setState(() {
                                          currentData.placeholderJudul = value!;
                                          // print(currentData._judul);
                                      });
                                  },
                                  // Validator sebagai validasi form
                                  validator: (String? value) {
                                      if (value == null || value.isEmpty) {
                                          return 'Judul tidak boleh kosong!';
                                      }
                                      return null;
                                    },
                            ),
                          ),

                          Padding(
                              // Menggunakan padding sebesar 8 pixels
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "how much bruv?",
                                      labelText: "Nominal",
                                      // Menambahkan icon agar lebih intuitif
                                      icon: const Icon(Icons.people),
                                      // Menambahkan circular border agar lebih rapi
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                      ),
                                  ),
                                  // Menambahkan behavior saat nama diketik 
                                  onChanged: (String? value) {
                                      setState(() {
                                          currentData.placeholderNominal = value!;
                                      });
                                  },
                                  // Validator sebagai validasi form
                                  validator: (String? value) {
                                      if (value == null || value.isEmpty) {
                                          return 'Nominal tidak boleh kosong!';
                                      }
                                      return null;
                                    },
                            ),
                          ),

                          ListTile(
                          leading: const Icon(Icons.class_),
                          title: const Text(
                              'Pilih Jenis',
                          ),
                          trailing: DropdownButton(
                              value: currentData.placeholderBudgeting,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: currentData.jenisBudgeting.map((String items) {
                              return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                              );
                              }).toList(),
                              onChanged: (String? newValue) {
                              setState(() {
                                  currentData.placeholderBudgeting = newValue!;
                              });
                              },
                          ),
                          ),

                          TextButton(
                          child: const Text(
                            "Simpan",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                                currentData.addJudul(currentData.placeholderJudul);
                                currentData.addNominal(currentData.placeholderNominal);
                                currentData.addData(currentData.placeholderBudgeting);
                                 showDialog(
                                context: context,
                                builder: (context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    elevation: 15,
                                    child: Container(
                                      child: ListView(
                                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                                        shrinkWrap: true,
                                        children: <Widget>[
                                          Center(child: const Text('Informasi Data')),
                                          SizedBox(height: 20),
                                          // TODO: Munculkan informasi yang didapat dari form
                                          Text(
                                            'Data Sudah Ditambahkan',
                                            textAlign: TextAlign.center,
                                            ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text('Kembali'),
                                          ), 
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                                }
                              }
                            ),
                        ],
                  ),
                ),
                ),
            ),
        );
    }
}