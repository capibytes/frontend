import 'package:datalytics/constants.dart';
import 'package:datalytics/models/blog_news_model.dart';
import 'package:flutter/material.dart';

class BlogNews extends StatelessWidget {
  final BlogNewsModel blogNews;
  final double width;
  const BlogNews({
    required this.blogNews,
    required this.width,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxWidth = constraints.maxWidth;

        return Container(
          width: width,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: dtlGrey100,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  blogNews.title,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  style: const TextStyle(
                    color: dtlBlack,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 12,),
                maxWidth < 800 
                ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      blogNews.imageUrl,
                      width: 240,
                    ),
                    const SizedBox(height: 12,),
                    SizedBox(
                      width: (width * 0.8),
                      child: Text(
                        blogNews.content,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.clip,
                        maxLines: 16,
                      ),
                    ),
                  ],
                )
                : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      blogNews.imageUrl,
                      width: (size.width /4) - 80,
                    ),
                    SizedBox(
                      width: ((size.width /4) * 2) - 80,
                      child: Text(
                        blogNews.content,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.clip,
                        maxLines: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12,),
              ],
            ),
          ),
        );
      }
    );
  }
}