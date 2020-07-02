import 'package:flutter/material.dart';
import 'package:agenda_contatos/helpers/contact_helper.dart';

class ContactPage extends StatefulWidget {
  
  final Contact contact;

  ContactPage({this.contact});

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  
  Contact _editedContact;

  @override
  void initState(){
    super.initState();

    if(widget.contact == null) {
      _editedContact = Contact();      
    }else {
      _editedContact = Contact.fromMap(widget.contact.toMap());
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(_editedContact.name ?? "Novo contato"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.save),
      ),
    );
  }
}