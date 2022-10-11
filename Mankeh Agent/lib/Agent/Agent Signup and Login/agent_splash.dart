import 'package:flutter/material.dart';
import 'package:mankehagent/Agent/Agent%20Signup%20and%20Login/agent_signup.dart';

class AgentSplashScreen extends StatelessWidget {
  const AgentSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: AgentSplashBody(),);
  }
}

class AgentSplashBody extends StatelessWidget {
  const AgentSplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
Container(height: 750,),
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AgentSignupPage()),
              );
          } ,
            child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: const EdgeInsets.all(2),
                color: const Color.fromARGB(255, 5, 29, 62),
                child: const SizedBox(
                  height: 50,
                  child: Center(
                      child: Text(
                    'Be an agent',
                    style: TextStyle(color: Colors.white),
                  )),
                )),
          ),
          
    )],);
  }
}