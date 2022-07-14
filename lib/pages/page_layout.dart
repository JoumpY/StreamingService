import 'package:flutter/material.dart';
import 'package:splital/themes/themes.dart';

//CUSTOM WIDGETS
import '../widgets/PageLayout/navigation_bar.dart';
import '../widgets/PageLayout/nowplaying_bar/nowplaying.dart';
import '../widgets/PageLayout/pagelayout_appbar/pageappbar.dart';

class PageLayout extends StatefulWidget {
  const PageLayout({Key? key}) : super(key: key);

  @override
  State<PageLayout> createState() => _PageLayoutState();
}

class _PageLayoutState extends State<PageLayout> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    int selectedNavBtn = 0;

    List<Widget> pageItems = [
      const SizedBox(height: 40),
      const PageAppBar(),
    ];

    for (int i = 1; i < 50; i++) {
      pageItems.add(const Text("Siemano"));
    }

    ScrollController scrollController = ScrollController(
      initialScrollOffset: 0,
    );

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
                  //MAIN COLUMN WHERE ALL ITEMS WILL BE DISPLAYED
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: pageItems,
                    ),
                  ),
                ),
              ),
              const NowPlaying(),
            ],
          ),
          const SizedBox(height: 10),
          NavigatorBar(
            defaultIndex: 0,
            onSelect: (index) {
              setState(() {
                selectedNavBtn = index;
              });
            },
          ),
        ],
      ),
    );
  }
}
