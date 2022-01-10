import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<ProfileCards> profileCards = [
    ProfileCards(
      doctorName: 'hasan',
      branchName: 'hasan',
      mail: 'mail',
      iconButton: IconButton(
        icon: const Icon(Icons.call),
        onPressed: () {},
      ),
      imageAsset: 'assets/brain.png',
    ),
    ProfileCards(
      doctorName: 'hasan',
      branchName: 'hasan',
      mail: 'mail',
      iconButton: IconButton(
        icon: const Icon(Icons.call),
        onPressed: () {},
      ),
      imageAsset: 'assets/heart.png',
    ),
    ProfileCards(
      doctorName: 'hasan',
      branchName: 'hasan',
      mail: 'mail',
      iconButton: IconButton(
        icon: const Icon(Icons.call),
        onPressed: () {},
      ),
      imageAsset: 'assets/baby.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        alignment: Alignment.center,
        child: ListView.builder(
          itemCount: profileCards.length,
          itemBuilder: (context, index) {
            return Material(
              child: (ListTile(
                leading: Image.asset(
                  profileCards[index].imageAsset.toString(),
                ),
                title: Column(
                  children: [
                    Text(
                      profileCards[index].doctorName.toString(),
                    ),
                    Text(
                      profileCards[index].branchName.toString(),
                    ),
                  ],
                ),
                trailing: profileCards[index].iconButton,
              )),
            );
          },
        ),
      ),
    );
  }
}

class ProfileCards {
  final String? imageAsset;
  final String? doctorName;
  final String? branchName;
  final String? mail;
  final IconButton? iconButton;

  ProfileCards(
      {this.doctorName,
      this.branchName,
      this.imageAsset,
      this.mail,
      this.iconButton});
}
