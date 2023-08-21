import 'package:flutter/material.dart';
import 'package:lindrtodo/Utils/utils.dart';
import 'package:lindrtodo/config/themes/my_drawing.dart';
import 'package:lindrtodo/data/hive/models/task.dart';
import 'package:lindrtodo/data/media_query/space_between.dart';

class ShowSubtask extends StatelessWidget {
  final Task task;
  final Function(int i) update;
  const ShowSubtask({Key? key, required this.task, required this.update})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        for (int i = 0; i < task.subTask!.length; i++)
          Column(
            children: [
              intermediate(10),
              InkWell(
                onTap: () => update(i),
                // _updateTask(i, keyIndex!, personData),
                child: Row(
                  children: [
                    Icon(
                      task.subTask![i].check!
                          ? Icons.check_circle
                          : Icons.circle_outlined,
                      color: MyColors.orange,
                      size: 24,
                    ),
                    limitWidth(5),
                    Text(
                      task.subTask![i].subtaskName!.capitalize(),
                      style: textTheme.bodyLarge,
                    )
                  ],
                ),
              ),
              intermediate(10),
            ],
          )
      ],
    );
  }
}