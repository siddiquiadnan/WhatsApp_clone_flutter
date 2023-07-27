import 'package:file/menu.dart';
import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});
  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 89, 206, 114),
        )),
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                "Whats App",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              actions: [
                const Icon(Icons.camera_alt_outlined),
                const SizedBox(
                  width: 25,
                ),
                const Icon(Icons.search),
                const SizedBox(
                  width: 5,
                ),
                PopupMenuButton(
                    icon: const Icon(Icons.more_vert_rounded),
                    itemBuilder: (context) => [
                          const PopupMenuItem(
                            value: '1',
                            child: Text('new group'),
                          ),
                          const PopupMenuItem(
                            value: '2',
                            child: Text('new broadcast'),
                          ),
                          const PopupMenuItem(
                            value: '3',
                            child: Text('Linked devices'),
                          ),
                          const PopupMenuItem(
                            value: '4',
                            child: Text('Payment'),
                          ),
                          const PopupMenuItem(
                            value: '5',
                            child: Text('setting'),
                          ),
                        ])
              ],
              bottom: const TabBar(tabs: [
                Tab(
                    child: Icon(
                  Icons.group,
                  size: 30,
                )),
                Tab(
                    child: Text(
                  'Chats',
                  style: TextStyle(fontSize: 17),
                )),
                Tab(
                    child: Text(
                  'Status',
                  style: TextStyle(fontSize: 17),
                )),
                Tab(
                    child: Text(
                  'Calls',
                  style: TextStyle(fontSize: 17),
                )),
              ]),
            ),
            body: TabBarView(children: [
              // const Text('camera'),
              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const CircleAvatar(
                        radius: 24,
                        backgroundImage: NetworkImage(
                            'https://www.shutterstock.com/shutterstock/photos/255118591/display_1500/stock-vector-illustration-of-crowd-of-people-icon-silhouettes-vector-social-icon-flat-style-design-user-group-255118591.jpg'),
                      ),
                      title: const Text('Chat Groups'),
                      subtitle: Text(index % 3 == 0
                          ? "Adnan ,Aman ,raju and more"
                          : 'Abhishek ,Aditya ,rajan and more'),
                      trailing: Icon(
                        index % 2 == 0
                            ? Icons.notifications
                            : Icons.notification_add,
                        color: Colors.teal,
                      ),
                    );
                  }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        radius: 24,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1457449940276-e8deed18bfff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
                      ),
                      title: Text('Adnan siddiqui'),
                      subtitle: Text("where are you ??"),
                      trailing: Text(
                        '6:40 AM',
                        style:
                            TextStyle(color: Color.fromARGB(255, 31, 76, 51)),
                      ),
                    );
                  }),
              //
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        index == 0
                            ? const Text("New Updates",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold))
                            : ListTile(
                                leading: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: const Color.fromARGB(
                                              255, 123, 243, 113),
                                          width: 2)),
                                  child: const CircleAvatar(
                                    radius: 24,
                                    backgroundImage: NetworkImage(
                                        'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
                                  ),
                                ),
                                title: const Text('Adnan siddiqui'),
                                subtitle: const Text("33 minutes"),
                              ),
                      ],
                    );
                  }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const CircleAvatar(
                        radius: 24,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
                      ),
                      title: const Text('Adnan siddiqui'),
                      subtitle: Text(
                          index % 3 == 0 ? "Missed call" : 'july 14 10:25 PM'),
                      trailing: Icon(
                        index % 2 == 0 ? Icons.call : Icons.video_call_rounded,
                        color: Colors.teal,
                      ),
                    );
                  }),
            ]),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const menu()),
                );
              },
              child: const Icon(Icons.chat),
              backgroundColor: Color.fromARGB(255, 89, 206, 114),
            ),
          ),
        ));
  }
}
