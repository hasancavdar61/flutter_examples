import 'package:flutter/material.dart';

class ProfileCardOther extends StatelessWidget {
  const ProfileCardOther({
    Key? key,
    this.profilePhoto,
    this.name,
    this.surname,
    this.departmentIcon,
    this.departmentName,
  }) : super(key: key);
// [final] modifier ve type'lar NullSafety ile kullanılmıştır.
  final String? profilePhoto;
  final String? name;
  final String? surname;
  final IconData? departmentIcon;
  final String? departmentName;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.0),
          bottomRight: Radius.circular(12.0),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      elevation: 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // ? Profil fotoğrafı [profilePhoto] [AssetImage] içerisinde kullanılmıştır.
              children: [
                Container(
                  height: 85,
                  width: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(profilePhoto!),
                    ),
                  ),
                ),
                // İsim [name] ile [Text] içerisinde kullanılmaktadır, soyisim [surname] ile [Text] içerisinde kullanılmaktadır.
                Column(
                  children: [
                    Text(
                      name!,
                    ),
                    Text(
                      surname!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                // Departman ikonu [Icon] içerisinde [departmentIcon] şeklinde kullanılmaktadır.
                SizedBox(
                    height: 50,
                    width: 50,
                    child: Icon(
                      departmentIcon!,
                      size: 35,
                    )),
              ],
            ),
          ),
          // Departman adı [departmentName] şeklinde [Text] içerisinde kullanılmıştır.
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            child: Text(
              departmentName!,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
