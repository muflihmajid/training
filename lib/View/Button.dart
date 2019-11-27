import 'package:flutter/material.dart';

class button extends StatelessWidget{
  button({this.style,this.warna,this.text,this.select});
  final TextStyle style;
  final Color warna;
  final String text;
  final VoidCallback select;

  @override
  Widget build(BuildContext context) {
    return Material(elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: warna,
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: select,
            //()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>HomePage()))
                        child: Text(text,
                            textAlign: TextAlign.center,
                            style: style.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                      ),
                    );
  }

}