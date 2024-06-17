import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:tki_app/config/routes/app_router.gr.dart';
import 'package:tki_app/src/home/presentation/pages/home_page.dart';
import 'package:tki_app/src/interpretation_report/presentation/pages/interpretation_report_page.dart';
import 'package:tki_app/src/language/presentation/pages/languages_page.dart';
import 'package:tki_app/src/tki_questions_set/presentation/pages/question_set_page.dart';
import 'package:tki_app/src/tki_questions_set/presentation/pages/questions_set_page.dart';

import '../../src/tki_questions_set/presentation/pages/question_sets_navigation_page.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: HomePage.routeName,
          initial: true,
        ),
        AutoRoute(
          page: LanguagesRoute.page,
          path: LanguagesPage.routeName,
        ),
        AutoRoute(
          page: InterpretationReportRoute.page,
          path: InterpretationReportPage.routeName,
        ),
        AutoRoute(
            page: QuestionSetsNavigationRoute.page,
            path: QuestionSetsNavigationPage.routeName,
            children: [
              AutoRoute(
                initial: true,
                page: QuestionsSetRoute.page,
                path: getTabName(QuestionsSetPage.routeName),
              ),
              AutoRoute(
                page: QuestionSetRoute.page,
                path: getTabName(QuestionSetPage.routeName),
              ),
            ]),
      ];

  String getTabName(String routeName) {
    if (routeName.startsWith('/')) {
      routeName = routeName.substring(1);
    }
    return routeName;
  }
}
