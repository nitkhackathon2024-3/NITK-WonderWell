// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trees_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TreesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTrees,
    required TResult Function(TreeTemplate treeTemplate) createTree,
    required TResult Function(Tree tree) deleteTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTrees,
    TResult? Function(TreeTemplate treeTemplate)? createTree,
    TResult? Function(Tree tree)? deleteTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTrees,
    TResult Function(TreeTemplate treeTemplate)? createTree,
    TResult Function(Tree tree)? deleteTree,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTrees value) fetchTrees,
    required TResult Function(_CreateTree value) createTree,
    required TResult Function(_DeleteTree value) deleteTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTrees value)? fetchTrees,
    TResult? Function(_CreateTree value)? createTree,
    TResult? Function(_DeleteTree value)? deleteTree,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTrees value)? fetchTrees,
    TResult Function(_CreateTree value)? createTree,
    TResult Function(_DeleteTree value)? deleteTree,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreesEventCopyWith<$Res> {
  factory $TreesEventCopyWith(
          TreesEvent value, $Res Function(TreesEvent) then) =
      _$TreesEventCopyWithImpl<$Res, TreesEvent>;
}

/// @nodoc
class _$TreesEventCopyWithImpl<$Res, $Val extends TreesEvent>
    implements $TreesEventCopyWith<$Res> {
  _$TreesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TreesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchTreesImplCopyWith<$Res> {
  factory _$$FetchTreesImplCopyWith(
          _$FetchTreesImpl value, $Res Function(_$FetchTreesImpl) then) =
      __$$FetchTreesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTreesImplCopyWithImpl<$Res>
    extends _$TreesEventCopyWithImpl<$Res, _$FetchTreesImpl>
    implements _$$FetchTreesImplCopyWith<$Res> {
  __$$FetchTreesImplCopyWithImpl(
      _$FetchTreesImpl _value, $Res Function(_$FetchTreesImpl) _then)
      : super(_value, _then);

  /// Create a copy of TreesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchTreesImpl implements _FetchTrees {
  const _$FetchTreesImpl();

  @override
  String toString() {
    return 'TreesEvent.fetchTrees()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchTreesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTrees,
    required TResult Function(TreeTemplate treeTemplate) createTree,
    required TResult Function(Tree tree) deleteTree,
  }) {
    return fetchTrees();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTrees,
    TResult? Function(TreeTemplate treeTemplate)? createTree,
    TResult? Function(Tree tree)? deleteTree,
  }) {
    return fetchTrees?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTrees,
    TResult Function(TreeTemplate treeTemplate)? createTree,
    TResult Function(Tree tree)? deleteTree,
    required TResult orElse(),
  }) {
    if (fetchTrees != null) {
      return fetchTrees();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTrees value) fetchTrees,
    required TResult Function(_CreateTree value) createTree,
    required TResult Function(_DeleteTree value) deleteTree,
  }) {
    return fetchTrees(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTrees value)? fetchTrees,
    TResult? Function(_CreateTree value)? createTree,
    TResult? Function(_DeleteTree value)? deleteTree,
  }) {
    return fetchTrees?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTrees value)? fetchTrees,
    TResult Function(_CreateTree value)? createTree,
    TResult Function(_DeleteTree value)? deleteTree,
    required TResult orElse(),
  }) {
    if (fetchTrees != null) {
      return fetchTrees(this);
    }
    return orElse();
  }
}

abstract class _FetchTrees implements TreesEvent {
  const factory _FetchTrees() = _$FetchTreesImpl;
}

/// @nodoc
abstract class _$$CreateTreeImplCopyWith<$Res> {
  factory _$$CreateTreeImplCopyWith(
          _$CreateTreeImpl value, $Res Function(_$CreateTreeImpl) then) =
      __$$CreateTreeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TreeTemplate treeTemplate});
}

/// @nodoc
class __$$CreateTreeImplCopyWithImpl<$Res>
    extends _$TreesEventCopyWithImpl<$Res, _$CreateTreeImpl>
    implements _$$CreateTreeImplCopyWith<$Res> {
  __$$CreateTreeImplCopyWithImpl(
      _$CreateTreeImpl _value, $Res Function(_$CreateTreeImpl) _then)
      : super(_value, _then);

  /// Create a copy of TreesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treeTemplate = null,
  }) {
    return _then(_$CreateTreeImpl(
      null == treeTemplate
          ? _value.treeTemplate
          : treeTemplate // ignore: cast_nullable_to_non_nullable
              as TreeTemplate,
    ));
  }
}

/// @nodoc

class _$CreateTreeImpl implements _CreateTree {
  const _$CreateTreeImpl(this.treeTemplate);

  @override
  final TreeTemplate treeTemplate;

  @override
  String toString() {
    return 'TreesEvent.createTree(treeTemplate: $treeTemplate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTreeImpl &&
            (identical(other.treeTemplate, treeTemplate) ||
                other.treeTemplate == treeTemplate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, treeTemplate);

  /// Create a copy of TreesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTreeImplCopyWith<_$CreateTreeImpl> get copyWith =>
      __$$CreateTreeImplCopyWithImpl<_$CreateTreeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTrees,
    required TResult Function(TreeTemplate treeTemplate) createTree,
    required TResult Function(Tree tree) deleteTree,
  }) {
    return createTree(treeTemplate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTrees,
    TResult? Function(TreeTemplate treeTemplate)? createTree,
    TResult? Function(Tree tree)? deleteTree,
  }) {
    return createTree?.call(treeTemplate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTrees,
    TResult Function(TreeTemplate treeTemplate)? createTree,
    TResult Function(Tree tree)? deleteTree,
    required TResult orElse(),
  }) {
    if (createTree != null) {
      return createTree(treeTemplate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTrees value) fetchTrees,
    required TResult Function(_CreateTree value) createTree,
    required TResult Function(_DeleteTree value) deleteTree,
  }) {
    return createTree(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTrees value)? fetchTrees,
    TResult? Function(_CreateTree value)? createTree,
    TResult? Function(_DeleteTree value)? deleteTree,
  }) {
    return createTree?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTrees value)? fetchTrees,
    TResult Function(_CreateTree value)? createTree,
    TResult Function(_DeleteTree value)? deleteTree,
    required TResult orElse(),
  }) {
    if (createTree != null) {
      return createTree(this);
    }
    return orElse();
  }
}

abstract class _CreateTree implements TreesEvent {
  const factory _CreateTree(final TreeTemplate treeTemplate) = _$CreateTreeImpl;

  TreeTemplate get treeTemplate;

  /// Create a copy of TreesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTreeImplCopyWith<_$CreateTreeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTreeImplCopyWith<$Res> {
  factory _$$DeleteTreeImplCopyWith(
          _$DeleteTreeImpl value, $Res Function(_$DeleteTreeImpl) then) =
      __$$DeleteTreeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Tree tree});
}

/// @nodoc
class __$$DeleteTreeImplCopyWithImpl<$Res>
    extends _$TreesEventCopyWithImpl<$Res, _$DeleteTreeImpl>
    implements _$$DeleteTreeImplCopyWith<$Res> {
  __$$DeleteTreeImplCopyWithImpl(
      _$DeleteTreeImpl _value, $Res Function(_$DeleteTreeImpl) _then)
      : super(_value, _then);

  /// Create a copy of TreesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tree = null,
  }) {
    return _then(_$DeleteTreeImpl(
      null == tree
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as Tree,
    ));
  }
}

/// @nodoc

class _$DeleteTreeImpl implements _DeleteTree {
  const _$DeleteTreeImpl(this.tree);

  @override
  final Tree tree;

  @override
  String toString() {
    return 'TreesEvent.deleteTree(tree: $tree)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTreeImpl &&
            (identical(other.tree, tree) || other.tree == tree));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tree);

  /// Create a copy of TreesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTreeImplCopyWith<_$DeleteTreeImpl> get copyWith =>
      __$$DeleteTreeImplCopyWithImpl<_$DeleteTreeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTrees,
    required TResult Function(TreeTemplate treeTemplate) createTree,
    required TResult Function(Tree tree) deleteTree,
  }) {
    return deleteTree(tree);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTrees,
    TResult? Function(TreeTemplate treeTemplate)? createTree,
    TResult? Function(Tree tree)? deleteTree,
  }) {
    return deleteTree?.call(tree);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTrees,
    TResult Function(TreeTemplate treeTemplate)? createTree,
    TResult Function(Tree tree)? deleteTree,
    required TResult orElse(),
  }) {
    if (deleteTree != null) {
      return deleteTree(tree);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTrees value) fetchTrees,
    required TResult Function(_CreateTree value) createTree,
    required TResult Function(_DeleteTree value) deleteTree,
  }) {
    return deleteTree(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTrees value)? fetchTrees,
    TResult? Function(_CreateTree value)? createTree,
    TResult? Function(_DeleteTree value)? deleteTree,
  }) {
    return deleteTree?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTrees value)? fetchTrees,
    TResult Function(_CreateTree value)? createTree,
    TResult Function(_DeleteTree value)? deleteTree,
    required TResult orElse(),
  }) {
    if (deleteTree != null) {
      return deleteTree(this);
    }
    return orElse();
  }
}

abstract class _DeleteTree implements TreesEvent {
  const factory _DeleteTree(final Tree tree) = _$DeleteTreeImpl;

  Tree get tree;

  /// Create a copy of TreesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTreeImplCopyWith<_$DeleteTreeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TreesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Tree> trees) loaded,
    required TResult Function() updatedTrees,
    required TResult Function(AppFailure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Tree> trees)? loaded,
    TResult? Function()? updatedTrees,
    TResult? Function(AppFailure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Tree> trees)? loaded,
    TResult Function()? updatedTrees,
    TResult Function(AppFailure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TreesLoading value) loading,
    required TResult Function(LoadedTress value) loaded,
    required TResult Function(UpdatedTrees value) updatedTrees,
    required TResult Function(TreesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TreesLoading value)? loading,
    TResult? Function(LoadedTress value)? loaded,
    TResult? Function(UpdatedTrees value)? updatedTrees,
    TResult? Function(TreesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TreesLoading value)? loading,
    TResult Function(LoadedTress value)? loaded,
    TResult Function(UpdatedTrees value)? updatedTrees,
    TResult Function(TreesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreesStateCopyWith<$Res> {
  factory $TreesStateCopyWith(
          TreesState value, $Res Function(TreesState) then) =
      _$TreesStateCopyWithImpl<$Res, TreesState>;
}

/// @nodoc
class _$TreesStateCopyWithImpl<$Res, $Val extends TreesState>
    implements $TreesStateCopyWith<$Res> {
  _$TreesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TreesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TreesLoadingImplCopyWith<$Res> {
  factory _$$TreesLoadingImplCopyWith(
          _$TreesLoadingImpl value, $Res Function(_$TreesLoadingImpl) then) =
      __$$TreesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TreesLoadingImplCopyWithImpl<$Res>
    extends _$TreesStateCopyWithImpl<$Res, _$TreesLoadingImpl>
    implements _$$TreesLoadingImplCopyWith<$Res> {
  __$$TreesLoadingImplCopyWithImpl(
      _$TreesLoadingImpl _value, $Res Function(_$TreesLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TreesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TreesLoadingImpl implements TreesLoading {
  const _$TreesLoadingImpl();

  @override
  String toString() {
    return 'TreesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TreesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Tree> trees) loaded,
    required TResult Function() updatedTrees,
    required TResult Function(AppFailure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Tree> trees)? loaded,
    TResult? Function()? updatedTrees,
    TResult? Function(AppFailure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Tree> trees)? loaded,
    TResult Function()? updatedTrees,
    TResult Function(AppFailure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TreesLoading value) loading,
    required TResult Function(LoadedTress value) loaded,
    required TResult Function(UpdatedTrees value) updatedTrees,
    required TResult Function(TreesError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TreesLoading value)? loading,
    TResult? Function(LoadedTress value)? loaded,
    TResult? Function(UpdatedTrees value)? updatedTrees,
    TResult? Function(TreesError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TreesLoading value)? loading,
    TResult Function(LoadedTress value)? loaded,
    TResult Function(UpdatedTrees value)? updatedTrees,
    TResult Function(TreesError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TreesLoading implements TreesState {
  const factory TreesLoading() = _$TreesLoadingImpl;
}

/// @nodoc
abstract class _$$LoadedTressImplCopyWith<$Res> {
  factory _$$LoadedTressImplCopyWith(
          _$LoadedTressImpl value, $Res Function(_$LoadedTressImpl) then) =
      __$$LoadedTressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Tree> trees});
}

/// @nodoc
class __$$LoadedTressImplCopyWithImpl<$Res>
    extends _$TreesStateCopyWithImpl<$Res, _$LoadedTressImpl>
    implements _$$LoadedTressImplCopyWith<$Res> {
  __$$LoadedTressImplCopyWithImpl(
      _$LoadedTressImpl _value, $Res Function(_$LoadedTressImpl) _then)
      : super(_value, _then);

  /// Create a copy of TreesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trees = null,
  }) {
    return _then(_$LoadedTressImpl(
      null == trees
          ? _value._trees
          : trees // ignore: cast_nullable_to_non_nullable
              as List<Tree>,
    ));
  }
}

/// @nodoc

class _$LoadedTressImpl implements LoadedTress {
  const _$LoadedTressImpl(final List<Tree> trees) : _trees = trees;

  final List<Tree> _trees;
  @override
  List<Tree> get trees {
    if (_trees is EqualUnmodifiableListView) return _trees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trees);
  }

  @override
  String toString() {
    return 'TreesState.loaded(trees: $trees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedTressImpl &&
            const DeepCollectionEquality().equals(other._trees, _trees));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_trees));

  /// Create a copy of TreesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedTressImplCopyWith<_$LoadedTressImpl> get copyWith =>
      __$$LoadedTressImplCopyWithImpl<_$LoadedTressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Tree> trees) loaded,
    required TResult Function() updatedTrees,
    required TResult Function(AppFailure failure) error,
  }) {
    return loaded(trees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Tree> trees)? loaded,
    TResult? Function()? updatedTrees,
    TResult? Function(AppFailure failure)? error,
  }) {
    return loaded?.call(trees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Tree> trees)? loaded,
    TResult Function()? updatedTrees,
    TResult Function(AppFailure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(trees);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TreesLoading value) loading,
    required TResult Function(LoadedTress value) loaded,
    required TResult Function(UpdatedTrees value) updatedTrees,
    required TResult Function(TreesError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TreesLoading value)? loading,
    TResult? Function(LoadedTress value)? loaded,
    TResult? Function(UpdatedTrees value)? updatedTrees,
    TResult? Function(TreesError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TreesLoading value)? loading,
    TResult Function(LoadedTress value)? loaded,
    TResult Function(UpdatedTrees value)? updatedTrees,
    TResult Function(TreesError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedTress implements TreesState {
  const factory LoadedTress(final List<Tree> trees) = _$LoadedTressImpl;

  List<Tree> get trees;

  /// Create a copy of TreesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedTressImplCopyWith<_$LoadedTressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedTreesImplCopyWith<$Res> {
  factory _$$UpdatedTreesImplCopyWith(
          _$UpdatedTreesImpl value, $Res Function(_$UpdatedTreesImpl) then) =
      __$$UpdatedTreesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatedTreesImplCopyWithImpl<$Res>
    extends _$TreesStateCopyWithImpl<$Res, _$UpdatedTreesImpl>
    implements _$$UpdatedTreesImplCopyWith<$Res> {
  __$$UpdatedTreesImplCopyWithImpl(
      _$UpdatedTreesImpl _value, $Res Function(_$UpdatedTreesImpl) _then)
      : super(_value, _then);

  /// Create a copy of TreesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdatedTreesImpl implements UpdatedTrees {
  const _$UpdatedTreesImpl();

  @override
  String toString() {
    return 'TreesState.updatedTrees()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdatedTreesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Tree> trees) loaded,
    required TResult Function() updatedTrees,
    required TResult Function(AppFailure failure) error,
  }) {
    return updatedTrees();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Tree> trees)? loaded,
    TResult? Function()? updatedTrees,
    TResult? Function(AppFailure failure)? error,
  }) {
    return updatedTrees?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Tree> trees)? loaded,
    TResult Function()? updatedTrees,
    TResult Function(AppFailure failure)? error,
    required TResult orElse(),
  }) {
    if (updatedTrees != null) {
      return updatedTrees();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TreesLoading value) loading,
    required TResult Function(LoadedTress value) loaded,
    required TResult Function(UpdatedTrees value) updatedTrees,
    required TResult Function(TreesError value) error,
  }) {
    return updatedTrees(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TreesLoading value)? loading,
    TResult? Function(LoadedTress value)? loaded,
    TResult? Function(UpdatedTrees value)? updatedTrees,
    TResult? Function(TreesError value)? error,
  }) {
    return updatedTrees?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TreesLoading value)? loading,
    TResult Function(LoadedTress value)? loaded,
    TResult Function(UpdatedTrees value)? updatedTrees,
    TResult Function(TreesError value)? error,
    required TResult orElse(),
  }) {
    if (updatedTrees != null) {
      return updatedTrees(this);
    }
    return orElse();
  }
}

abstract class UpdatedTrees implements TreesState {
  const factory UpdatedTrees() = _$UpdatedTreesImpl;
}

/// @nodoc
abstract class _$$TreesErrorImplCopyWith<$Res> {
  factory _$$TreesErrorImplCopyWith(
          _$TreesErrorImpl value, $Res Function(_$TreesErrorImpl) then) =
      __$$TreesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppFailure failure});
}

/// @nodoc
class __$$TreesErrorImplCopyWithImpl<$Res>
    extends _$TreesStateCopyWithImpl<$Res, _$TreesErrorImpl>
    implements _$$TreesErrorImplCopyWith<$Res> {
  __$$TreesErrorImplCopyWithImpl(
      _$TreesErrorImpl _value, $Res Function(_$TreesErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TreesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$TreesErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure,
    ));
  }
}

/// @nodoc

class _$TreesErrorImpl implements TreesError {
  const _$TreesErrorImpl(this.failure);

  @override
  final AppFailure failure;

  @override
  String toString() {
    return 'TreesState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreesErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of TreesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TreesErrorImplCopyWith<_$TreesErrorImpl> get copyWith =>
      __$$TreesErrorImplCopyWithImpl<_$TreesErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Tree> trees) loaded,
    required TResult Function() updatedTrees,
    required TResult Function(AppFailure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Tree> trees)? loaded,
    TResult? Function()? updatedTrees,
    TResult? Function(AppFailure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Tree> trees)? loaded,
    TResult Function()? updatedTrees,
    TResult Function(AppFailure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TreesLoading value) loading,
    required TResult Function(LoadedTress value) loaded,
    required TResult Function(UpdatedTrees value) updatedTrees,
    required TResult Function(TreesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TreesLoading value)? loading,
    TResult? Function(LoadedTress value)? loaded,
    TResult? Function(UpdatedTrees value)? updatedTrees,
    TResult? Function(TreesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TreesLoading value)? loading,
    TResult Function(LoadedTress value)? loaded,
    TResult Function(UpdatedTrees value)? updatedTrees,
    TResult Function(TreesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TreesError implements TreesState {
  const factory TreesError(final AppFailure failure) = _$TreesErrorImpl;

  AppFailure get failure;

  /// Create a copy of TreesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TreesErrorImplCopyWith<_$TreesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
