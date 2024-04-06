import 'package:flutter/material.dart';
import 'package:moo_app/widgets/imput_decoration.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green.shade800,
        child: Stack(
          children: [loginBackground(size), iconLogin(), loginForm(context)],
        ),
      ),
    );
  }

  SingleChildScrollView loginForm(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 300,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 30),
            width: double.infinity,
            //height: 350,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15,
                    offset: Offset(0, 5),
                  )
                ]),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Bienvenido",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: 30,
                ),
                Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          decoration: InputDecorations.inputDecotation(
                            hintext: "Correo electrónico",
                            labeltext: "Correo electrónico",
                            icon: const Icon(Icons.email_rounded),
                          ),
                          validator: (value) {
                            if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                .hasMatch(value!)) {
                              return 'Por favor, ingresa un correo electrónico válido';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          autocorrect: false,
                          obscureText: true,
                          decoration: InputDecorations.inputDecotation(
                            hintext: "•••••••••••",
                            labeltext: "Contraseña",
                            icon: const Icon(Icons.lock_rounded),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, ingresa tu contraseña';
                            }
                            if (value.length < 8) {
                              return 'La contraseña debe tener al menos 8 caracteres';
                            }
                            // Puedes agregar más criterios de validación según tus necesidades
                            return null; // Retorna null si la validación pasa
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          disabledColor: Colors.grey,
                          color: Colors.green.shade900,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 80, vertical: 15),
                            child: const Text(
                              "Iniciar sesión",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, 'home');
                          },
                        )
                      ],
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "No tienes cuenta? ",
                  style: TextStyle(color: Colors.white70),
                ),
              ),
              Center(
                child: Text(
                  "Regístrate",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  SafeArea iconLogin() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        child: const Column(
          children: [
            Icon(
              Icons.person_pin,
              color: Colors.white,
              size: 100,
            ),
            SizedBox(height: 10),
            Text(
              "Moo App",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Gestiona tu agricultura con facilidad",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container loginBackground(Size size) {
    return Container(
      color: Colors.green.shade900,
      width: double.infinity,
      height: size.height * 0.4,
      child: Stack(
        children: [
          Positioned(
            top: 90,
            left: 30,
            child: bubble(),
          ),
          Positioned(
            top: -40,
            left: -30,
            child: bubble(),
          ),
          Positioned(
            top: -50,
            right: -20,
            child: bubble(),
          ),
          Positioned(
            bottom: -50,
            right: -10,
            child: bubble(),
          ),
          Positioned(
            bottom: 120,
            right: 20,
            child: bubble(),
          ),
          Positioned(
            bottom: -40,
            left: 70,
            child: bubble(),
          ),
        ],
      ),
    );
  }

  Container bubble() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: Colors.white10),
    );
  }
}
