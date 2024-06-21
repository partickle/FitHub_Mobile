import 'package:fithub/features/settings/ui/widgets/edit_picture.dart';
import 'package:fithub/features/settings/ui/widgets/save_button.dart';
import 'package:flutter/material.dart';

Widget buildMenuItem(String title, Function() onTap) {
  return ListTile(
    title: Text(title),
    onTap: onTap,
  );
}

Widget buildSeparator() {
  return Container(
    height: 1,
    color: const Color(0xFF2C2C2E),
    margin: const EdgeInsets.symmetric(horizontal: 20),
  );
}

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<Widget> _buildMenuItems() {
  return [
    buildSeparator(),
    _buildTextInput("Name"),
    buildSeparator(),
    _buildTextInput("Email"),
    buildSeparator(),
  ];
}

Widget _buildTextInput(String title) {
  TextEditingController controller = TextEditingController();

  if (title == "Name") {
    controller.text = "Sarah Wegan"; 
  } else if (title == "Email") {
    controller.text = "Sarah145@mail.com";
  }

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: title,
        labelStyle: const TextStyle(
          color: Color(0xFFDD0FD3E),
        ),
        enabledBorder: const UnderlineInputBorder(
          // borderSide: BorderSide(color: Color(0xFFDD0FD3E)),
        ),
      ),
      style: const TextStyle(color: Colors.white),
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      onChanged: (value) {
      },
    ),
  );
}

  Widget _buildEditPicture() {
    return EditPicture(
      profileImagePath: 'assets/images/settings/profile_image.png',
      ellipseImagePath: 'assets/images/settings/ellipse_edit.png',
      cameraImagePath: 'assets/images/settings/edit_camera.png',
      profileSize: 150,
      ellipseSize: 70,
      cameraSize: 100,
      onEllipseTap: () {
        print('Ellipse image tapped!');
      },
      onCameraTap: () {
        print('Camera image tapped!');
      },
    );
  }

  Widget buildMenuItem(String title, Function() onTap) {
  return ListTile(
    title: Text(
      title,
      style: TextStyle(
        color: title == 'Name' || title == 'Email' ? const Color(0xFFDD0FD3E) : const Color(0xFFFFFFFF),
      ),
    ),
    onTap: onTap,
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            _buildEditPicture(),
            const SizedBox(height: 46),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _buildMenuItems().length,
              itemBuilder: (context, index) {
                return _buildMenuItems()[index];
              },
              separatorBuilder: (context, index) {
                if (index < _buildMenuItems().length - 1) {
                  return buildSeparator();
                } else {
                  return const SizedBox();
                }
              },
            ),
            const SaveButton(),
          ],
        ),
      ),
    );
  }
}
