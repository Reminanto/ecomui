import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: SizedBox(
        height: kToolbarHeight,
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(
                    'assets/appbarimages/a1.png',
                    height: 32,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(
                    'assets/appbarimages/a2.png',
                    height: 32,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(
                    'assets/appbarimages/a3.jpg',
                    height: 32,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(
                    'assets/appbarimages/a4.png',
                    height: 32,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
