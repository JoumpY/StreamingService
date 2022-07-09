import 'package:flutter/material.dart';
import 'package:splital/themes/themes.dart';

//CUSTOM WIDGETS
import '../widgets/navigator_bar/navigation_bar.dart';
import '../widgets/nowplaying_bar/nowplaying.dart';
import '../widgets/filtersbar/filtersbar.dart';

class PageLayout extends StatefulWidget {
  const PageLayout({Key? key}) : super(key: key);

  @override
  State<PageLayout> createState() => _PageLayoutState();
}

class _PageLayoutState extends State<PageLayout> {
  @override
  Widget build(BuildContext context) {
    //TODO: delete the list and the for loop later
    List<Widget> siema = [];
    for (int i = 1; i < 50; i++) {
      siema.add(const Text("Siemano"));
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Material(
                color: Colors.transparent,
                elevation: 0,
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height - 75,
                  decoration: const BoxDecoration(
                    color: AppColors.pageBackground,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: const [
                        FiltersBar(),
                      ],
                    ),
                  ),
                ),
              ),
              const NowPlaying(),
            ],
          ),
          const SizedBox(height: 10),
          NavigatorBar(
            defaultSelected: 0,
            onChange: (index) {},
          ),
        ],
      ),
    );
  }
}
