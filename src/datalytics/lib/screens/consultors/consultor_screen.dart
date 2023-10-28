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
    String search = searchController.text;
    List<ConsultorModel> consultorsFilteredBySearch = consultorsFiltered.where((e) {
      return e.name.contains(search) || e.type.contains(search) || e.job.contains(search);
    }).toList();

    setState(() => consultorsFiltered = consultorsFilteredBySearch);
  }

  List<ConsultorModel> consultors = [
    ConsultorModel(name: 'Josevaldo Soares', job: 'Advogado', type: 'Consultor empresarial', avatarUrl: 'assets/images/consultor_example.png'),
    ConsultorModel(name: 'Clodovico', job: 'Advogado', type: 'Consulto comercial', avatarUrl: 'assets/images/consultor_example.png'),
    ConsultorModel(name: 'Frederikson', job: 'Contador', type: 'Consultor empresarial', avatarUrl: 'assets/images/consultor_example.png'),
  ];

  late List<ConsultorModel> consultorsFiltered;

  List<String> categories = ['Consultor empresarial', 'Consultor comercial'];
  List<String> jobCategories = ['Advogado', 'Contador'];

  TextEditingController categoryController = TextEditingController();
  TextEditingController jobCategoryController = TextEditingController();

  void filterConsultorsByCategory(String? value) {
    List<ConsultorModel> consultorsFilteredByCategory = consultorsFiltered.where((e) {
      return e.type == value;
    }).toList();

    setState(() => consultorsFiltered = consultorsFilteredByCategory);
  }

  void filterConsultorsByJobCategory(String? value) {
    List<ConsultorModel> consultorsFilteredByJobCategory = consultorsFiltered.where((e) {
      return e.job == value;
    }).toList();

    setState(() => consultorsFiltered = consultorsFilteredByJobCategory);
  }

  @override
  void initState() {
    consultorsFiltered = consultors;
    super.initState();
  }

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
                  onEditingComplete: onSearch,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownMenu(
                    label: const Text('Categoria'),
                    controller: categoryController,
                    dropdownMenuEntries: categories.map<DropdownMenuEntry<String>>((e) {
                      return DropdownMenuEntry(value: e, label: e);
                    }).toList(),
                    onSelected: filterConsultorsByCategory,
                  ),
                  const SizedBox(width: 36,),
                  DropdownMenu(
                    label: const Text('Profissão'),
                    controller: jobCategoryController,
                    dropdownMenuEntries: jobCategories.map<DropdownMenuEntry<String>>((e) {
                      return DropdownMenuEntry(value: e, label: e);
                    }).toList(),
                    onSelected: filterConsultorsByJobCategory,
                  ),
                ],
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
                  itemCount: consultorsFiltered.length,
                  itemBuilder: (context, index){
                    ConsultorModel consultor = consultorsFiltered[index];
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