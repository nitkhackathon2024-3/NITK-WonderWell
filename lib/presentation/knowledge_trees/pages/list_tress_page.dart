import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wisdom_well/applications/trees/trees_bloc.dart';
import 'package:wisdom_well/core/routes/auto_router.gr.dart';
import 'package:wisdom_well/core/services/service_locator.dart';
import 'package:wisdom_well/domain/knowledge_trees/entities/node.dart';
import 'package:wisdom_well/presentation/knowledge_trees/widgets/tree_tile_widget.dart';

@RoutePage()
class ListTressPage extends StatelessWidget {
  const ListTressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TreesBloc>(
      create: (context) => sl<TreesBloc>()..add(TreesEvent.fetchTrees()),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Knowledge Trees"),
          centerTitle: true,
        ),
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              // AutoRouter.of(context).push(
              //   CreateTreeRoute(treesBloc: BlocProvider.of<TreesBloc>(context)),
              // );
              AutoRouter.of(context).push(
                TreeViewRoute(
                  root: Node(
                    id: "0",
                    label: "label",
                    subtopics: [],
                    keyPoints: [],
                    summary: "klfja",
                    children: [
                      Node(
                        id: "1",
                        label: "label",
                        subtopics: [],
                        keyPoints: [],
                        summary: "dklajf",
                        children: [
                          Node(
                            id: "2",
                            label: "label",
                            subtopics: [],
                            keyPoints: [],
                            summary: "kdljfa;f",
                            children: [],
                          ),
                          Node(
                            id: "3",
                            label: "label",
                            subtopics: [],
                            keyPoints: [],
                            summary: "",
                            children: [],
                          ),
                        ],
                      ),
                      Node(
                        id: "4",
                        label: "label",
                        subtopics: [],
                        keyPoints: [],
                        summary: "dklajf",
                        children: [
                          Node(
                            id: "5",
                            label: "label",
                            subtopics: [],
                            keyPoints: [],
                            summary: "kdljfa;f",
                            children: [],
                          ),
                          Node(
                            id: "6",
                            label: "label",
                            subtopics: [],
                            keyPoints: [],
                            summary: "",
                            children: [],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        body: BlocBuilder<TreesBloc, TreesState>(
          builder: (context, state) => switch (state) {
            TreesLoading() => Center(child: CircularProgressIndicator()),
            LoadedTress() => state.trees.isEmpty
                ? Center(
                    child: Text("Create a tree to start!"),
                  )
                : ListView.builder(
                    itemBuilder: (context, index) => TreeTileWidget(
                      tree: state.trees[index],
                    ),
                  ),
            TreesError() => Center(
                child: Text(
                  state.failure.message ??
                      "Something went wrong. Please try again later.",
                ),
              ),
          },
        ),
      ),
    );
  }
}
