import '../widgets/colors.dart';
import '../widgets/my_button.dart';
import 'package:flutter/material.dart';

class MyLeaguesScreen extends StatelessWidget {
  const MyLeaguesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(
              builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: CustomColors.lightPrimary,
                    ),
                  )),
          title: const Text(
            'My Leagues',
            style: TextStyle(color: CustomColors.lightPrimary),
          ),
          centerTitle: true,
          backgroundColor: CustomColors.darkPrimary,
        ),
        drawer: const Drawer(),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/table.png',
                    ),
                    title: const Padding(
                      padding: EdgeInsets.only(left: 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Meta League',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Total players: 10',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    subtitle: const Padding(
                      padding: EdgeInsets.only(left: 24.0, top: 15),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomButton(child: 'Leaderboard'),
                        ],
                      ),
                    ),
                  ),
                ),
                const Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
