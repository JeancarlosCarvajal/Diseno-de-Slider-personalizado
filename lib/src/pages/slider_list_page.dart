import 'package:flutter/material.dart';

class SliderListPage extends StatelessWidget {
   
  const SliderListPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: _ListaTareas(), 
      body: _Titulo(),  
    );
  }
}

class _Titulo extends StatelessWidget {
  const _Titulo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Text( 'New', style: TextStyle(color: Color(0xff532128), fontSize: 50), ),
        ),

        Stack(

          children: [

            const SizedBox(width: 100),

            Positioned(
              bottom: 8,
              child: Container(
                width: 120,
                height: 8,
                color: const Color(0xfff7cdd5),
              ),
            ),
            
            const Text('List', style: TextStyle(color: Color(0xffd93a30), fontSize: 50, fontWeight: FontWeight.bold)),
 
          ],

        )
      ],
    );
  }
}

class _ListaTareas extends StatelessWidget {
  const _ListaTareas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder( 
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) => _ListItem()
    );
  }
}

class _ListItem extends StatelessWidget {
  const _ListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130, 
      margin: const EdgeInsets.all(10),
      // color: Colors.red,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(30)
      ),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(30),
      child: const Text( 'Jeancarlos', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20) ),
    );
  }
}