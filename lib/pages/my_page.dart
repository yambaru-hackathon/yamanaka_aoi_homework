import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);

  final images = [
    'https://beautiful-photo.net/wp-content/uploads/2019/10/The-picturesque-sunset-over-landscapes-and-waterfalls-Kirkjufell-mountain-Iceland.jpg',
    'https://beautiful-photo.net/wp-content/uploads/2020/07/Amazing-tourquise-Oeschinnensee-with-waterfalls-and-Swiss-Alps-Kandersteg-Berner-Oberland-Switzerland.jpg',
    'https://beautiful-photo.net/wp-content/uploads/2019/05/picturesque-town-of-Riomaggiore-at-night-in-Cinque-Terre-National-park-Liguria-region-Italy.jpg',
    'https://beautiful-photo.net/wp-content/uploads/2020/03/Amsterdam-canal-during-twilight-time.jpg',
    'https://th.bing.com/th/id/OIP.tlkffp68-KzFSa27y5DkZwHaE8?rs=1&pid=ImgDetMain',
    'https://beautiful-photo.net/wp-content/uploads/2018/07/Sunrise-over-Victoria-Harbor-as-viewed-atop-Victoria-Peak-Hong-kong-China.jpg',
    'https://th.bing.com/th/id/OIP.TwBxQujLasg_7ur9fLbzWAHaE8?rs=1&pid=ImgDetMain',
    'https://beautiful-photo.net/wp-content/uploads/2018/08/Medieval-town-of-Rothenburg-ob-der-Tauber-at-night-Germany.jpg',
    'https://beautiful-photo.net/wp-content/uploads/2020/10/Tree-lined-avenue-with-benches-in-regents-park-of-London.jpg',
    'https://beautiful-photo.net/wp-content/uploads/2019/08/Beautiful-historic-city-center-view-of-Lucerne-with-famous-Chapel-Bridge-and-lake-Lucerne-Vierwaldstattersee-Canton-of-Lucerne-Switzerland.jpg',
    'https://tripeditor.com/wp-content/uploads/2019/04/14003340/shutterstock_575368690.jpg',
    'https://th.bing.com/th/id/R.02b7c252bf8521ae88492558ede1821d?rik=ihqN3qJnt8gq3w&riu=http%3a%2f%2fdata.1freewallpapers.com%2fdownload%2fbeautiful-scenery-mountains-lake-nature.jpg&ehk=ivIaEfg5%2fpt%2b38a5HgCpTxzedLPkw0bsu45AC77URjE%3d&risl=&pid=ImgRaw&r=0',
    'https://beautiful-photo.net/wp-content/uploads/2020/06/View-ray-of-light-on-one-of-mountain-in-china.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('instagram')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Image.network(
                    'https://scx2.b-cdn.net/gfx/news/hires/2019/instagram.jpg',
                    width: 100,
                    height: 100,
                  ),
                  const Spacer(),
                  const Column(
                    children: [
                      Text(
                        '7,041',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text('投稿'),
                    ],
                  ),
                  const SizedBox(width: 16),
                  const Column(
                    children: [
                      Text(
                        '4.6億',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text('フォロワー'),
                    ],
                  ),
                  const SizedBox(width: 16),
                  const Column(
                    children: [
                      Text(
                        '99',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text('フォロー中'),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Instagram',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '#YoursToMake',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'help.instagram.com',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const SizedBox(width: 8),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                            child: const Text(
                              'フォロー中',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                            child: const Text(
                              'メッセージ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 4),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    child: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              primary: false,
              crossAxisCount: 3,
              children: images.map((imageUrl) {
                return InstagramPostItem(imageUrl: imageUrl);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class InstagramPostItem extends StatelessWidget {
  const InstagramPostItem({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
    );
  }
}
