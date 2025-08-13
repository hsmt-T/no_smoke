import 'package:flutter/material.dart';

class TopScreen extends StatefulWidget {
  const TopScreen({super.key});

  @override
  State<TopScreen> createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  int _selectIndex = 1;

  static final List<Widget> _widgetOptions = <Widget>[
    const Center(child: Text('0')),
    const TopPage(),
    const Center(child: Text('2')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.edit_note), label: '記録'),
          BottomNavigationBarItem(icon: Icon(Icons.smoking_rooms), label: 'TOP'),
          BottomNavigationBarItem(icon: Icon(Icons.maps_ugc), label: '共有'),
        ],
        currentIndex: _selectIndex,
        onTap: _onItemTapped,
        backgroundColor: const Color(0xFF212121),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[600],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
        children: [
          SizedBox(height: 150),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'today',
                style: TextStyle(
                  color: Color(0xFFE74545),
                  fontSize: 60
                  
                ),
              ),
              SizedBox(width: 24),
              Text(':',style: TextStyle(fontSize: 35,color: Color(0xFFE74545)),),
              SizedBox(width: 25),

              Text('6',style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 60,
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Average',
                style: TextStyle(
                  color: Color.fromARGB(255, 231, 231, 231),
                  fontSize: 23
                ),
              ),
              SizedBox(width: 10),
              Text(':',style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 255, 255, 255)),),
              SizedBox(width: 20),

              Text('7',style: TextStyle(
                color: Color(0xFFE74545),
                fontSize: 23,
                ),),
            ],
          ),
          const SizedBox(height: 135),

          // Icon(Icons.smoke_free, size: 150, color: Colors.grey[800]),

          Image.asset('assets/images/tobacco.png'),
          const SizedBox(height: 135),
          SizedBox(
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFF742424)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                minimumSize: MaterialStateProperty.all(Size(300, 65)),
              ),
              child: const Text(
                '喫煙',
                style: TextStyle(color: Colors.white, fontSize: 30)),
              ),
            ),
        ],
      ),
      ),
      // padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
    );
  }
}
