import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tickets_test_app/features/search_sheet/search_modal_sheet/popular_cities/popular_cities.dart';
import 'package:tickets_test_app/features/search_sheet/search_modal_sheet/search_buttons/search_buttons.dart';
import 'package:tickets_test_app/features/search_sheet/search_modal_sheet/search_container.dart';

class SearchSheetPage extends StatefulWidget {
  const SearchSheetPage({super.key, required this.departurePlace});

  final String departurePlace;

  @override
  State<SearchSheetPage> createState() => _SearchSheetPageState();
}

class _SearchSheetPageState extends State<SearchSheetPage> {
  late final TextEditingController arrivalPlaceController;

  @override
  void initState() {
    arrivalPlaceController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    arrivalPlaceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SearchContainer(
            arrivalPlaceController: arrivalPlaceController,
            departurePlace: widget.departurePlace,
            onSelectDeparturePlace: _onSelectDeparturePlace,
          ),
          SizedBox(height: 24.h),
          SearchButtons(onSelectDeparturePlace: _onSelectDeparturePlace),
          SizedBox(height: 30.h),
          PopularCities(onSelectDeparturePlace: _onSelectDeparturePlace),
        ],
      ),
    );
  }

  void _onSelectDeparturePlace(String place, BuildContext context) async {
    arrivalPlaceController.text = place;
    await Future.delayed(const Duration(milliseconds: 250));
    context
      ..pop()
      ..pushNamed('search_by_country', extra: {
        'departurePlace': widget.departurePlace,
        'arrivalPlace': place,
      });
  }
}
