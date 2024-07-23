import 'package:flutter/material.dart';
import 'package:peticion_hht/infraestructure/data_source/api.dart';
import 'package:peticion_hht/infraestructure/models/person.dart';
import 'package:peticion_hht/presentation/screens/detail_screen.dart';
import 'package:peticion_hht/presentation/widgets/widgets.dart';

class SearchCharacterDelegates extends SearchDelegate {
  final ApiService apiService;

  SearchCharacterDelegates(
    this.apiService,
  );

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
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder<Person>(
      future: apiService.getSearchQuery(query),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('No result: $query'));
        } else {
          final results = snapshot.data!.results!;
          return ListView.builder(
            itemCount: results.length,
            itemBuilder: (context, index) {
              final result = results[index];
              return ListTile(
                leading: result.image != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(result.image!))
                    : null,
                title: Text(result.name ?? 'Nombre desconocido'),
                subtitle: SizedBox(
                  child: LabelStatus(
                    data: result.status ?? 'No data',
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailScreen(character: result)));
                },
              );
            },
          );
        }
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Image.asset('assets/img/search-removebg-preview.png'),
    );
  }
}
