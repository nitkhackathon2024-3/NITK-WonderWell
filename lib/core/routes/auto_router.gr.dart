// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:wisdom_well/applications/trees/trees_bloc.dart' as _i10;
import 'package:wisdom_well/core/data/models/user_model.dart' as _i11;
import 'package:wisdom_well/domain/knowledge_trees/entities/node.dart' as _i12;
import 'package:wisdom_well/presentation/account/pages/home_page.dart' as _i2;
import 'package:wisdom_well/presentation/account/pages/login_page.dart' as _i4;
import 'package:wisdom_well/presentation/account/pages/profile_page.dart'
    as _i5;
import 'package:wisdom_well/presentation/account/pages/register_page.dart'
    as _i6;
import 'package:wisdom_well/presentation/knowledge_trees/pages/create_tree_page.dart'
    as _i1;
import 'package:wisdom_well/presentation/knowledge_trees/pages/list_tress_page.dart'
    as _i3;
import 'package:wisdom_well/presentation/knowledge_trees/pages/tree_page.dart'
    as _i7;

/// generated route for
/// [_i1.CreateTreePage]
class CreateTreeRoute extends _i8.PageRouteInfo<CreateTreeRouteArgs> {
  CreateTreeRoute({
    _i9.Key? key,
    required _i10.TreesBloc treesBloc,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          CreateTreeRoute.name,
          args: CreateTreeRouteArgs(
            key: key,
            treesBloc: treesBloc,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateTreeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreateTreeRouteArgs>();
      return _i1.CreateTreePage(
        key: args.key,
        treesBloc: args.treesBloc,
      );
    },
  );
}

class CreateTreeRouteArgs {
  const CreateTreeRouteArgs({
    this.key,
    required this.treesBloc,
  });

  final _i9.Key? key;

  final _i10.TreesBloc treesBloc;

  @override
  String toString() {
    return 'CreateTreeRouteArgs{key: $key, treesBloc: $treesBloc}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.ListTressPage]
class ListTressRoute extends _i8.PageRouteInfo<void> {
  const ListTressRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ListTressRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListTressRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.ListTressPage();
    },
  );
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.LoginPage();
    },
  );
}

/// generated route for
/// [_i5.ProfilePage]
class ProfileRoute extends _i8.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i9.Key? key,
    required _i11.UserModel userModel,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(
            key: key,
            userModel: userModel,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProfileRouteArgs>();
      return _i5.ProfilePage(
        key: args.key,
        userModel: args.userModel,
      );
    },
  );
}

class ProfileRouteArgs {
  const ProfileRouteArgs({
    this.key,
    required this.userModel,
  });

  final _i9.Key? key;

  final _i11.UserModel userModel;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, userModel: $userModel}';
  }
}

/// generated route for
/// [_i6.RegisterPage]
class RegisterRoute extends _i8.PageRouteInfo<void> {
  const RegisterRoute({List<_i8.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.RegisterPage();
    },
  );
}

/// generated route for
/// [_i7.TreeViewPage]
class TreeViewRoute extends _i8.PageRouteInfo<TreeViewRouteArgs> {
  TreeViewRoute({
    _i9.Key? key,
    required _i12.Node root,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          TreeViewRoute.name,
          args: TreeViewRouteArgs(
            key: key,
            root: root,
          ),
          initialChildren: children,
        );

  static const String name = 'TreeViewRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TreeViewRouteArgs>();
      return _i7.TreeViewPage(
        key: args.key,
        root: args.root,
      );
    },
  );
}

class TreeViewRouteArgs {
  const TreeViewRouteArgs({
    this.key,
    required this.root,
  });

  final _i9.Key? key;

  final _i12.Node root;

  @override
  String toString() {
    return 'TreeViewRouteArgs{key: $key, root: $root}';
  }
}
