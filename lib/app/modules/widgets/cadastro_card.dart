import 'package:banco_bmg/app/modules/cadastro/cadastro_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';


class LoginCard extends StatefulWidget {
  const LoginCard(this.formController);

  final CadastroController formController;

  @override
  _LoginCardState createState() => _LoginCardState();
}


class _LoginCardState extends State<LoginCard> {
  @override
  Widget build(BuildContext context) {
    CadastroController _formController = widget.formController;
    MaskTextInputFormatter _cpfFormatter = MaskTextInputFormatter(mask: '###.###.###-##',
        filter: { "#": RegExp(r'[0-9]') });

    return Container(
      width: double.infinity,
      decoration:
          BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.0), boxShadow: [
        BoxShadow(color: Colors.black12, offset: Offset(0.0, 15.0), blurRadius: 15.0),
        BoxShadow(color: Colors.black12, offset: Offset(0.0, 15.0), blurRadius: 15.0),
      ]),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Registrar",
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(60), fontFamily: "Poppins-Bold", letterSpacing: .6),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(30),
            ),
            Text(
              "CPF",
              style: TextStyle(fontFamily: "Poppins-Medium", fontSize: ScreenUtil().setSp(26)),
            ),
            Observer(
              builder: (_) => TextField(
                onChanged: (value) => _formController.setCpf(_cpfFormatter.getMaskedText()),
                inputFormatters: [
                  _cpfFormatter
                ],
                decoration: InputDecoration(
                    hintText: "CPF",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 11.0),
                    errorText: _formController.error.cpf
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(30),
            ),
            Text(
              "Usuário",
              style: TextStyle(fontFamily: "Poppins-Medium", fontSize: ScreenUtil().setSp(26)),
            ),
            Observer(
              builder: (_) => TextField(
                onChanged: (value) => _formController.setUsername(value),
                decoration: InputDecoration(
                    hintText: "Usuário",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 11.0),
                    errorText: _formController.error.username
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(30),
            ),
            Text(
              "Email",
              style: TextStyle(fontFamily: "Poppins-Medium", fontSize: ScreenUtil().setSp(26)),
            ),
            Observer(
                builder: (_) => TextField(
                      onChanged: (value) => _formController.email = value,
                      decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0),
                          errorText: _formController.error.email
                      ),
                    )
            ),
            SizedBox(
              height: ScreenUtil().setHeight(30),
            ),
            Text(
              "Senha",
              style: TextStyle(fontFamily: "Poppins-Medium", fontSize: ScreenUtil().setSp(26)),
            ),
            Observer(
              builder: (_) => TextField(
                onChanged: (value) => _formController.password = value,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Senha", hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0),
                    errorText: _formController.error.password
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Esqueceu a senha?",
                  style: TextStyle(
                      color: Colors.blue,
                      fontFamily: "Poppins-Medium",
                      fontSize: ScreenUtil().setSp(38)),
                )
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(30),)
          ],
        ),
      ),
    );
  }
}
