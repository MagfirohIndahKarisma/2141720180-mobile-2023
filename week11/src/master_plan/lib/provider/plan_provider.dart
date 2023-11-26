import 'package:flutter/material.dart';
import '../models/plan.dart';

class PlanProvider extends InheritedNotifier<ValueNotifier<Plan>> {
  const PlanProvider({
    Key? key,
    required Widget child,
    required ValueNotifier<Plan> notifier,
  }) : super(key: key, child: child, notifier: notifier);

  static ValueNotifier<Plan> of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<PlanProvider>()!.notifier!;
  }
}