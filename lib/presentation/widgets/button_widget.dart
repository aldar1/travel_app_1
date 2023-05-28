import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(20),
            backgroundColor: Colors.red.withOpacity(0.7)
          ),
          onPressed: (){}, 
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Buy a tou',style: TextStyle(fontSize: 18),),
              SizedBox(width: 10,),
              Icon(Icons.arrow_forward_rounded,color: Colors.white,size: 25,)
            ],
          )
        ),
      ),
    );
  }
}