import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/pick_place/presentation/cubit/city_cubit.dart';

class PickPlacePage extends StatefulWidget {
  const PickPlacePage({super.key});

  @override
  State<PickPlacePage> createState() => _PickPlacePageState();
}

class _PickPlacePageState extends State<PickPlacePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.pop(context),
        label: const Text('Back'),
        icon: const Icon(Icons.arrow_back),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/pick_place.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 4,
            left: 30,
            right: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Set Up \nYour Location',
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.w900,
                        color: Theme.of(context).primaryColor,
                      ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.only(left: 30),
                  height: 50,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(),
                      ),
                      BlocBuilder<CityCubit, String>(
                        builder: (context, state) {
                          if (state == '') {
                            return SizedBox();
                          }
                          return IconButton.filledTonal(
                            onPressed: () {},
                            icon: Icon(
                              Icons.check,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
