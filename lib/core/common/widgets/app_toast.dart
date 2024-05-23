import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tki_app/config/assets/app_colors.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/core/extensions/context_extension.dart';
import 'package:tki_app/core/extensions/num_extension.dart';
import 'package:tki_app/core/utils/enums.dart';

/// {@template toast}
/// Widget to display information for brief moment
/// {@endtemplate}
class AppToast extends HookWidget {
  /// {@macro toast}
  const AppToast({
    super.key,
    required this.message,
    required this.logo,
    required this.showDefaultLogo,
    required this.type,
  });

  /// toast message
  final String message;

  /// toast type
  final ToastType type;

  /// if `true` toast will contain default app notification logo `notification_logo.png`
  /// unless `logo` is not null, then the toast will display logo content
  final bool showDefaultLogo;

  /// if `null` toast will not contain app logo
  /// unless `showDefaultLogo` is true
  final Widget? logo;

  @override
  Widget build(BuildContext context) {
    final showLogo = logo != null || showDefaultLogo;
    final isTaped = useState(false);
    final isVisible = useState(true);

    useEffect(() {
      print("start: " + DateTime.now().toString());
      return () {
            print("end: " + DateTime.now().toString());
      };
    }, const []);

    return Visibility(
      visible: isVisible.value,
      child: AnimatedOpacity(
        opacity: isTaped.value ? AppSize.zero : AppSize.one,
        duration: const Duration(milliseconds: AppSize.durationExtraSmall),
        onEnd: () => isVisible.value = false,
        child: GestureDetector(
          onTap: () {
            if(isTaped.value == false){
              isTaped.value = true;
              _dialogBuilder(context: context, type: type, message: message);
            }
          },
          child: Container(
            constraints: BoxConstraints(
              maxWidth: context.width * AppSize.xxxl80.fraction,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: AppColors.grey900,
              boxShadow: [
                BoxShadow(
                  color: AppColors.grey900.withOpacity(AppSize.m12.fraction),
                  spreadRadius: AppSize.s2,
                  blurRadius: AppSize.s2,
                  offset: const Offset(AppSize.zero, AppSize.s2),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppSize.l),
              child: Container(
                color: _getToastColor(type).withOpacity(AppSize.xxl.fraction),
                padding: EdgeInsets.symmetric(
                  horizontal: showLogo ? AppSize.m12 : AppSize.l,
                  vertical: showLogo ? AppSize.s : AppSize.m12,
                ),
                child: showLogo
                    ? Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: AppSize.s),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(AppSize.m12),
                              child: Container(
                                width: AppSize.l,
                                height: AppSize.l,
                                alignment: Alignment.center,
                                child: logo ??
                                    Icon(
                                      Icons.notifications_active_outlined,
                                      color: AppColors.grey50
                                          .withOpacity(AppSize.xxxl80.fraction),
                                      size: AppSize.ml,
                                    ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: _text(),
                          ),
                          const SizedBox(width: AppSize.s2),
                        ],
                      )
                    : _text(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _dialogBuilder(
      {required BuildContext context,
      required ToastType type,
      required String message}) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.grey900,
          title: Row(
            children: [
              Icon(
                Icons.notifications_active_outlined,
                color: _getToastColor(type, true),
                size: AppSize.l,
              ),
              const SizedBox(width: AppSize.s),
              Text(
                _getToastTitle(type),
                style: TextStyle(color: _getToastColor(type, true), fontWeight: FontWeight.w500),
              ),
            ],
          ),
          content: Padding(
            padding: const EdgeInsets.only(bottom: AppSize.s),
            child: Text(
              message,
              style: const TextStyle(
                color: AppColors.grey50,
                fontSize: AppSize.ml,
              )
            ),
          ),
        );
      },
    );
  }

  Widget _text() => Text(
        message,
        maxLines: 2,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: AppColors.grey50.withOpacity(AppSize.xxxl80.fraction),
          fontWeight: FontWeight.w500,
        ),
      );

  Color _getToastColor(ToastType type, [bool isLight = false]) {
    switch (type) {
      case ToastType.info:
        return isLight ? AppColors.blueLight : AppColors.blueDark;
      case ToastType.error:
        return isLight ? AppColors.redLight : AppColors.redDark;
      case ToastType.warning:
        return isLight ? AppColors.yellowLight : AppColors.yellowDark;
      case ToastType.success:
        return isLight ? AppColors.purpleLight : AppColors.purpleDark;
    }
  }

  String _getToastTitle(ToastType type) {
    switch (type) {
      case ToastType.info:
        return 'Info';
      case ToastType.error:
        return 'Error';
      case ToastType.warning:
        return 'Warning';
      case ToastType.success:
        return 'Success';
    }
  }
}