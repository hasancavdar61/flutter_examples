import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileCardOther extends StatelessWidget {
  const ProfileCardOther({
    Key? key,
    this.mainIcon,
    this.name,
    this.surname,
    this.departmentIcon,
    this.departmentName,
    this.lastColor,
    this.onTap,
  }) : super(key: key);
// [final] modifier ve type'lar NullSafety ile kullanılmıştır.
  final VoidCallback? onTap;
  final String? mainIcon;
  final String? name;
  final String? surname;
  final IconData? departmentIcon;
  final String? departmentName;
  final Color? lastColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap!,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
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
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              AppLocalizations.of(context)!.assetImageUrl +
                                  mainIcon!),
                        ),
                      ),
                    ),
                    // İsim [name] ile [Text] içerisinde kullanılmaktadır, soyisim [surname] ile [Text] içerisinde kullanılmaktadır.
                    Column(
                      children: [
                        Text(
                          name!,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          surname!,
                        ),
                      ],
                    ),

                    // Departman ikonu [Icon] içerisinde [departmentIcon] şeklinde kullanılmaktadır.
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
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
                color: lastColor!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
