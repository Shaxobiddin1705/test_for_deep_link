import 'package:app_for_deep_link/pages/deep_link_open_page.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    _handeDeepLink();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('This is home page', style: TextStyle(fontSize: 28, color: Colors.amber)),
      ),
    );
  }

  Future<void> _handeDeepLink() async {
    final PendingDynamicLinkData? initialLink = await FirebaseDynamicLinks.instance.getInitialLink();
    if(initialLink != null) {
      if(mounted) Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const DeepLinkOpenPage()));
    }
  }

}
