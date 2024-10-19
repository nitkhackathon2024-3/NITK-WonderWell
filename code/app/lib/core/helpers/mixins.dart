import 'package:flutter/material.dart';

mixin SearchableMixin<T> {
  late List<T> initialSearchList;
  late bool Function(T, String) searchPredicate;
  late final ValueNotifier<List<T>> searchValueNotifier =
      ValueNotifier<List<T>>(initialSearchList);

  late TextEditingController searchController = TextEditingController()
    ..addListener(() {
      searchValueNotifier.value = [];
      for (final ele in initialSearchList) {
        if (searchPredicate(ele, searchController.text)) {
          searchValueNotifier.value.add(ele);
        }
      }
    });
}
