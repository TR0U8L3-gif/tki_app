import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/config/locator/injection.dart';
import 'package:tki_app/core/common/widgets/app_scaffold.dart';
import 'package:tki_app/core/common/widgets/app_text.dart';
import 'package:tki_app/core/extensions/context_extension.dart';
import 'package:tki_app/core/extensions/l10n_extension.dart';
import 'package:tki_app/core/extensions/num_extension.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';
import 'package:tki_app/src/tki_questions_set/presentation/bloc/tki_question_set_bloc.dart';
import 'package:tki_app/src/tki_questions_set/presentation/widgets/question_set_list_tile.dart';
import 'package:tki_app/src/tki_questions_set/presentation/widgets/question_set_list_tile_shimmer.dart';

@RoutePage()
class QuestionsSetPage extends StatelessWidget implements AutoRouteWrapper {
  const QuestionsSetPage({super.key});

  static const String routeName = '/questions-set';

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<TkiQuestionSetBloc>()
      ..add(const GetFromFixturesEvent())
      ..add(const GetFromDeviceEvent()),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title: Text(context.l10n.tkiQuestionsSet),
      ),
      body: BlocConsumer<TkiQuestionSetBloc, TkiQuestionSetState>(
        listener: (_, state) => state.whenOrNull(
          error: (state, failure) => ScaffoldMessenger.of(context).showSnackBar(
            //TODO: popup
            SnackBar(
              content: Text(failure.toString()),
            ),
          ),
        ),
        builder: (_, state) => state.when(
          initial: () => _idleScreen(
            context,
            true,
            true,
            [],
            [],
          ),
          idle: (
            isLoadingLocal,
            isLoadingRemote,
            questionSetsLocal,
            questionSetsRemote,
          ) =>
              _idleScreen(
            context,
            isLoadingLocal,
            isLoadingRemote,
            questionSetsLocal,
            questionSetsRemote,
          ),
          error: (state, failure) => _idleScreen(
              context,
              state.isLoadingLocal,
              state.isLoadingRemote,
              state.questionSetsLocal,
              state.questionSetsRemote),
        ),
      ),
    );
  }

  Widget _initialScreen() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _idleScreen(
    BuildContext context,
    bool isLoadingLocal,
    bool isLoadingRemote,
    List<QuestionSet> questionSetsLocal,
    List<QuestionSet> questionSetsRemote,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSize.s2),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _textSpacer(
                context: context,
                icon: Icons.assignment,
                text: context.l10n.tkiQuestionsSetLocal,
              ),
            ),
            _questionSetWidget(
              context: context,
              questionSets: questionSetsLocal,
              isLoading: isLoadingLocal,
            ),
            SliverToBoxAdapter(
              child: _textSpacer(
                context: context,
                icon: Icons.assignment_add,
                text: context.l10n.tkiQuestionsSetRemote,
              ),
            ),
            _questionSetWidget(
              context: context,
              questionSets: questionSetsRemote,
              isLoading: isLoadingRemote,
            ),
          ],
        ),
      ),
    );
  }

  Widget _questionSetWidget({
    required BuildContext context,
    required List<QuestionSet> questionSets,
    required bool isLoading,
  }) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.m),
      sliver: isLoading
          ? SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return const QuestionSetListTileShimmer();
                },
                childCount: AppSize.s4.toInt(),
              ),
            )
          : questionSets.isNotEmpty
              ? SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final questionSet = questionSets[index];
                      return QuestionSetListTile(
                        questionSet: questionSet,
                      );
                    },
                    childCount: questionSets.length,
                  ),
                )
              : SliverToBoxAdapter(
                  child: _textNoContent(context),
                ),
    );
  }

  Widget _textSpacer({
    required BuildContext context,
    required String text,
    required IconData icon,
  }) {
    return Padding(
      padding: const EdgeInsets.only(
          left: AppSize.l,
          top: AppSize.xl,
          bottom: AppSize.s,
          right: AppSize.zero),
      child: Row(children: [
        Icon(
          icon,
          color: context.theme.surface,
        ),
        const SizedBox(width: AppSize.s),
        Expanded(
          child: TextSingleLineSized(
            text,
            style: const TextStyle(
              fontSize: AppSize.ml,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ]),
    );
  }

  Widget _textNoContent(BuildContext context) {
    return Opacity(
      opacity: AppSize.xxxl72.fraction,
      child: Padding(
        padding: const EdgeInsets.only(top: AppSize.s, bottom: AppSize.xl),
        child: Align(child: Text(context.l10n.noContent)),
      ),
    );
  }
}
