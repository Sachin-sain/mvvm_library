import 'package:flutter/material.dart';
import 'package:flutter_mvvvm/res/getx_localization/colors/app_colors.dart';
class InterNetExceptionWidget extends StatefulWidget {
final VoidCallback onPressed;
  const InterNetExceptionWidget({super.key,required this.onPressed});

  @override
  State<InterNetExceptionWidget> createState() => _InterNetExceptionWidgetState();
}

class _InterNetExceptionWidgetState extends State<InterNetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    return  Padding(padding:  EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.cloud_off,color: AppColor.blackColor,),
          const SizedBox(height: 20,),
          const Text('Unable to load data'),
          const SizedBox(height: 20,),
        GestureDetector(
          onTap: widget.onPressed,
          child: Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
              color: Colors.red
          ),
            child: Text('Retry'),
                ),
        )

        ],
      ),
    );
  }
}
