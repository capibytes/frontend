import 'package:datalytics/components/blog_news.dart';
import 'package:datalytics/components/header.dart';
import 'package:datalytics/constants.dart';
import 'package:datalytics/models/blog_news_model.dart';
import 'package:datalytics/models/blog_small_link_news.dart';
import 'package:flutter/material.dart';

class BlogScreen extends StatelessWidget {
  BlogScreen({super.key});

  final List<BlogNewsModel> news = [
    BlogNewsModel(
      title: 'O que é a LGPD?', 
      imageUrl: 'assets/mocks/news1.png', 
      content: 'A LGPD (Lei Geral de Proteção de Dados) é uma legislação brasileira que entrou em vigor em setembro de 2020. Ela tem como objetivo proteger a privacidade e os direitos das pessoas em relação aos seus dados pessoais. Inspirada no GDPR da União Europeia, a LGPD estabelece regras para a coleta, uso e armazenamento de dados pessoais, exigindo consentimento explícito, segurança dos dados e garantindo direitos aos titulares.'
    ),
    BlogNewsModel(
      title: 'O que é Governança de Dados?', 
      imageUrl: 'assets/mocks/news2.png', 
      content: 'A LGPD (Lei Geral de Proteção de Dados) é uma legislação brasileira que entrou em vigor em setembro de 2020. Ela tem como objetivo proteger a privacidade e os direitos das pessoas em relação aos seus dados pessoais. Inspirada no GDPR da União Europeia, a LGPD estabelece regras para a coleta, uso e armazenamento de dados pessoais, exigindo consentimento explícito, segurança dos dados e garantindo direitos aos titulares.'
    ),
    BlogNewsModel(
      title: 'O que é a LGPD?', 
      imageUrl: 'assets/mocks/news1.png', 
      content: 'A LGPD (Lei Geral de Proteção de Dados) é uma legislação brasileira que entrou em vigor em setembro de 2020. Ela tem como objetivo proteger a privacidade e os direitos das pessoas em relação aos seus dados pessoais. Inspirada no GDPR da União Europeia, a LGPD estabelece regras para a coleta, uso e armazenamento de dados pessoais, exigindo consentimento explícito, segurança dos dados e garantindo direitos aos titulares.'
    ),
    BlogNewsModel(
      title: 'O que é Governança de Dados?', 
      imageUrl: 'assets/mocks/news2.png', 
      content: 'A LGPD (Lei Geral de Proteção de Dados) é uma legislação brasileira que entrou em vigor em setembro de 2020. Ela tem como objetivo proteger a privacidade e os direitos das pessoas em relação aos seus dados pessoais. Inspirada no GDPR da União Europeia, a LGPD estabelece regras para a coleta, uso e armazenamento de dados pessoais, exigindo consentimento explícito, segurança dos dados e garantindo direitos aos titulares.'
    ),
    BlogNewsModel(
      title: 'O que é a LGPD?', 
      imageUrl: 'assets/mocks/news1.png', 
      content: 'A LGPD (Lei Geral de Proteção de Dados) é uma legislação brasileira que entrou em vigor em setembro de 2020. Ela tem como objetivo proteger a privacidade e os direitos das pessoas em relação aos seus dados pessoais. Inspirada no GDPR da União Europeia, a LGPD estabelece regras para a coleta, uso e armazenamento de dados pessoais, exigindo consentimento explícito, segurança dos dados e garantindo direitos aos titulares.'
    ),
    BlogNewsModel(
      title: 'O que é Governança de Dados?', 
      imageUrl: 'assets/mocks/news2.png', 
      content: 'A LGPD (Lei Geral de Proteção de Dados) é uma legislação brasileira que entrou em vigor em setembro de 2020. Ela tem como objetivo proteger a privacidade e os direitos das pessoas em relação aos seus dados pessoais. Inspirada no GDPR da União Europeia, a LGPD estabelece regras para a coleta, uso e armazenamento de dados pessoais, exigindo consentimento explícito, segurança dos dados e garantindo direitos aos titulares.'
    ),
  ];

  final List<BlogSmallLinkNews> sideNewsLinks = [
    BlogSmallLinkNews(title: '5 anos LGPD: o que mudou na saúde brasileira?'),
    BlogSmallLinkNews(title: 'Inteligência Artificial desafia empresas na adequação à LGPD'),
    BlogSmallLinkNews(title: '5 razões para indústrias criarem programas de governança de dados'),
    BlogSmallLinkNews(title: 'O uso de evidências, a governança de dados e o futuro da regulação'),
    BlogSmallLinkNews(title: 'O que é Cyber OT, ou segurança cibernética para tecnologia operacional?'),
    BlogSmallLinkNews(title: 'Software promete identificar ameaças e vulnerabilidades em ambientes industriais'),
    BlogSmallLinkNews(title: 'O que o setor de e-commerce tem a ganhar com uma governança de dados?'),
    BlogSmallLinkNews(title: 'Qual o real cenário da LGPD no varejo?'),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxWidth = constraints.maxWidth;
        double maxHeight = constraints.maxHeight;

        return Scaffold(
          body: Stack(
            children: [
              Image.asset(
                'assets/images/background-img.png',
                fit: BoxFit.cover,
                height: maxHeight,
                width: maxWidth,
              ),
              Container(
                height: maxHeight,
                width: maxWidth,
                color: dtlBlack.withOpacity(0.7),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    const Header(),
                    const SizedBox(height: 60,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        crossAxisAlignment: maxWidth < 1200 ? CrossAxisAlignment.center : CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Aprenda um pouco mais',
                            style: TextStyle(
                              color: dtlWhite,
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                            ),
                          ),
                          const Divider(thickness: 1,),
                          Row(
                            mainAxisAlignment: maxWidth < 1200 ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: maxWidth < 1200 ? maxWidth * 0.6 : ((size.width /4) * 3) - 80,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  primary: false,
                                  itemCount: news.length,
                                  itemBuilder: (context, index) {
                                    BlogNewsModel blogNews = news[index];
                                    return Column(
                                      children: [
                                        BlogNews(
                                          blogNews: blogNews,
                                          width: maxWidth < 1200 ? maxWidth * 0.6 : ((size.width /4) * 3) - 80,
                                        ),
                                        const Divider(thickness: 1,),
                                      ],
                                    );
                                  }
                                ),
                              ),
                              constraints.maxWidth < 1200 ? Container() : 
                              Container(
                                padding: const EdgeInsets.all(12),
                                width: ((size.width /4) - 80),
                                decoration: BoxDecoration(
                                  color: dtlBrow200,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Notícias',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: dtlGrey100,
                                        fontSize: 18,
                                      ),
                                    ),
                                    ListView.builder(
                                      shrinkWrap: true,
                                      primary: false,
                                      itemCount: sideNewsLinks.length,
                                      itemBuilder: (context, index){
                                        return Column(
                                          children: [
                                            const Divider(thickness: 1,),
                                            TextButton(
                                              onPressed: (){},
                                              child: Text(
                                                sideNewsLinks[index].title,
                                                maxLines: 5,
                                                textAlign: TextAlign.start,
                                                style: const TextStyle(
                                                  color: dtlGrey100,
                                                  fontSize: 12,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      }
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),        
            ],
          ),
        );
      }
    );
  }
}