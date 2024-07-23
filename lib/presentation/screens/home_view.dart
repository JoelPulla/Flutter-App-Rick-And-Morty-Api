import 'package:flutter/material.dart';
import 'package:peticion_hht/infraestructure/data_source/api.dart';
import 'package:peticion_hht/infraestructure/models/person.dart';
import 'package:peticion_hht/presentation/screens/detail_screen.dart';
import 'package:peticion_hht/presentation/widgets/widgets.dart';

class HomeView extends StatefulWidget {
  static const name = '/';
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Person? person;

  @override
  void initState() {
    fetchCharacter();
    super.initState();
  }

  Future<void> fetchCharacter() async {
    person = await ApiService().getCharacter();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: person == null
              ? const CircularProgressIndicator()
              : RefreshIndicator(
                  onRefresh: fetchCharacter,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // number of items in each row
                            mainAxisSpacing: 8.0, // spacing between rows
                            crossAxisSpacing: 8.0,
                            childAspectRatio: 1
                            // spacing between columns
                            ),
                    itemCount: person!.results!.length,
                    itemBuilder: (context, index) {
                      final result = person!.results![index];

                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                character: result,
                              ),
                            ),
                          );
                        },
                        child: ContainerBuilder(data: result),
                      );
                    },
                  ),
                ),
        ),
      ),
    );
  }
}

class ContainerBuilder extends StatelessWidget {
  final Result data;
  const ContainerBuilder({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            Image.network(data.image ??
                'https://rickandmortyapi.com/api/character/avatar/139.jpeg'),
            const GradientButton(),
            // const GradientTop(),
            Positioned(
              bottom: 1,
              left: 1,
              child: Text(
                data.name ?? 'no data',
                maxLines: 2,
              ),
            ),
            Positioned(
              top: 1,
              right: 3,
              child: LabelStatus(
                data: data.status ?? 'no data',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
