import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_loja/src/config/custom_colors.dart';
import 'package:flutter_loja/src/pages/common_widgets/custom_text_field.dart';
import 'package:flutter_loja/src/config/app_data.dart' as appData;

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil do usuário'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: [
          //Email
          CustomTextField(
            readOnly: true,
            icon: Icons.email,
            label: 'Email',
            initialValue: appData.user.email,
          ),

          //Nome
          CustomTextField(
            readOnly: true,
            icon: Icons.person,
            label: 'Nome',
            initialValue: appData.user.name,
          ),

          //Celular
          CustomTextField(
            readOnly: true,
            icon: Icons.phone,
            label: 'Celular',
            initialValue: appData.user.phone,
          ),

          //CPF
          CustomTextField(
            readOnly: true,
            icon: Icons.file_copy,
            label: 'CPF',
            isSecret: true,
            initialValue: appData.user.cpf,
          ),

          //Atualizar Senha
          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: CustomColors.customSwatchColor,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                updatePassoword();
              },
              child: const Text('Atualizar Senha'),
            ),
          ),
        ],
      ),
    );
  }

  Future<bool?> updatePassoword() {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 12,
                        ),
                        child: Text(
                          'Atualização de senha',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      //Senha Atual
                      const CustomTextField(
                        icon: Icons.lock,
                        label: 'Senha Atual',
                        isSecret: true,
                      ),

                      //Senha Nova Senha
                      const CustomTextField(
                        icon: Icons.lock_outline,
                        label: 'Nova Senha',
                        isSecret: true,
                      ),

                      //Confirmação nova senha
                      const CustomTextField(
                        icon: Icons.lock_outline,
                        label: 'Confirma nova senha',
                        isSecret: true,
                      ),

                      //Botão de confirmação
                      SizedBox(
                        height: 45,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Atualizar'),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.close),
                  ),
                )
              ],
            ),
          );
        });
  }
}
