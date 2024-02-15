import 'package:flutter/material.dart';
import '../colors/app_colors.dart';
class RoundedButton extends StatefulWidget {
  final bool loading;
  final  Color? buttonColor;
  final  String title;
  final double height;
  final double width;
  final VoidCallback onPressed;


   const RoundedButton({super.key,
       this.loading=false,
       this.buttonColor=AppColor.red,
       this.height=100,
       this.width=100,
       required this.title,
     required this.onPressed,
  });

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
   onTap:widget.onPressed,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          color: widget.buttonColor ,
          borderRadius: BorderRadius.circular(50),
        ),
        child:widget.loading? Center(child: const CircularProgressIndicator()):Center(child: Text(widget.title,)),


      ),
    );
  }
}
