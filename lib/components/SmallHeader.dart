import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import '../screens/Reminder.dart';
>>>>>>> 52092fb06b347e91ccc14dcf5cce0439e4a6f6fc
import 'TitleText1.dart';

class SmallHeader extends StatelessWidget with PreferredSizeWidget{
  SmallHeader({Key? key, required this.title, required this.icon}) : super(key: key);
  String title;
  Icon icon;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      centerTitle: true,
      title: Padding(
        padding: EdgeInsets.only(top: 10),
        child: TitleText1(text: this.title, fontFamily: 'Inter', fontSize: 25, fontWeight: FontWeight.bold, r: 255, g: 255, b: 255),
      ),
      backgroundColor: Colors.transparent,
<<<<<<< HEAD
      // toolbarHeight: 500,
=======
>>>>>>> 52092fb06b347e91ccc14dcf5cce0439e4a6f6fc
      elevation: 0.0,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25)),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 35, 111, 87),
              Color.fromARGB(255, 35, 111, 87)
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
      ),
<<<<<<< HEAD
=======

>>>>>>> 52092fb06b347e91ccc14dcf5cce0439e4a6f6fc
      leading: IconButton(
        padding: EdgeInsets.only(left: 32, top: 10),
        iconSize: 30,
        alignment: Alignment.center,
        icon: this.icon,
<<<<<<< HEAD
        onPressed: () => {},
=======
        onPressed: () => {
          // Trường hợp là icon back
          if (this.icon.toString() == 'Icon(IconData(U+0E793))') {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Reminder(title: 'Nhắc nhở'))),
          }
          // Trường hợp là icon menu
          else if (this.icon.toString() == 'Icon(IconData(U+0E3DC))') {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Reminder(title: 'Tạo lời nhắc'))),
          }
        },
>>>>>>> 52092fb06b347e91ccc14dcf5cce0439e4a6f6fc
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(72);
<<<<<<< HEAD
}
=======
}
>>>>>>> 52092fb06b347e91ccc14dcf5cce0439e4a6f6fc
