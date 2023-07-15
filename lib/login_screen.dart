import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  var emailController=TextEditingController();
  var passwordContrroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,


                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  controller: emailController,
                  onFieldSubmitted: (String value){
                    print(value);
                  },
                  onChanged: (String value){
                    print(value);
                  },
                  keyboardType:TextInputType.emailAddress ,
                  decoration: InputDecoration(
                    labelText: 'Email address',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                  ),



                ),
                SizedBox(
                  height: 30.0,
                ),
                TextFormField (
                  controller: passwordContrroller,
                  onFieldSubmitted: (String value){
                    print(value);

                  },
                  onChanged: (String value){
                    print(value);

                  },
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,

                  decoration: InputDecoration(

                    labelText:'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),

                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(onPressed: (){
                    print(emailController.text);
                    print(passwordContrroller.text);

                  },
                    child: Text('LOGIN',
                      style:TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      )
                      ,),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account ?",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.blueGrey,
                      ),),
                    TextButton(onPressed:(){
                      print('Register');
                    }, child: Text('Register Now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                      ),
                    ))
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}