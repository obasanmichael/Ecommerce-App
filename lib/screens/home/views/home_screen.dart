import "package:expense_tracker2/components/Navigation/navigation_appbar.dart";
import "package:expense_tracker2/components/Navigation/navigation_bar.dart";
import "package:expense_tracker2/components/search_bar.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(children: [
                CustomAppBar(),
              ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavigationMenu(),
    );
  }
}
