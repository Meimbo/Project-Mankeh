import 'package:flutter/material.dart';

class AgentDashboard extends StatelessWidget {
  const AgentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: IconButton(
                onPressed: () {
 showModalBottomSheet(isScrollControlled: true
,                    context: context,
                    builder: (context) {
                   return    AgentNotifications();
                    },
                  );

                }, icon: const Icon(Icons.notifications)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {
                  showModalBottomSheet(isScrollControlled: true,isDismissible: true,enableDrag: true,
                    context: context,
                    builder: (context) {
                   return  AgentMessages();
                    },
                  );
                },
                icon: const Icon(Icons.message)),
          )
        ],
        title: const Text(
          'Kumi Agent',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      drawer: const DashboardDrawer(),
      body: const AgentDashboardBody(),
    );
  }
}

class AgentMessages extends StatelessWidget {
  const AgentMessages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
       leading: IconButton(
        icon: const Icon(Icons.keyboard_arrow_left, color: Colors.black),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: const Text(
        'Messages',
        style: TextStyle(color: Colors.black, fontSize: 18),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
     
    
    ),);
  }
}

class AgentNotifications extends StatelessWidget {
  const AgentNotifications({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
       leading: IconButton(
        icon: const Icon(Icons.keyboard_arrow_left, color: Colors.black),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: const Text(
        'Notifications',
        style: TextStyle(color: Colors.black, fontSize: 18),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
     
    
    ),);
  }
}

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        elevation: 5,
        child: Column(
          children: [
            Container(height: 50),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                    height: 150,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(backgroundColor: Colors.black,radius: 40),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Big Makoo',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/payment/home');
                },
                child: const ListTile(
                  shape: Border(
                      bottom: BorderSide(
                    color: Color.fromARGB(255, 200, 196, 196),
                  )),
                  leading: Icon(Icons.location_history, size: 25),
                  title: Text('History', style: TextStyle(fontSize: 15)),
                  trailing: Icon(Icons.keyboard_arrow_right, size: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/payment/home');
                },
                child: const ListTile(
                  shape: Border(
                      bottom: BorderSide(
                    color: Color.fromARGB(255, 200, 196, 196),
                  )),
                  leading: Icon(Icons.payment, size: 25),
                  title: Text('Payment', style: TextStyle(fontSize: 15)),
                  trailing: Icon(Icons.keyboard_arrow_right, size: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/payment/home');
                },
                child: const ListTile(
                  shape: Border(
                      bottom: BorderSide(
                    color: Color.fromARGB(255, 200, 196, 196),
                  )),
                  leading: Icon(Icons.verified_outlined, size: 25),
                  title: Text('Verification', style: TextStyle(fontSize: 15)),
                  trailing: Icon(Icons.keyboard_arrow_right, size: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/payment/home');
                },
                child: const ListTile(
                  shape: Border(
                      bottom: BorderSide(
                    color: Color.fromARGB(255, 200, 196, 196),
                  )),
                  leading: Icon(Icons.settings, size: 25),
                  title: Text('Settings', style: TextStyle(fontSize: 15)),
                  trailing: Icon(Icons.keyboard_arrow_right, size: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, 'home/', (route) => false);
                  },
                  child: Container(
                    child: const Text('Switch to User'),
                  )),
            )
          ],
        ));
  }
}

class AgentDashboardBody extends StatelessWidget {
  const AgentDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView();
  }
}
