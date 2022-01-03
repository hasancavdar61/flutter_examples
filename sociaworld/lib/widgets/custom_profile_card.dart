import 'package:flutter/material.dart';

class CustomProfileCard extends StatelessWidget {
  const CustomProfileCard({
    Key? key,
    this.departmentColor,
    this.profilePhoto,
    this.departmentIconColor,
    this.departmentLabel,
    this.departmentLabelColor,
    this.name,
    this.surname,
    this.departmentName,
  }) : super(key: key);

  final Color? departmentColor;
  final String? profilePhoto;
  final Color? departmentIconColor;
  final String? departmentLabel;
  final Color? departmentLabelColor;
  final String? name;
  final String? surname;
  final String? departmentName;

  @override
  Widget build(BuildContext context) {
    //Profil kartı tasarımı için ana widget [Card] kullanılmıştır.
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),

      //Alt alta sıralama için [Column] kullanılmıştır.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        //Departman rengi, ikonu ve profil fotoğrafının bulunduğu widget [Container]
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            color: departmentColor!,
            width: double.infinity,

            //Departman ikonu ve profil fotoğrafının bulunduğu widget [Stack]
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Container(
                  padding: const EdgeInsets.all(20.0),
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(profilePhoto!),
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),

                // Departman ikonunun bulunduğu widget [Container]
                Container(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 5.0, bottom: 5.0),
                  decoration: BoxDecoration(
                    color: departmentIconColor!,
                    border: Border.all(width: 2.0, color: departmentColor!),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    departmentLabel!,
                    style: TextStyle(
                      color: departmentLabelColor!,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          //İsim, soyisim ve bulunduğu departman adını içeren [ListTile]
          ListTile(
            title: Text(name!),
            subtitle: Text(surname!),
            trailing: Text(departmentName!),
          )
        ],
      ),
    );
  }
}
