import 'package:flutter/material.dart';

class Login extends StatelessWidget {

    var EmailController    = TextEditingController();
    var PasswordController = TextEditingController();
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
                Text("Login",
                  style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  controller: EmailController,
                    decoration: InputDecoration(
                    labelText: "Email Address",
                    hintText: "Email Address",
                    border: OutlineInputBorder(),
                    suffix:Icon(Icons.email_outlined),
                  ),
                  onFieldSubmitted: (val){
                      print(val);
                  },
                  onTap: (){
                      print("EyadOo King");
                  },
                  onChanged: (value){
                      print(value);
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  controller: PasswordController,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Password",
                    border: OutlineInputBorder(),
                    prefix:Icon(Icons.lock),
                    suffixIcon:Icon(Icons.remove_red_eye),
                  ),
                  onFieldSubmitted: (val){
                    print(val);
                  },
                  onTap: (){
                    print("EyadOo King");
                  },
                  onChanged: (value){
                    print(value);
                  },
                  keyboardType: TextInputType.visiblePassword,
                  obscureText:true ,
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  height: 50.0,
                  color: Colors.blue,
                  width: double.infinity,
                  child: MaterialButton(onPressed: (){
                      print(EmailController.text);
                      print(PasswordController.text);
                  },child:Text("Login",style: TextStyle(fontSize: 20.0,color: Colors.white),),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an Account?",style: TextStyle(fontSize: 17.0),),
                    TextButton(onPressed: (){}, child:Text("Register Now",style: TextStyle(fontSize: 17.0),), )
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
