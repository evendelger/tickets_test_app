import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tickets_test_app/common/router/app_router.dart';
import 'package:tickets_test_app/common/theme/app_theme.dart';

class TicketsApp extends StatefulWidget {
  const TicketsApp({super.key});

  @override
  State<TicketsApp> createState() => _TicketsAppState();
}

class _TicketsAppState extends State<TicketsApp> {
  GoRouter? _poGoRouter;

  @override
  void initState() {
    _poGoRouter = AppRouter().router;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      child: MaterialApp.router(
        title: 'TicketsApp',
        theme: AppTheme.mainDark(),
        routerConfig: _poGoRouter,
      ),
    );
  }
}
