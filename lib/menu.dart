import 'package:flutter/material.dart';

class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: Color.fromARGB(255, 89, 206, 114),
      )),
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Select contact',
            ),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 24,
              ),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert_rounded),
                  itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: '1',
                          child: Text('Invite a friend'),
                        ),
                        const PopupMenuItem(
                          value: '2',
                          child: Text('Contact'),
                        ),
                        const PopupMenuItem(
                          value: '3',
                          child: Text('Refresh'),
                        ),
                        const PopupMenuItem(
                          value: '4',
                          child: Text('Help'),
                        ),
                        const PopupMenuItem(
                          value: '5',
                          child: Text('setting'),
                        ),
                      ])
            ],
          ),
          body: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 5, bottom: 5),
                child: Text("New Contact",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Color.fromARGB(241, 88, 85, 85))),
              ),
              ListTile(
                leading: CircleAvatar(
                    radius: 14,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlSMc3OhLVqDZ1QVwz3JtXjehswkqGLbRXKVnzTJMfHl2vKIvOWkB7vH9mSUMLTYyjFpc&usqp=CAU')),
                title: Text(
                  "New group",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 14,
                  backgroundImage: NetworkImage(
                      'https://static.vecteezy.com/system/resources/previews/013/042/571/original/default-avatar-profile-icon-social-media-user-photo-in-flat-style-vector.jpg'),
                ),
                title: Text(
                  "New Contact",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.qr_code),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 14,
                  backgroundImage: NetworkImage(
                      'https://pngset.com/images/group-of-people-clipart-full-size-clipart-2923732-group-of-people-icon-green-silhouette-sphere-toy-transparent-png-2519533.png'),
                ),
                title: Text(
                  "New Community",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12, top: 5, bottom: 5),
                child: Text("Discover",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Color.fromARGB(241, 88, 85, 85))),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 14,
                  backgroundImage: NetworkImage(
                      'https://www.shutterstock.com/shutterstock/photos/255118591/display_1500/stock-vector-illustration-of-crowd-of-people-icon-silhouettes-vector-social-icon-flat-style-design-user-group-255118591.jpg'),
                ),
                title: Text(
                  "Bussiness",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 5, bottom: 5),
                child: Text("Contact on WhatsApp",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Color.fromARGB(241, 88, 85, 85))),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 14,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
                ),
                title: Text(
                  "person-1",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: Text('Hey there ! I am using WhatsApp'),
                trailing: Text(
                  "Invite",
                  style: TextStyle(color: Colors.teal),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 14,
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
                ),
                title: Text(
                  "+91123456789",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                trailing: Text(
                  "Invite",
                  style: TextStyle(color: Colors.teal),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 14,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1457449940276-e8deed18bfff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
                ),
                title: Text(
                  "person-2",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: Text('urgent call or massage only'),
              ),
            ],
          )),
    );
  }
}
