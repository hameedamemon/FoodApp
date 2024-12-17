import 'package:flutter/material.dart';



import '../AppBarPages/popupmenu.dart';

class Search extends StatefulWidget {

  const Search({ super.key });

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  TextEditingController _searchController = TextEditingController();
    bool isChecked = false;
   @override
   Widget build(BuildContext context) {
       return Scaffold(
          backgroundColor: Colors.brown.shade50,
      appBar: AppBar(
       flexibleSpace: Container(
    decoration: BoxDecoration(
       gradient: LinearGradient(
        colors: [Colors.brown.shade300, Colors.brown.shade500],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),)),
        title: Center(
          child: Text(
            'Food App',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            
            ),
          ),
        ),
        actions: [
          PopUpMenu(context), 
        ],
      ),
      body: 
                Column(
                  children: [
                    SizedBox(height: 40.0),
                 
              Center(
                child: Container(
                 width:350,
            child:  TextField(
           
                controller: _searchController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.location_on),
                  hintText: 'Search Food',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                     
                      print('Search Text: ${_searchController.text}');
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                 ),
                 ),
                ),
        ),
       )] ),
        // ]),
        );
}}