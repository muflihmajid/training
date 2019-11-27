import 'package:flutter/material.dart';

class textform extends StatefulWidget{
  textform({
    this.obs,this.iconData,this.filed, this.warna, this.style, this.text, this.valueHasil, this.hint
  });
  final Icon iconData;

  final bool filed,obs;

  final Color warna;
  /// Title to show
  final TextStyle style;
  /// Airport to show
  final String text;

  final String hint;
  FormFieldSetter<String> valueHasil;

  @override
  _textformState createState() => _textformState();
}

class _textformState extends State<textform> {
  /// Callback that fires when the user taps on this widget

  @override
  Widget build(BuildContext context) {
    return TextFormField(
          obscureText: widget.obs,
          validator: (value)=>value.isEmpty ? widget.text : null,
          style: widget.style,
          onSaved: widget.valueHasil,
          decoration: InputDecoration(
            icon: widget.iconData,
            filled: widget.filed,
            fillColor: widget.warna,
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: widget.hint,
            border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        );
  }
}