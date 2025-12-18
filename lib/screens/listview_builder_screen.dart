import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);
  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      print(
        '${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}',
      );
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent) {
        //add5();
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if (isLoading) return;
    isLoading = true;
    setState(() {});
    await Future.delayed(Duration(seconds: 3));
    add5();
    isLoading = false;
    setState(() {});
  }

  void add5() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      //Sirve para crear una lista de imágenes y el media query quita los padding para el notch
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            ListView.builder(
              controller: scrollController,
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              itemCount: imagesIds.length,
              itemBuilder: (BuildContext context, int index) {
                return FadeInImage(
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                  placeholder: AssetImage('assets/jar-loading.gif'),
                  image: NetworkImage(
                    'https://picsum.photos/500/600?image=$index',
                  ),
                );
              },
            ),
            if (isLoading)
              Positioned(
                child: _LoadingIcon(),
                bottom: 15,
                left: (size.width / 2) - _LoadingIcon.loaderSize / 2,
              ),
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({super.key});
  static double loaderSize = 60;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: loaderSize,
      width: loaderSize,
      child: CircularProgressIndicator(color: AppTheme.primary),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.75),
        shape: BoxShape.circle,
      ),
    );
  }
}
