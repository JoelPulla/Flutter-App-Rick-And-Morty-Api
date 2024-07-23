import 'package:flutter/material.dart';
import 'package:peticion_hht/infraestructure/models/person.dart';
import 'package:peticion_hht/presentation/widgets/widgets.dart';

class DetailScreen extends StatelessWidget {
  static const name = 'detail_screen';

  final Result character;

  const DetailScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    final styleText = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 350,
                child: Stack(
                  children: [
                    Image.network(
                      height: double.infinity,
                      width: double.infinity,
                      character.image ?? ' no data',
                      fit: BoxFit.cover,
                    ),
                    const GradientButton(),
                    Positioned(
                      bottom: 30,
                      child: SizedBox(
                        width: 370,
                        child: Center(
                          child: Text(character.name ?? 'no data ',
                              style: styleText.titleLarge),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).maybePop();
                        },
                        icon: const Icon(Icons.arrow_back_ios),
                      ),
                    ),
                  ],
                ),
              ),
              _DetailsCharacter(character: character),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text('Episodios en los que participo...'),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: character.episode?.length,
                itemBuilder: (context, index) {
                  final espisodeUrl = character.episode?[index];

                  return _ListEpisodes(espisodeUrl: espisodeUrl);
                },
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

class _ListEpisodes extends StatelessWidget {
  const _ListEpisodes({
    required this.espisodeUrl,
  });

  final String? espisodeUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(73, 64, 75, 96),
        ),
        child: ListTile(
          leading: const Icon(
            Icons.settings_ethernet,
            color: Colors.amber,
          ),
          title: Text(
            espisodeUrl ?? '',
            maxLines: 1,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}

class _DetailsCharacter extends StatelessWidget {
  const _DetailsCharacter({
    required this.character,
  });

  final Result character;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 20.0,
      runSpacing: 8.5,
      children: [
        StatusContainer(
          data: character.status ?? 'Fail',
          iconData: Icons.person_outline_outlined,
          color: const Color.fromARGB(72, 76, 175, 79),
          colorIcon: const Color.fromARGB(255, 0, 255, 8),
        ),
        StatusContainer(
          data: character.gender ?? 'Fail',
          iconData: Icons.event_busy_outlined,
          color: const Color.fromARGB(72, 248, 0, 29),
          colorIcon: Colors.red,
        ),
        StatusContainer(
          data: character.type ?? 'Fail',
          iconData: Icons.share_outlined,
          color: const Color.fromARGB(71, 8, 92, 218),
          colorIcon: const Color.fromARGB(255, 0, 110, 255),
        ),
        StatusContainer(
          data: character.species ?? 'Fail',
          iconData: Icons.landslide_outlined,
          color: const Color.fromARGB(71, 231, 11, 106),
          colorIcon: const Color.fromARGB(255, 231, 11, 106),
        ),
        StatusContainer(
          data: character.location?.name ?? '',
          iconData: Icons.location_searching,
          color: const Color.fromARGB(72, 132, 132, 132),
          colorIcon: const Color.fromARGB(255, 118, 122, 125),
        ),
        StatusContainer(
          data: character.id.toString(),
          iconData: Icons.insert_drive_file_outlined,
          color: const Color.fromARGB(72, 189, 218, 0),
          colorIcon: const Color.fromARGB(255, 189, 218, 0),
        ),
      ],
    );
  }
}

class StatusContainer extends StatelessWidget {
  final Color colorIcon;
  final Color color;
  final String data;
  final IconData iconData;
  const StatusContainer({
    super.key,
    required this.color,
    required this.data,
    required this.iconData,
    required this.colorIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: color,
      ),
      width: 150,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 11),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconData,
                size: 18,
                color: colorIcon,
              ),
              const SizedBox(width: 10),
              Text(
                data,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
