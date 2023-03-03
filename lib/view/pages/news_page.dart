import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../controller/cubit/news_cubit.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsState>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        NewsCubit cubit=NewsCubit.get(context);
      return Scaffold(
        appBar: AppBar(
          title: Text('News App'),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.brightness_4_outlined)),

          ],
        ),
        body: Center(
            child: cubit.screens[cubit.currentIndex]),
        bottomNavigationBar: BottomNavigationBar(
          items: cubit.bottomItems,
          currentIndex: cubit.currentIndex,
          onTap: (index){
            cubit.changeIndex(index);
          }
        ),
      );}
    );
  }
}
