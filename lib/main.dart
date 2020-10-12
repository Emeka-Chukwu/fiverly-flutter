import 'package:fiverly_flutter/features/carts_order/screen/carts.dart';
// import 'package:fiverly_flutter/features/global/app_color.dart';
import 'package:fiverly_flutter/features/reviews_rating/blocs/review_rating_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/shipping_details/bloc/my_order_counter_bloc.dart';

void main() async {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<MyOrderCounterBloc>(
        create: (context) => MyOrderCounterBloc(),
      ),
      BlocProvider<ReviewRatingBloc>(
        create: (context) => ReviewRatingBloc(),
      ),
    ],
    child: MyApp(),
  ));
}

// ReviewRatingBloc
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_fiverly',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        // accentColor: AppColor.backgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Carts(),
    );
  }
}
