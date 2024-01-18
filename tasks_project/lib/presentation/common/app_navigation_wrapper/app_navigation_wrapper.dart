import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tasks_project/common/utils/pop_up_extension.dart';
import 'package:tasks_project/data/di/data_service_locator.dart';
import 'package:tasks_project/presentation/common/app_navigation_wrapper/app_navigation_wrapper_bloc/app_navigation_wrapper_bloc.dart';
import 'package:tasks_project/presentation/common/components/tp_app_bar.dart';
import 'package:tasks_project/presentation/common/constants.dart';
import 'package:tasks_project/presentation/common/router/tasks_route.dart';
import 'package:tasks_project/presentation/tasks/done_tasks.dart';
import 'package:tasks_project/presentation/tasks/tasks_in_progress.dart';

class AppNavigationWrapper extends StatefulWidget {
  const AppNavigationWrapper({super.key});

  @override
  State<AppNavigationWrapper> createState() => _AppNavigationWrapper();
}

class _AppNavigationWrapper extends State<AppNavigationWrapper> {
  _AppNavigationWrapper();

  int _currentIndex = 0;
  List<Widget> body = [
    const TasksInProgress(),
    const DoneTasks(),
    const SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppNavigationWrapperBloc>(
      create: (context) => serviceLocator.get<AppNavigationWrapperBloc>(),
      child: BlocConsumer<AppNavigationWrapperBloc, AppNavigationWrapperState>(
          listener: (context, state) {
        if (state is AppNavigationLoggedOutState) {
          context.go(TasksRoute.auth.path);
        }
      }, builder: (BuildContext context, AppNavigationWrapperState state) {
        return Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: TPAppBar(title: 'Tasks'),
          ),
          body: Center(
            child: body[_currentIndex],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (int newIndex) {
              setState(() {
                if (newIndex == 2) {
                  context.showCustomPopup(
                      onSubmitClick: () {
                        context
                            .read<AppNavigationWrapperBloc>()
                            .add(AppNavigationWrapperLogOutEvent());
                      },
                      onCancelClick: () {
                        context.pop();
                      },
                      title: 'Log out',
                      message: 'Are you sure that you want to log out?',
                      submitTitle: 'Log out',
                      cancelTitle: 'Cancel',
                      submitColor: TPColors.highTagTitle,
                      cancelColor: TPColors.secondaryButton);
                } else {
                  _currentIndex = newIndex;
                }
              });
            },
            items: const [
              BottomNavigationBarItem(
                  label: 'In progress', icon: Icon(Icons.menu)),
              BottomNavigationBarItem(
                  label: 'Done', icon: Icon(Icons.check_circle_outline)),
              BottomNavigationBarItem(
                  label: 'Log out', icon: Icon(Icons.logout_outlined)),
            ],
          ),
        );
      }),
    );
  }
}
