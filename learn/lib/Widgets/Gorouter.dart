import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn/Widgets/myappRoutConstance.dart';
import 'package:learn/pages/firstpage.dart';
import 'package:learn/pages/second.dart';
import 'package:learn/pages/third.dart';

class Myapprout{

GoRouter router = GoRouter(
    routes: [
      GoRoute(
      name: Myapproutconstance.homeroutname,
      path: '/',
      pageBuilder: (context, state) {
        return MaterialPage(child: Home());
      },

      ),
            GoRoute(
      name: Myapproutconstance.secondroutname,
      path: '/second',
      pageBuilder: (context, state) {
        return MaterialPage(child: Second());
      },

      ),
            GoRoute(
      name: Myapproutconstance.thirdroutname,
      path: '/third',
      pageBuilder: (context, state) {
        return MaterialPage(child: Third());
      },

      ),
    ]
    
  );
      
}