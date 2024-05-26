
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/images.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    precacheImage(const AssetImage(AppImages.user), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          AppImages.user
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(-12, 0),
                        child: IconButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(AppColors.color25),
                          padding: WidgetStateProperty.all(const EdgeInsets.all(10))
                        ),
                        onPressed: (){
                      
                        }, 
                        icon: Icon(Icons.add, color: AppColors.color17,)
                      ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Row(
                    children: [
                      IconButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(AppColors.color24),
                          padding: WidgetStateProperty.all(const EdgeInsets.all(14))
                        ),
                        onPressed: (){
                      
                        }, 
                        icon: Icon(Icons.notifications, color: AppColors.color17,)
                      ),
                    ],
                  ),
                ),
                
            ],
          );
  }
}