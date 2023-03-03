import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view/pages/business_screen.dart';
import '../../view/pages/sciences_screen.dart';
import '../../view/pages/sports_screen.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());
  static NewsCubit get(context)=>BlocProvider.of(context);
  int currentIndex=0;

  List<BottomNavigationBarItem> bottomItems=[
    BottomNavigationBarItem(icon:Icon(Icons.business),label: 'business'),
    BottomNavigationBarItem(icon:Icon(Icons.sports),label: 'sports'),
    BottomNavigationBarItem(icon:Icon(Icons.science),label: 'science'),

  ];

  List<Widget>screens=[
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen()
  ];

   void changeIndex(int index){
    currentIndex=index;
    emit(ChangeBottomNavigation());
  }


}
