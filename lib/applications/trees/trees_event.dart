part of 'trees_bloc.dart';

@freezed
sealed class TreesEvent with _$TreesEvent {
  const factory TreesEvent.fetchTrees() = _FetchTrees;
}