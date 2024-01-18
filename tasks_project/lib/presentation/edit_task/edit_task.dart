import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tasks_project/common/utils/pop_up_extension.dart';
import 'package:tasks_project/data/di/data_service_locator.dart';
import 'package:tasks_project/data/model/edit_task_dto/edit_task_dto.dart';
import 'package:tasks_project/data/model/priority/priority.dart';
import 'package:tasks_project/data/model/status_dto/status_dto.dart';
import 'package:tasks_project/domain/entities/task/task.dart';
import 'package:tasks_project/presentation/common/components/priority_tag.dart';
import 'package:tasks_project/presentation/common/components/status_tag.dart';
import 'package:tasks_project/presentation/common/components/tp_button.dart';
import 'package:tasks_project/presentation/common/components/tp_snack_bar.dart';
import 'package:tasks_project/presentation/common/components/tp_textfield.dart';
import 'package:tasks_project/presentation/common/constants.dart';
import 'package:tasks_project/presentation/edit_task/edit_task_bloc/edit_task_bloc.dart';

class EditTask extends StatefulWidget {
  final Task task;
  const EditTask({super.key, required this.task});

  @override
  State<EditTask> createState() => _EditTaskState();
}

class _EditTaskState extends State<EditTask> {
  PriorityType selectedPriority = PriorityType.low;
  Status selectedStatus = Status.inProgress;

  final TextEditingController taskTitleController = TextEditingController();
  final TextEditingController taskDescriptionController =
      TextEditingController();

  @override
  void initState() {
    taskTitleController.text = widget.task.title;
    taskDescriptionController.text = widget.task.description;
    selectedPriority = widget.task.priority;
    selectedStatus = widget.task.status;
    super.initState();
  }

  @override
  void dispose() {
    taskTitleController.dispose();
    taskDescriptionController.dispose();
    selectedPriority = PriorityType.low;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EditTaskBloc>(
      create: (context) => serviceLocator.get<EditTaskBloc>(),
      child: BlocConsumer<EditTaskBloc, EditTaskState>(
        listener: (context, state) {
          if (state is DeleteTaskSuccess || state is EditTaskSuccess) {
            context.pop(true);
          }
          if (state is EditTaskError) {
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
                    children: [Text('Edit task')],
                  ),
                  actions: [
                    ButtonBar(
                      children: [
                        InkWell(
                          child: const Text(
                            'Remove',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            context.showCustomPopup(
                                onSubmitClick: () {
                                  context
                                      .read<EditTaskBloc>()
                                      .add(DeleteTaskEvent(widget.task.id));
                                },
                                onCancelClick: () {
                                  context.pop();
                                },
                                title: 'Remove',
                                message:
                                    'Are you sure that you want to remove this task?',
                                submitTitle: 'Remove',
                                cancelTitle: 'Cancel',
                                submitColor: TPColors.highTagTitle,
                                cancelColor: TPColors.secondaryButton);
                          },
                        )
                      ],
                    )
                  ],
                )),
            body: LayoutBuilder(
              builder: (context, size) => SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: size.maxHeight),
                  child: IntrinsicHeight(
                    child: Padding(
                      padding: const EdgeInsets.all(TPMargins.margin20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Status',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Radio(
                                value: Status.inProgress,
                                groupValue: selectedStatus,
                                onChanged: (value) {
                                  selectStatus(value);
                                },
                              ),
                              const StatusTag(status: Status.inProgress),
                              Radio(
                                value: Status.done,
                                groupValue: selectedStatus,
                                onChanged: (value) {
                                  selectStatus(value);
                                },
                              ),
                              const StatusTag(status: Status.done),
                            ],
                          ),
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
                              controller: taskTitleController,
                            ),
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
                              controller: taskDescriptionController,
                            ),
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
                          Expanded(child: SizedBox()),
                          TPButton(
                              onClick: () {
                                editTask(context);
                              },
                              title: 'Edit task',
                              isLoading: state is EditTaskLoading,
                              color: TPColors.primaryButton,
                              titleColor: TPColors.secondaryBackground),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
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

  selectStatus(Status? status) {
    if (status != null) {
      setState(() {
        selectedStatus = status!;
      });
    }
  }

  editTask(BuildContext context) {
    final task = EditTaskDto(
        id: widget.task.id,
        title: taskTitleController.text,
        description: taskDescriptionController.text,
        priority: selectedPriority.value,
        done: selectedStatus.value);
    context.read<EditTaskBloc>().add(PatchTaskEvent(task));
  }
}
