import 'package:banco_bmg/app/modules/login/form_controller.dart';
import 'package:banco_bmg/app/modules/widgets/login_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class FormPage extends StatefulWidget {
  const FormPage();

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  FormController _formController = FormController();

  @override
  void initState() {
    super.initState();
    _formController.setupValidations();
  }

  @override
  void dispose() {
    _formController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init();

    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomPadding: true,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Image.asset('assets/logo_bmg.png'),
                ),
                Expanded(
                  child: Container(),
                )
              ],
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 60.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: ScreenUtil().setHeight(380),
                    ),
                    LoginCard(_formController),
                    SizedBox(height: ScreenUtil().setHeight(60)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                            child: CheckboxListTile(
                          title: Text(
                            "Lembrar de mim",
                            style: TextStyle(
                                fontFamily: "Poppins-Medium",
                                fontSize: ScreenUtil().setSp(30),
                                color: Colors.grey),
                          ),
                          controlAffinity: ListTileControlAffinity.leading,
                          value: timeDilation != 1.0,
                          activeColor: Colors.orange,
                          onChanged: (bool value) {
                            setState(() {
                              timeDilation = value ? 1.5 : 1.0;
                            });
                          },
                        )),
                        Observer(
                          builder: (_) => InkWell(
                            child: Container(
                              width: ScreenUtil().setWidth(430),
                              height: ScreenUtil().setHeight(100),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: _formController.canRegister
                                          ? [Color(0xFFFF9800), Color(0xFFF57C00)]
                                          : [Color(0xFFBDBDBD), Color(0xFF757575)]),
                                  borderRadius: BorderRadius.circular(6.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color:  _formController.canRegister
                                          ? Color(0xFFF57C00).withOpacity(.3)
                                          : Color(0xFF757575).withOpacity(.3),
                                        offset: Offset(0.0, 0.0),
                                        blurRadius: 8.0)
                                  ]),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: _formController.canRegister
                                      ? () => print("TODO: LOGIN")
                                      : null,
                                  child: Center(
                                    child: Text(
                                      "REGISTRAR",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Poppins-Bold",
                                          fontSize: 18,
                                          letterSpacing: 1.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(30),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
