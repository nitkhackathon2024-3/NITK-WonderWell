// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tree_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TreeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String treeId) fetchTree,
    required TResult Function(TreeDetails tree, TreeTemplate treeTemplate)
        addNode,
    required TResult Function(TreeDetails tree) suggestNodes,
    required TResult Function(TreeDetails tree, String nodeId) deleteNode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String treeId)? fetchTree,
    TResult? Function(TreeDetails tree, TreeTemplate treeTemplate)? addNode,
    TResult? Function(TreeDetails tree)? suggestNodes,
    TResult? Function(TreeDetails tree, String nodeId)? deleteNode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String treeId)? fetchTree,
    TResult Function(TreeDetails tree, TreeTemplate treeTemplate)? addNode,
    TResult Function(TreeDetails tree)? suggestNodes,
    TResult Function(TreeDetails tree, String nodeId)? deleteNode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTree value) fetchTree,
    required TResult Function(_AddNode value) addNode,
    required TResult Function(_SuggestNodes value) suggestNodes,
    required TResult Function(_DeleteNode value) deleteNode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTree value)? fetchTree,
    TResult? Function(_AddNode value)? addNode,
    TResult? Function(_SuggestNodes value)? suggestNodes,
    TResult? Function(_DeleteNode value)? deleteNode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTree value)? fetchTree,
    TResult Function(_AddNode value)? addNode,
    TResult Function(_SuggestNodes value)? suggestNodes,
    TResult Function(_DeleteNode value)? deleteNode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeEventCopyWith<$Res> {
  factory $TreeEventCopyWith(TreeEvent value, $Res Function(TreeEvent) then) =
      _$TreeEventCopyWithImpl<$Res, TreeEvent>;
}

/// @nodoc
class _$TreeEventCopyWithImpl<$Res, $Val extends TreeEvent>
    implements $TreeEventCopyWith<$Res> {
  _$TreeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TreeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchTreeImplCopyWith<$Res> {
  factory _$$FetchTreeImplCopyWith(
          _$FetchTreeImpl value, $Res Function(_$FetchTreeImpl) then) =
      __$$FetchTreeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String treeId});
}

/// @nodoc
class __$$FetchTreeImplCopyWithImpl<$Res>
    extends _$TreeEventCopyWithImpl<$Res, _$FetchTreeImpl>
    implements _$$FetchTreeImplCopyWith<$Res> {
  __$$FetchTreeImplCopyWithImpl(
      _$FetchTreeImpl _value, $Res Function(_$FetchTreeImpl) _then)
      : super(_value, _then);

  /// Create a copy of TreeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treeId = null,
  }) {
    return _then(_$FetchTreeImpl(
      null == treeId
          ? _value.treeId
          : treeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchTreeImpl implements _FetchTree {
  const _$FetchTreeImpl(this.treeId);

  @override
  final String treeId;

  @override
  String toString() {
    return 'TreeEvent.fetchTree(treeId: $treeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTreeImpl &&
            (identical(other.treeId, treeId) || other.treeId == treeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, treeId);

  /// Create a copy of TreeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTreeImplCopyWith<_$FetchTreeImpl> get copyWith =>
      __$$FetchTreeImplCopyWithImpl<_$FetchTreeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String treeId) fetchTree,
    required TResult Function(TreeDetails tree, TreeTemplate treeTemplate)
        addNode,
    required TResult Function(TreeDetails tree) suggestNodes,
    required TResult Function(TreeDetails tree, String nodeId) deleteNode,
  }) {
    return fetchTree(treeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String treeId)? fetchTree,
    TResult? Function(TreeDetails tree, TreeTemplate treeTemplate)? addNode,
    TResult? Function(TreeDetails tree)? suggestNodes,
    TResult? Function(TreeDetails tree, String nodeId)? deleteNode,
  }) {
    return fetchTree?.call(treeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String treeId)? fetchTree,
    TResult Function(TreeDetails tree, TreeTemplate treeTemplate)? addNode,
    TResult Function(TreeDetails tree)? suggestNodes,
    TResult Function(TreeDetails tree, String nodeId)? deleteNode,
    required TResult orElse(),
  }) {
    if (fetchTree != null) {
      return fetchTree(treeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTree value) fetchTree,
    required TResult Function(_AddNode value) addNode,
    required TResult Function(_SuggestNodes value) suggestNodes,
    required TResult Function(_DeleteNode value) deleteNode,
  }) {
    return fetchTree(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTree value)? fetchTree,
    TResult? Function(_AddNode value)? addNode,
    TResult? Function(_SuggestNodes value)? suggestNodes,
    TResult? Function(_DeleteNode value)? deleteNode,
  }) {
    return fetchTree?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTree value)? fetchTree,
    TResult Function(_AddNode value)? addNode,
    TResult Function(_SuggestNodes value)? suggestNodes,
    TResult Function(_DeleteNode value)? deleteNode,
    required TResult orElse(),
  }) {
    if (fetchTree != null) {
      return fetchTree(this);
    }
    return orElse();
  }
}

abstract class _FetchTree implements TreeEvent {
  const factory _FetchTree(final String treeId) = _$FetchTreeImpl;

  String get treeId;

  /// Create a copy of TreeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchTreeImplCopyWith<_$FetchTreeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNodeImplCopyWith<$Res> {
  factory _$$AddNodeImplCopyWith(
          _$AddNodeImpl value, $Res Function(_$AddNodeImpl) then) =
      __$$AddNodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TreeDetails tree, TreeTemplate treeTemplate});
}

/// @nodoc
class __$$AddNodeImplCopyWithImpl<$Res>
    extends _$TreeEventCopyWithImpl<$Res, _$AddNodeImpl>
    implements _$$AddNodeImplCopyWith<$Res> {
  __$$AddNodeImplCopyWithImpl(
      _$AddNodeImpl _value, $Res Function(_$AddNodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of TreeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tree = null,
    Object? treeTemplate = null,
  }) {
    return _then(_$AddNodeImpl(
      tree: null == tree
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as TreeDetails,
      treeTemplate: null == treeTemplate
          ? _value.treeTemplate
          : treeTemplate // ignore: cast_nullable_to_non_nullable
              as TreeTemplate,
    ));
  }
}

/// @nodoc

class _$AddNodeImpl implements _AddNode {
  const _$AddNodeImpl({required this.tree, required this.treeTemplate});

  @override
  final TreeDetails tree;
  @override
  final TreeTemplate treeTemplate;

  @override
  String toString() {
    return 'TreeEvent.addNode(tree: $tree, treeTemplate: $treeTemplate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNodeImpl &&
            (identical(other.tree, tree) || other.tree == tree) &&
            (identical(other.treeTemplate, treeTemplate) ||
                other.treeTemplate == treeTemplate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tree, treeTemplate);

  /// Create a copy of TreeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNodeImplCopyWith<_$AddNodeImpl> get copyWith =>
      __$$AddNodeImplCopyWithImpl<_$AddNodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String treeId) fetchTree,
    required TResult Function(TreeDetails tree, TreeTemplate treeTemplate)
        addNode,
    required TResult Function(TreeDetails tree) suggestNodes,
    required TResult Function(TreeDetails tree, String nodeId) deleteNode,
  }) {
    return addNode(tree, treeTemplate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String treeId)? fetchTree,
    TResult? Function(TreeDetails tree, TreeTemplate treeTemplate)? addNode,
    TResult? Function(TreeDetails tree)? suggestNodes,
    TResult? Function(TreeDetails tree, String nodeId)? deleteNode,
  }) {
    return addNode?.call(tree, treeTemplate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String treeId)? fetchTree,
    TResult Function(TreeDetails tree, TreeTemplate treeTemplate)? addNode,
    TResult Function(TreeDetails tree)? suggestNodes,
    TResult Function(TreeDetails tree, String nodeId)? deleteNode,
    required TResult orElse(),
  }) {
    if (addNode != null) {
      return addNode(tree, treeTemplate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTree value) fetchTree,
    required TResult Function(_AddNode value) addNode,
    required TResult Function(_SuggestNodes value) suggestNodes,
    required TResult Function(_DeleteNode value) deleteNode,
  }) {
    return addNode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTree value)? fetchTree,
    TResult? Function(_AddNode value)? addNode,
    TResult? Function(_SuggestNodes value)? suggestNodes,
    TResult? Function(_DeleteNode value)? deleteNode,
  }) {
    return addNode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTree value)? fetchTree,
    TResult Function(_AddNode value)? addNode,
    TResult Function(_SuggestNodes value)? suggestNodes,
    TResult Function(_DeleteNode value)? deleteNode,
    required TResult orElse(),
  }) {
    if (addNode != null) {
      return addNode(this);
    }
    return orElse();
  }
}

abstract class _AddNode implements TreeEvent {
  const factory _AddNode(
      {required final TreeDetails tree,
      required final TreeTemplate treeTemplate}) = _$AddNodeImpl;

  TreeDetails get tree;
  TreeTemplate get treeTemplate;

  /// Create a copy of TreeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddNodeImplCopyWith<_$AddNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuggestNodesImplCopyWith<$Res> {
  factory _$$SuggestNodesImplCopyWith(
          _$SuggestNodesImpl value, $Res Function(_$SuggestNodesImpl) then) =
      __$$SuggestNodesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TreeDetails tree});
}

/// @nodoc
class __$$SuggestNodesImplCopyWithImpl<$Res>
    extends _$TreeEventCopyWithImpl<$Res, _$SuggestNodesImpl>
    implements _$$SuggestNodesImplCopyWith<$Res> {
  __$$SuggestNodesImplCopyWithImpl(
      _$SuggestNodesImpl _value, $Res Function(_$SuggestNodesImpl) _then)
      : super(_value, _then);

  /// Create a copy of TreeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tree = null,
  }) {
    return _then(_$SuggestNodesImpl(
      tree: null == tree
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as TreeDetails,
    ));
  }
}

/// @nodoc

class _$SuggestNodesImpl implements _SuggestNodes {
  const _$SuggestNodesImpl({required this.tree});

  @override
  final TreeDetails tree;

  @override
  String toString() {
    return 'TreeEvent.suggestNodes(tree: $tree)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuggestNodesImpl &&
            (identical(other.tree, tree) || other.tree == tree));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tree);

  /// Create a copy of TreeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuggestNodesImplCopyWith<_$SuggestNodesImpl> get copyWith =>
      __$$SuggestNodesImplCopyWithImpl<_$SuggestNodesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String treeId) fetchTree,
    required TResult Function(TreeDetails tree, TreeTemplate treeTemplate)
        addNode,
    required TResult Function(TreeDetails tree) suggestNodes,
    required TResult Function(TreeDetails tree, String nodeId) deleteNode,
  }) {
    return suggestNodes(tree);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String treeId)? fetchTree,
    TResult? Function(TreeDetails tree, TreeTemplate treeTemplate)? addNode,
    TResult? Function(TreeDetails tree)? suggestNodes,
    TResult? Function(TreeDetails tree, String nodeId)? deleteNode,
  }) {
    return suggestNodes?.call(tree);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String treeId)? fetchTree,
    TResult Function(TreeDetails tree, TreeTemplate treeTemplate)? addNode,
    TResult Function(TreeDetails tree)? suggestNodes,
    TResult Function(TreeDetails tree, String nodeId)? deleteNode,
    required TResult orElse(),
  }) {
    if (suggestNodes != null) {
      return suggestNodes(tree);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTree value) fetchTree,
    required TResult Function(_AddNode value) addNode,
    required TResult Function(_SuggestNodes value) suggestNodes,
    required TResult Function(_DeleteNode value) deleteNode,
  }) {
    return suggestNodes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTree value)? fetchTree,
    TResult? Function(_AddNode value)? addNode,
    TResult? Function(_SuggestNodes value)? suggestNodes,
    TResult? Function(_DeleteNode value)? deleteNode,
  }) {
    return suggestNodes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTree value)? fetchTree,
    TResult Function(_AddNode value)? addNode,
    TResult Function(_SuggestNodes value)? suggestNodes,
    TResult Function(_DeleteNode value)? deleteNode,
    required TResult orElse(),
  }) {
    if (suggestNodes != null) {
      return suggestNodes(this);
    }
    return orElse();
  }
}

abstract class _SuggestNodes implements TreeEvent {
  const factory _SuggestNodes({required final TreeDetails tree}) =
      _$SuggestNodesImpl;

  TreeDetails get tree;

  /// Create a copy of TreeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuggestNodesImplCopyWith<_$SuggestNodesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteNodeImplCopyWith<$Res> {
  factory _$$DeleteNodeImplCopyWith(
          _$DeleteNodeImpl value, $Res Function(_$DeleteNodeImpl) then) =
      __$$DeleteNodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TreeDetails tree, String nodeId});
}

/// @nodoc
class __$$DeleteNodeImplCopyWithImpl<$Res>
    extends _$TreeEventCopyWithImpl<$Res, _$DeleteNodeImpl>
    implements _$$DeleteNodeImplCopyWith<$Res> {
  __$$DeleteNodeImplCopyWithImpl(
      _$DeleteNodeImpl _value, $Res Function(_$DeleteNodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of TreeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tree = null,
    Object? nodeId = null,
  }) {
    return _then(_$DeleteNodeImpl(
      tree: null == tree
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as TreeDetails,
      nodeId: null == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteNodeImpl implements _DeleteNode {
  const _$DeleteNodeImpl({required this.tree, required this.nodeId});

  @override
  final TreeDetails tree;
  @override
  final String nodeId;

  @override
  String toString() {
    return 'TreeEvent.deleteNode(tree: $tree, nodeId: $nodeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNodeImpl &&
            (identical(other.tree, tree) || other.tree == tree) &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tree, nodeId);

  /// Create a copy of TreeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNodeImplCopyWith<_$DeleteNodeImpl> get copyWith =>
      __$$DeleteNodeImplCopyWithImpl<_$DeleteNodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String treeId) fetchTree,
    required TResult Function(TreeDetails tree, TreeTemplate treeTemplate)
        addNode,
    required TResult Function(TreeDetails tree) suggestNodes,
    required TResult Function(TreeDetails tree, String nodeId) deleteNode,
  }) {
    return deleteNode(tree, nodeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String treeId)? fetchTree,
    TResult? Function(TreeDetails tree, TreeTemplate treeTemplate)? addNode,
    TResult? Function(TreeDetails tree)? suggestNodes,
    TResult? Function(TreeDetails tree, String nodeId)? deleteNode,
  }) {
    return deleteNode?.call(tree, nodeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String treeId)? fetchTree,
    TResult Function(TreeDetails tree, TreeTemplate treeTemplate)? addNode,
    TResult Function(TreeDetails tree)? suggestNodes,
    TResult Function(TreeDetails tree, String nodeId)? deleteNode,
    required TResult orElse(),
  }) {
    if (deleteNode != null) {
      return deleteNode(tree, nodeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTree value) fetchTree,
    required TResult Function(_AddNode value) addNode,
    required TResult Function(_SuggestNodes value) suggestNodes,
    required TResult Function(_DeleteNode value) deleteNode,
  }) {
    return deleteNode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTree value)? fetchTree,
    TResult? Function(_AddNode value)? addNode,
    TResult? Function(_SuggestNodes value)? suggestNodes,
    TResult? Function(_DeleteNode value)? deleteNode,
  }) {
    return deleteNode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTree value)? fetchTree,
    TResult Function(_AddNode value)? addNode,
    TResult Function(_SuggestNodes value)? suggestNodes,
    TResult Function(_DeleteNode value)? deleteNode,
    required TResult orElse(),
  }) {
    if (deleteNode != null) {
      return deleteNode(this);
    }
    return orElse();
  }
}

abstract class _DeleteNode implements TreeEvent {
  const factory _DeleteNode(
      {required final TreeDetails tree,
      required final String nodeId}) = _$DeleteNodeImpl;

  TreeDetails get tree;
  String get nodeId;

  /// Create a copy of TreeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteNodeImplCopyWith<_$DeleteNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TreeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TreeDetails tree) loaded,
    required TResult Function() updatedTree,
    required TResult Function(AppFailure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TreeDetails tree)? loaded,
    TResult? Function()? updatedTree,
    TResult? Function(AppFailure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TreeDetails tree)? loaded,
    TResult Function()? updatedTree,
    TResult Function(AppFailure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(UpdatedTree value) updatedTree,
    required TResult Function(TreeError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(UpdatedTree value)? updatedTree,
    TResult? Function(TreeError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(UpdatedTree value)? updatedTree,
    TResult Function(TreeError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeStateCopyWith<$Res> {
  factory $TreeStateCopyWith(TreeState value, $Res Function(TreeState) then) =
      _$TreeStateCopyWithImpl<$Res, TreeState>;
}

/// @nodoc
class _$TreeStateCopyWithImpl<$Res, $Val extends TreeState>
    implements $TreeStateCopyWith<$Res> {
  _$TreeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TreeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$TreeStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TreeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'TreeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TreeDetails tree) loaded,
    required TResult Function() updatedTree,
    required TResult Function(AppFailure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TreeDetails tree)? loaded,
    TResult? Function()? updatedTree,
    TResult? Function(AppFailure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TreeDetails tree)? loaded,
    TResult Function()? updatedTree,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(UpdatedTree value) updatedTree,
    required TResult Function(TreeError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(UpdatedTree value)? updatedTree,
    TResult? Function(TreeError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(UpdatedTree value)? updatedTree,
    TResult Function(TreeError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements TreeState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TreeDetails tree});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$TreeStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TreeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tree = null,
  }) {
    return _then(_$LoadedImpl(
      null == tree
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as TreeDetails,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl(this.tree);

  @override
  final TreeDetails tree;

  @override
  String toString() {
    return 'TreeState.loaded(tree: $tree)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.tree, tree) || other.tree == tree));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tree);

  /// Create a copy of TreeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TreeDetails tree) loaded,
    required TResult Function() updatedTree,
    required TResult Function(AppFailure failure) error,
  }) {
    return loaded(tree);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TreeDetails tree)? loaded,
    TResult? Function()? updatedTree,
    TResult? Function(AppFailure failure)? error,
  }) {
    return loaded?.call(tree);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TreeDetails tree)? loaded,
    TResult Function()? updatedTree,
    TResult Function(AppFailure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tree);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(UpdatedTree value) updatedTree,
    required TResult Function(TreeError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(UpdatedTree value)? updatedTree,
    TResult? Function(TreeError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(UpdatedTree value)? updatedTree,
    TResult Function(TreeError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements TreeState {
  const factory Loaded(final TreeDetails tree) = _$LoadedImpl;

  TreeDetails get tree;

  /// Create a copy of TreeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedTreeImplCopyWith<$Res> {
  factory _$$UpdatedTreeImplCopyWith(
          _$UpdatedTreeImpl value, $Res Function(_$UpdatedTreeImpl) then) =
      __$$UpdatedTreeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatedTreeImplCopyWithImpl<$Res>
    extends _$TreeStateCopyWithImpl<$Res, _$UpdatedTreeImpl>
    implements _$$UpdatedTreeImplCopyWith<$Res> {
  __$$UpdatedTreeImplCopyWithImpl(
      _$UpdatedTreeImpl _value, $Res Function(_$UpdatedTreeImpl) _then)
      : super(_value, _then);

  /// Create a copy of TreeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdatedTreeImpl implements UpdatedTree {
  const _$UpdatedTreeImpl();

  @override
  String toString() {
    return 'TreeState.updatedTree()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdatedTreeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TreeDetails tree) loaded,
    required TResult Function() updatedTree,
    required TResult Function(AppFailure failure) error,
  }) {
    return updatedTree();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TreeDetails tree)? loaded,
    TResult? Function()? updatedTree,
    TResult? Function(AppFailure failure)? error,
  }) {
    return updatedTree?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TreeDetails tree)? loaded,
    TResult Function()? updatedTree,
    TResult Function(AppFailure failure)? error,
    required TResult orElse(),
  }) {
    if (updatedTree != null) {
      return updatedTree();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(UpdatedTree value) updatedTree,
    required TResult Function(TreeError value) error,
  }) {
    return updatedTree(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(UpdatedTree value)? updatedTree,
    TResult? Function(TreeError value)? error,
  }) {
    return updatedTree?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(UpdatedTree value)? updatedTree,
    TResult Function(TreeError value)? error,
    required TResult orElse(),
  }) {
    if (updatedTree != null) {
      return updatedTree(this);
    }
    return orElse();
  }
}

abstract class UpdatedTree implements TreeState {
  const factory UpdatedTree() = _$UpdatedTreeImpl;
}

/// @nodoc
abstract class _$$TreeErrorImplCopyWith<$Res> {
  factory _$$TreeErrorImplCopyWith(
          _$TreeErrorImpl value, $Res Function(_$TreeErrorImpl) then) =
      __$$TreeErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppFailure failure});
}

/// @nodoc
class __$$TreeErrorImplCopyWithImpl<$Res>
    extends _$TreeStateCopyWithImpl<$Res, _$TreeErrorImpl>
    implements _$$TreeErrorImplCopyWith<$Res> {
  __$$TreeErrorImplCopyWithImpl(
      _$TreeErrorImpl _value, $Res Function(_$TreeErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TreeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$TreeErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure,
    ));
  }
}

/// @nodoc

class _$TreeErrorImpl implements TreeError {
  const _$TreeErrorImpl(this.failure);

  @override
  final AppFailure failure;

  @override
  String toString() {
    return 'TreeState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of TreeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TreeErrorImplCopyWith<_$TreeErrorImpl> get copyWith =>
      __$$TreeErrorImplCopyWithImpl<_$TreeErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(TreeDetails tree) loaded,
    required TResult Function() updatedTree,
    required TResult Function(AppFailure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(TreeDetails tree)? loaded,
    TResult? Function()? updatedTree,
    TResult? Function(AppFailure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(TreeDetails tree)? loaded,
    TResult Function()? updatedTree,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(UpdatedTree value) updatedTree,
    required TResult Function(TreeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(UpdatedTree value)? updatedTree,
    TResult? Function(TreeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(UpdatedTree value)? updatedTree,
    TResult Function(TreeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TreeError implements TreeState {
  const factory TreeError(final AppFailure failure) = _$TreeErrorImpl;

  AppFailure get failure;

  /// Create a copy of TreeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TreeErrorImplCopyWith<_$TreeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
