import 'package:flutter/material.dart';
import 'package:peticion_hht/presentation/delegates/search_delegates.dart';

class SearchCharacter extends StatelessWidget {
  const SearchCharacter({super.key});

  static const imageAvatar =
      'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1721756671~exp=1721757271~hmac=648dbbcb09e7c4e7da62d546be02578d574a3aa3217c12fea023e1da9eefed0a';

  @override
  Widget build(BuildContext context) {
    final texThemeApp = Theme.of(context).textTheme;
    final colorsTheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 17,
                          backgroundImage: NetworkImage(imageAvatar),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Search',
                          style: texThemeApp.titleMedium,
                        )
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.camera_alt_outlined))
                ],
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  showSearch(
                      context: context, delegate: SearchCharacterDelegates());
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: colorsTheme.onTertiary,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'Search Characters...',
                          style: TextStyle(color: colorsTheme.onTertiary),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
