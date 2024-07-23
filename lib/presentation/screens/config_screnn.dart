import 'package:flutter/material.dart';
import 'package:peticion_hht/presentation/widgets/widgets.dart';

class ConfigScrenn extends StatelessWidget {
  final String myDescription =
      "Hello everyone, I am a Flutter, Python and Php developer. I hope you like it, this is one of my first apps for my portfolio. I hope you like it. Don't hesitate to follow me on my social networks.";
  const ConfigScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    height: 160,
                    width: double.infinity,
                    color: const Color.fromARGB(62, 255, 255, 255),
                  ),
                  const Center(
                    child: CircleAvatar(
                      maxRadius: 70,
                      backgroundImage: NetworkImage(
                          'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=740&t=st=1721756671~exp=1721757271~hmac=648dbbcb09e7c4e7da62d546be02578d574a3aa3217c12fea023e1da9eefed0a'),
                    ),
                  ),
                  const Positioned(
                    left: 120,
                    bottom: 15,
                    child: Column(
                      children: [
                        LabelStatus(
                          data: '@JoelDev',
                          iconData: Icons.developer_board,
                          sizeIcon: 15,
                        ),
                        Text(
                          'Joel Pulla M.',
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 10,
                  children: [
                    IconAndText(
                      data: 'Instagram',
                      iconData: Icons.camera_alt_outlined,
                      sizedData: 10,
                    ),
                    IconAndText(
                      data: 'Message',
                      iconData: Icons.message_outlined,
                      sizedData: 10,
                    ),
                    IconAndText(
                      data: 'More',
                      iconData: Icons.more_horiz_outlined,
                      sizedData: 10,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    myDescription,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Information'),
                  _StyleInformation(
                    data: 'Website',
                    iconData: Icons.webhook_sharp,
                    dataDescription: 'www.me.com',
                  ),
                  _StyleInformation(
                    data: 'Email',
                    iconData: Icons.mark_email_read_outlined,
                    dataDescription: 'joel.pulla@outlook.com',
                  ),
                  _StyleInformation(
                    data: 'Joined',
                    iconData: Icons.calendar_month_outlined,
                    dataDescription: '2022',
                  ),
                  Center(
                    child: Wrap(
                      alignment: WrapAlignment.spaceAround,
                      spacing: 10,
                      children: [
                        ElevatedButton(
                            onPressed: null, child: Text('Software Developer')),
                        ElevatedButton(
                            onPressed: null, child: Text('SQL Data Base')),
                        ElevatedButton(onPressed: null, child: Text('Python')),
                        ElevatedButton(onPressed: null, child: Text('Php')),
                        ElevatedButton(onPressed: null, child: Text('Flutter')),
                        ElevatedButton(onPressed: null, child: Text('Dart')),
                        ElevatedButton(onPressed: null, child: Text('Css')),
                        ElevatedButton(onPressed: null, child: Text('Html')),
                        ElevatedButton(onPressed: null, child: Text('Js')),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StyleInformation extends StatelessWidget {
  final String data;
  final IconData iconData;
  final String dataDescription;
  const _StyleInformation({
    required this.data,
    required this.iconData,
    required this.dataDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Icon(
                  iconData,
                  color: Colors.white54,
                ),
                const SizedBox(width: 5),
                Text(
                  data,
                  style: const TextStyle(color: Colors.white54),
                ),
              ],
            ),
          ),
          Text(dataDescription)
        ],
      ),
    );
  }
}
