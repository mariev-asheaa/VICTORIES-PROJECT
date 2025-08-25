import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hykaity/core/Utils/Constants.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({super.key, required this.isChecked, required this.onChanged});
  final bool isChecked;
  final ValueChanged<bool>onChanged;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        onChanged(!isChecked);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        width: 12,
        height: 12,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color:isChecked? kPrimaryColor:Colors.white ,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: isChecked?Colors.transparent:const Color(0xFFDCDEDE),
            ),
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        child:isChecked? Center(child: Icon(Icons.check,color: Colors.white,size: 8,)):SizedBox(),
      ),
    );
  }
}
