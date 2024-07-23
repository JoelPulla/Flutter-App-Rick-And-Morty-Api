import 'package:flutter/material.dart';

class SearchCharacterDelegates extends SearchDelegate {
  @override
  String get searchFieldLabel => 'Search Character';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () => query = '',
        icon: const Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => close(context, null),
        icon: const Icon(Icons.arrow_back_ios_new));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('I am Build Restls');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text('I am buils sugestions ');
  }
}
