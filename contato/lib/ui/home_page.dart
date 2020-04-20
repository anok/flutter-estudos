import 'package:contato/helpers/contact_helper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ContactHelper helper = ContactHelper();

  @override
  void initState() {
    super.initState();

    // Contact c = Contact();
    // c.name = "Rodrigo Lopes";
    // c.email = "rodrigolaquino@gmail.com";
    // c.phone = "555555";
    // c.img = "img";

    // helper.saveContact(c);
    // helper.getContact(1).then((contact) {
    //   contact.name = "Rodrigo Lopes";
    //   helper.updateContact(contact).then((contact) {
    //     helper.getContact(1).then((contact) {
    //       print(contact);
    //     });
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
