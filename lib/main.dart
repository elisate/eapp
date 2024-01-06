import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Baseapp(),
      routes: <String, WidgetBuilder>{
        '/loginuser': (context) => Userlogin(),
        '/sign': (context) => Guestlogin(),
        '/loggedpage': (context) => Userpage(),
        '/setting': (context) => Setting(),
        '/sp': (context) => Spark(),
        '/head': (context) => Headset(),
        '/wat': (context) => Watch(),
        '/air': (context) => Aitel(),
        '/buyy': (context) => Buy(),
        '/prof': (context) => Profile(),
      },
    );
  }
}

class Baseapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.shopify,
          color: Colors.green,
          size: 30,
        ),
        title: Text(
          'Welcome to eapp',
          style: TextStyle(color: Colors.green),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/watch.jpg'),
            fit: BoxFit.cover,
          )),
          child: Center(
            child: Column(
              children: [
                Text(
                  'welcome to eapp',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, left: 37),
                  child: Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/loginuser');
                          },
                          style: ElevatedButton.styleFrom(
                            primary:
                                Colors.green, // Background color of the button
                            onPrimary: Colors.white,
                          ),
                          child: Text(
                              'welcome to eapp ,click to sign up or login'))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Userlogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome user'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                width: 300, // Set the width as desired
                child: Column(
                  children: [
                    Text(
                      'Login Form',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),

                    SizedBox(height: 20), // Adding space between input fields
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      // Other properties like controller, validator, onChanged can be added here
                    ),
                    SizedBox(height: 20), // Adding space between input fields
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true, // Hides the entered text for passwords
                      // Other properties like controller, validator, onChanged can be added here
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary:
                              Colors.green, // Background color of the button
                          onPrimary: Colors.white,
                          minimumSize: Size(double.infinity, 50),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/loggedpage');
                        },
                        child: Text('LOGIN')),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Text('If You Dont have Account'),
                          SizedBox(
                            width: 2,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/sign');
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                color: Colors.green,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class Guestlogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome guest'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Sign Up Form',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 300, // Set the width as desired
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.text,
                      // Other properties like controller, validator, onChanged can be added here
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Phone contact',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      // Other properties like controller, validator, onChanged can be added here
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'location',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.text,
                      // Other properties like controller, validator, onChanged can be added here
                    ),
                    SizedBox(height: 20), // Adding space between input fields
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      // Other properties like controller, validator, onChanged can be added here
                    ),
                    SizedBox(height: 20), // Adding space between input fields
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true, // Hides the entered text for passwords
                      // Other properties like controller, validator, onChanged can be added here
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary:
                              Colors.green, // Background color of the button
                          onPrimary: Colors.white,
                          minimumSize: Size(double.infinity, 50),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/loginuser');
                        },
                        child: Text('SIGN UP'))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class Userpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: const Icon(Icons.home),
        title: Text("welcome you eapp"),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, '/setting');
            },
          ),
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: "shopping",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "cart",
          )
        ],
        selectedIconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1),
            child: Row(
              children: [
                Image(
                  image: AssetImage('assets/images/device1.jpg'),
                  width: 89,
                  height: 150,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text('T-spark 15'),
                    SizedBox(height: 5),
                    Text(
                      'Rwf100k',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(
                          255, 115, 155, 116), // Background color of the button
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/sp');
                    },
                    child: Text('detail')),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green, // Background color of the button
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/buyy');
                    },
                    child: Text('buy'))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Image(
                  image: AssetImage('assets/images/device3.jpeg'),
                  width: 75,
                  height: 150,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text('Headsets'),
                    SizedBox(height: 5),
                    Text(
                      'Rwf15k',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(
                          255, 115, 155, 116), // Background color of the button
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/head');
                    },
                    child: Text('detail')),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green, // Background color of the button
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/buyy');
                    },
                    child: Text('buy'))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Image(
                  image: AssetImage('assets/images/device4.jpeg'),
                  width: 75,
                  height: 150,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text('SM-Watch'),
                    SizedBox(height: 5),
                    Text(
                      'Rwf70k',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(
                          255, 115, 155, 116), // Background color of the button
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/wat');
                    },
                    child: Text('detail')),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green, // Background color of the button
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/buyy');
                    },
                    child: Text('buy'))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Image(
                  image: AssetImage('assets/images/device5.jpg'),
                  width: 90,
                  height: 150,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text('Aitel-T5'),
                    SizedBox(height: 5),
                    Text(
                      'Rwf90k',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(
                          255, 115, 155, 116), // Background color of the button
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/air');
                    },
                    child: Text('detail')),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green, // Background color of the button
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/buyy');
                    },
                    child: Text('buy'))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          Padding(
            padding: EdgeInsets.only(left: 0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                           Navigator.pushNamed(context, '/prof');
                        },
                        child: Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'profile',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15), // Adding space between the rows
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.shopping_bag,
                      size: 30,
                      color: Colors.green,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'shopping',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.shopping_basket,
                      size: 30,
                      color: Colors.green,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'shopping',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      size: 30,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'cart',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.shopping_cart_checkout_rounded,
                      size: 30,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Checkout/payment',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              )
            ],
          )
          // Add more Rows or widgets for additional icons and text below
        ],
      ),
    );
  }
}

class Spark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('products details'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/images/device1.jpg'),
                  width: 400,
                  height: 350,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'product name:T-spark 15',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('price:100k',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 1),
            child: Column(
              children: [
                Text(
                  'Product Description:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 3,
                ),
                Text('This is good smart phone which have 4G RAM'),
                Text('And 64G of quality ROM and processor of 5ghz')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Background color of the button
                onPrimary: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/buyy');
              },
              child: Text('buy'))
        ],
      ),
    );
  }
}

class Headset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('products details'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/images/device3.jpeg'),
                  width: 400,
                  height: 350,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'product name:Headphones',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('price:15k',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 1),
            child: Column(
              children: [
                Text(
                  'Product Description:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 3,
                ),
                Text('This is good smart head phones which have good '),
                Text('microphone and developed quality ears protecters')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Background color of the button
                onPrimary: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/buyy');
              },
              child: Text('buy'))
        ],
      ),
    );
  }
}

class Watch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('products details'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/images/device4.jpeg'),
                  width: 400,
                  height: 350,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'product name:Headphones',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('price:70k',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 1),
            child: Column(
              children: [
                Text(
                  'Product Description:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 3,
                ),
                Text('This is good smart watch which have good Apps '),
                Text('which provide functionality as smart phones')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Background color of the button
                onPrimary: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/buyy');
              },
              child: Text('buy'))
        ],
      ),
    );
  }
}

class Aitel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('products details'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/images/device5.jpg'),
                  width: 400,
                  height: 350,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'product name:T-spark 15',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('price:90k',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 1),
            child: Column(
              children: [
                Text(
                  'Product Description:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 3,
                ),
                Text('This is good smart phone which have 2G RAM'),
                Text('And 32G of quality ROM and processor of 2ghz')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Background color of the button
                onPrimary: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/buyy');
              },
              child: Text('buy'))
        ],
      ),
    );
  }
}

class Buy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Payment Demo'),
      ),
      body: Column(
        children: [
          Container(
              width: 300,
              padding: EdgeInsets.only(left: 55), // Set the width as desired
              child: Column(
                children: [
                  SizedBox(height: 20), // Adding space between input fields
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Card Name',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.name,
                    // Other properties like controller, validator, onChanged can be added here
                  ),
                  SizedBox(height: 15), // Adding space between input fields
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Number',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    obscureText: true, // Hides the entered text for passwords
                    // Other properties like controller, validator, onChanged can be added here
                  ),
                  SizedBox(height: 15), // Adding space between input fields
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'CVV',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    obscureText: true, // Hides the entered text for passwords
                    // Other properties like controller, validator, onChanged can be added here
                  ),
                  SizedBox(height: 15), // Adding space between input fields
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Expirely Date',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.datetime,
                    obscureText: true, // Hides the entered text for passwords
                    // Other properties like controller, validator, onChanged can be added here
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // Background color of the button
                        onPrimary: Colors.white,
                        minimumSize: Size(double.infinity, 50),
                      ),
                      onPressed: () {},
                      child: Text('PAY'))
                ],
              ))
        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      
        title: Text('user profile'),
      ),
      body: Center(
        child: Row(
          children: [
            Text('profile page')
          ],
        ),
      ),
    );
  }
}
