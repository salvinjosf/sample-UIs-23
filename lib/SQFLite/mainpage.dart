import 'package:flutter/material.dart';

import 'SQLOp.dart';

void main() {
  runApp( MaterialApp(
    home: MainSQL(),
  ));
}

class MainSQL extends StatefulWidget {
  const MainSQL({Key? key}) : super(key: key);

  @override
  State<MainSQL> createState() => _MainSQLState();
}

class _MainSQLState extends State<MainSQL> {
  bool isLoading = true;

  List<Map<String, dynamic>> note_from_db=[];//to store data from sqlflite

  @override
  void initState() {
    refreshData();
    // TODO: implement initState
    super.initState();
  }

  void refreshData() async{
    final datas = await SQLHelper.readNote();
    setState(() {
      note_from_db = datas; //add datas read from sqflite into empty list
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Notes'),
      ),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : ListView.builder(itemCount:note_from_db.length, itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(note_from_db[index]['title']),
                    subtitle: Text(note_from_db[index]['note']),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                        ],
                      ),
                    ),
                  ),
                );
              }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showForm(null),
        child: Icon(Icons.add),
      ),
    );
  }

  final title = TextEditingController();
  final note = TextEditingController();

  void showForm(int? id) async {
    showModalBottomSheet(
        context: context,
        elevation: 3,
        isScrollControlled: true,
        builder: (context) => Container(
              padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 120),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    controller: title,
                    decoration: InputDecoration(
                        hintText: 'Title', border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: note,
                    decoration: InputDecoration(
                        hintText: 'Enter notes', border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: () async{
                    if (id==null){
                      await addNote();
                    }
                    if (id!=null){
                      await updateNote();
                    }
                    title.text='';
                    note.text='';
                    Navigator.of(context).pop();
                  },
                      child: Text(id==null? 'Add Note' : 'Update Note'))
                ],
              ),
            ));
  }

  updateNote() {}

  Future addNote() async{
    refreshData();
    await SQLHelper.createNote(title.text, note.text);
  }
}
