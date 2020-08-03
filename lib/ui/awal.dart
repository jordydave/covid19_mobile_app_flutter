import 'package:covid19/logic/contact.dart';
import 'package:covid19/logic/dbhelper.dart';
import 'package:covid19/ui/entryform.dart';
import 'package:covid19/ui/search.dart';
import 'package:flutter/material.dart';

import 'package:sqflite/sqflite.dart';

import 'dart:async';

class Awal extends StatefulWidget {
  @override
  AwalState createState() => AwalState();
}

class AwalState extends State<Awal> {
  DbHelper dbHelper = DbHelper();
  int count = 0;
  List<Contact> contactList;

  @override
  Widget build(BuildContext context) {
    if (contactList == null) {
      contactList = List<Contact>();
    }

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: null,
            child: Icon(Icons.add),
            tooltip: 'Tambah Data',
            onPressed: () async {
              var contact = await navigateToEntryForm(context, null);
              if (contact != null) addContact(contact);
            },
          ),
          SizedBox(
            width: 15.0,
          ),
          FloatingActionButton(
            heroTag: null,
            child: Text(
              "Test Covid-19",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 9.0),
            ),
            tooltip: 'Test Covid-19',
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => PertanyaanPage()));
            },
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Data - Data',
          style: TextStyle(
              fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: createListView(),
    );
  }

  Future<Contact> navigateToEntryForm(
      BuildContext context, Contact contact) async {
    var result = await Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) {
      return EntryForm(contact);
    }));
    return result;
  }

  ListView createListView() {
    TextStyle textStyle = Theme.of(context).textTheme.subhead;
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            title: Text(
              this.contactList[index].name,
              style: textStyle,
            ),
            subtitle: Text(this.contactList[index].phone),
            trailing: GestureDetector(
              child: Icon(Icons.delete),
              onTap: () {
                deleteContact(contactList[index]);
              },
            ),
            onTap: () async {
              var contact =
                  await navigateToEntryForm(context, this.contactList[index]);
              if (contact != null) editContact(contact);
            },
          ),
        );
      },
    );
  }

  //buat contact
  void addContact(Contact object) async {
    int result = await dbHelper.insert(object);
    if (result > 0) {
      updateListView();
    }
  }

  //edit contact
  void editContact(Contact object) async {
    int result = await dbHelper.update(object);
    if (result > 0) {
      updateListView();
    }
  }

  //delete contact
  void deleteContact(Contact object) async {
    int result = await dbHelper.delete(object.id);
    if (result > 0) {
      updateListView();
    }
  }

  //update contact
  void updateListView() {
    final Future<Database> dbFuture = dbHelper.initDb();
    dbFuture.then((database) {
      Future<List<Contact>> contactListFuture = dbHelper.getContactList();
      contactListFuture.then((contactList) {
        setState(() {
          this.contactList = contactList;
          this.count = contactList.length;
        });
      });
    });
  }
}
