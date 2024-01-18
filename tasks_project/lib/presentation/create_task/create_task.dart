import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tasks_project/data/di/data_service_locator.dart';
import 'package:tasks_project/data/model/create_task_dto/create_task_dto.dart';
import 'package:tasks_project/data/model/priority/priority.dart';
import 'package:tasks_project/presentation/common/components/priority_tag.dart';
import 'package:tasks_project/presentation/common/components/tp_button.dart';
import 'package:tasks_project/presentation/common/components/tp_snack_bar.dart';
import 'package:tasks_project/presentation/common/components/tp_textfield.dart';
import 'package:tasks_project/presentation/common/constants.dart';
import 'package:tasks_project/presentation/create_task/create_task_bloc/create_task_bloc.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  PriorityType selectedPriority = PriorityType.low;

  final TextEditingController taskTitleController = TextEditingController();
  final TextEditingController taskDescriptionController =
      TextEditingController();

  @override
  void dispose() {
    taskTitleController.dispose();
    taskDescriptionController.dispose();
    selectedPriority = PriorityType.low;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateTaskBloc>(
      create: (context) => serviceLocator.get<CreateTaskBloc>(),
      child: BlocConsumer<CreateTaskBloc, CreateTaskState>(
        listener: (context, state) {
          if (state is CreateTaskSuccess) {
            context.pop(true);
          } else if (state is CreateTaskError) {
            TPSnackBar.showSnackBar(context, state.errorMessage ?? '', true);
          }
        },
        builder: (BuildContext context, state) {
          return Scaffold(
              backgroundColor: TPColors.primaryBackground,
              appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(
                      TPMargins.margin60), // Set your preferred height
                  child: AppBar(
                    title: const Row(
                      children: [Text('Create task')],
                    ),
                  )),
              body: Padding(
                padding: const EdgeInsets.fromLTRB(TPMargins.margin20,
                    TPMargins.margin20, TPMargins.margin20, TPMargins.margin0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Task details',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                TPMargins.margin0,
                                TPMargins.margin20,
                                TPMargins.margin0,
                                TPMargins.margin20),
                            child: TPTextField(
                                title: 'Task title',
                                placeHolder: 'Task title',
                                controller: taskTitleController),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                TPMargins.margin0,
                                TPMargins.margin20,
                                TPMargins.margin0,
                                TPMargins.margin20),
                            child: TPTextField(
                                title: 'Description',
                                placeHolder: 'Description',
                                height: 40,
                                controller: taskDescriptionController),
                          ),
                          const Text(
                            'Priority',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Radio(
                                value: PriorityType.low,
                                groupValue: selectedPriority,
                                onChanged: (value) {
                                  selectPriority(value);
                                },
                              ),
                              const PriorityTag(priority: PriorityType.low),
                              Radio(
                                value: PriorityType.medium,
                                groupValue: selectedPriority,
                                onChanged: (value) {
                                  selectPriority(value);
                                },
                              ),
                              const PriorityTag(priority: PriorityType.medium),
                              Radio(
                                value: PriorityType.high,
                                groupValue: selectedPriority,
                                onChanged: (value) {
                                  selectPriority(value);
                                },
                              ),
                              const PriorityTag(priority: PriorityType.high),
                            ],
                          ),
                        ]),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(
                            TPMargins.margin0,
                            TPMargins.margin0,
                            TPMargins.margin0,
                            TPMargins.margin20),
                        child: TPButton(
                          onClick: () {
                            createTask(context);
                          },
                          title: 'Create task',
                          color: TPColors.primaryButton,
                          titleColor: TPColors.secondaryBackground,
                          isLoading: state is CreateTaskLoading,
                        ))
                  ],
                ),
              ));
        },
      ),
    );
  }

  selectPriority(PriorityType? priorityValue) {
    if (priorityValue != null) {
      setState(() {
        selectedPriority = priorityValue!;
      });
    }
  }

  createTask(BuildContext context) {
    final task = CreateTaskDto(
        title: taskTitleController.text,
        description: taskDescriptionController.text,
        priority: selectedPriority.value);
    context.read<CreateTaskBloc>().add(CreateTaskEvent(task));
  }
}
