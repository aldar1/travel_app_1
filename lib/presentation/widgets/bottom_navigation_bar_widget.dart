import 'package:flutter/material.dart';
import 'package:travel_app_1/presentation/repositories/svg_repository.dart';


class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.elliptical(40, 40),
        topRight: Radius.elliptical(40, 40)
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.grey[200]?.withOpacity(0.9),
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 3,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  color: Colors.red.withOpacity(0.8),
                  child: IconButton(
                    icon: mainIcon,
                    onPressed: (){},
                  ),
                ),
              ),
            ),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                color: Colors.grey[200]?.withOpacity(0.9),
                child: IconButton(
                  icon: likedIcon,
                  onPressed: (){},
                ),
              ),
            ),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                color: Colors.grey[200]?.withOpacity(0.9),
                child: IconButton(
                  icon: chatIcon,
                  onPressed: (){},
                ),
              ),
            ),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                color: Colors.grey[200]?.withOpacity(0.9),
                child: IconButton(
                  icon: settingsIcon,
                  onPressed: (){},
                ),
              ),
            ),
            label: ''
          ),
        ],
      ),
    );
  }
}