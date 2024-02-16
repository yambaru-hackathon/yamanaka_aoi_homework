import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('投稿')),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Image.network(
                  'https://scx2.b-cdn.net/gfx/news/hires/2019/instagram.jpg',
                  width: 40,
                  height: 40,
                ),
                const Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          'Instagram',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'イタリア',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                    ))
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Image.network(
                    'https://beautiful-photo.net/wp-content/uploads/2019/10/The-picturesque-sunset-over-landscapes-and-waterfalls-Kirkjufell-mountain-Iceland.jpg',
                    height: 379,
                    width: 395,
                    fit: BoxFit.cover,
                  ),
                ],
              )),
          Row(children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mode_comment_outlined,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.send,
                  size: 30,
                )),
            const Spacer(),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_border,
                  size: 35,
                )),
          ]),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              '「いいね！」 704,899件',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          const Text(
            "'The sun gently kisses the horizon, painting the sky with hues of rose and gold, while wisps of cotton candy clouds dance lazily overhead. Below, a serene lake mirrors the breathtaking tableau, its surface shimmering like liquid glass. Tall, majestic trees stand sentinel along the water's edge, their vibrant green leaves rustling in the soft breeze. The air is filled with the symphony of nature - the melodic chirping of birds, the gentle lapping of waves against the shore, and the occasional whisper of a passing zephyr. As the day gracefully transitions into evening, the landscape is bathed in a warm, ethereal glow, casting a spell of tranquility over all who behold its beauty.'",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          )
        ]),
      ),
    );
  }
}
