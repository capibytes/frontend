import 'package:datalytics/components/consultor_tile.dart';
import 'package:datalytics/components/gradient_background.dart';
import 'package:datalytics/components/header.dart';
import 'package:datalytics/constants.dart';
import 'package:datalytics/models/consultor_model.dart';
import 'package:flutter/material.dart';

class ConsultorsScreen extends StatefulWidget {
  const ConsultorsScreen({super.key});

  @override
  State<ConsultorsScreen> createState() => _ConsultorsScreenState();
}

class _ConsultorsScreenState extends State<ConsultorsScreen> {
  final TextEditingController searchController = TextEditingController();

  void onSearch() {
    if(searchController.text.trim().isEmpty){
      return;
    }

    print('### FIltrando consultores por ==> ${searchController.text}');
  }

  List<ConsultorModel> consultors = [
    ConsultorModel(name: 'Josevaldo Soares', job: 'Advogado', type: 'Consultor empresarial', avatarUrl: 'assets/images/consultor_example.png'),
    ConsultorModel(name: 'Clodovico', job: 'Advogado', type: 'Consulto comercial', avatarUrl: 'assets/images/consultor_example.png'),
    ConsultorModel(name: 'Frederikson', job: 'Contador', type: 'Consultor empresarial', avatarUrl: 'assets/images/consultor_example.png'),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          const GradientBackground(),
          Column(
            children: [
              const Header(),
              const SizedBox(height: 80,),
              SizedBox(
                width: 540,
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: 'Encontre por nome, especialidade, etc...',
                    hintStyle: const TextStyle(
                      color: dtlGrey100,
                      fontSize: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: dtlBlack),
                    ),
                    suffixIcon:  IconButton(
                      onPressed: onSearch,
                      icon: const Icon(Icons.search_outlined),
                    ),
                    suffixIconColor: dtlGrey100,
                  ),
                ),
              ),
              const SizedBox(height: 60,),
              const Text(
                'Consultores',
                style: TextStyle(
                  color: dtlGrey100,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 40,),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  primary: true,
                  padding: EdgeInsets.only(left: size.width / 4, right: size.width / 4),
                  itemCount: consultors.length,
                  itemBuilder: (context, index){
                    ConsultorModel consultor = consultors[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: ConsultorTile(consultor: consultor),
                    );
                  } 
                ), 
              ),
            ],
          ),
        ],
      ),
    );
  }
}