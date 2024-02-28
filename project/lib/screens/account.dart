import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:project/main.dart';
import 'package:project/utility/my_style.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyStyle().color_5,
      appBar: MyStyle().BuildBar(context, "Account"),
      // buildNewAppBar(context),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child:
                        const Image(image: AssetImage(MyStyle.tProfileImage))),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                MyStyle.tProfileHeading,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                MyStyle.tProfileSubHeading,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    MyStyle.tEditProfile,
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyStyle().color_1,
                      side: BorderSide.none,
                      shape: const StadiumBorder()),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),
              profileMeunuWidget(
                  title: 'Settings',
                  icon: LineAwesomeIcons.cog,
                  onPress: () {}),
              profileMeunuWidget(
                  title: 'Billing Details',
                  icon: LineAwesomeIcons.wallet,
                  onPress: () {}),
              profileMeunuWidget(
                  title: 'User Management',
                  icon: LineAwesomeIcons.user_check,
                  onPress: () {}),
              const Divider(),
              const SizedBox(height: 10),
              profileMeunuWidget(
                  title: 'Information',
                  icon: LineAwesomeIcons.info,
                  onPress: () {}),
              profileMeunuWidget(
                  title: 'Logout',
                  icon: LineAwesomeIcons.alternate_sign_out,
                  onPress: () {}),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildNewAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: MyStyle().color_2,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(LineAwesomeIcons.angle_left),
      ),
      title: Text("Account", style: Theme.of(context).textTheme.headlineLarge),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(LineAwesomeIcons.sun),
        ),
      ],
    );
  }
}

class profileMeunuWidget extends StatelessWidget {
  const profileMeunuWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: ListTile(
        tileColor: MyStyle().color_4,
        shape: RoundedRectangleBorder(
          //<-- SEE HERE
          // side: BorderSide(width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        onTap: onPress,
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: MyStyle().color_1.withOpacity(0.1),
          ),
          child: Icon(icon, color: Colors.black),
        ),
        title: Text(title,
            style:
                Theme.of(context).textTheme.bodyLarge?.apply(color: textColor)),
        trailing: endIcon
            ? Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: const Icon(
                  LineAwesomeIcons.angle_right,
                  size: 10.0,
                  color: Colors.grey,
                ),
              )
            : null,
      ),
    );
  }
}
