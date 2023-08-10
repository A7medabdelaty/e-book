import 'package:bookly/services/search/presentation/view%20model/search_for_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchCustomAppBar extends StatefulWidget {
  const SearchCustomAppBar({super.key, required this.cubit});

  final SearchForBookCubit cubit;

  @override
  State<SearchCustomAppBar> createState() => _SearchCustomAppBarState();
}

class _SearchCustomAppBarState extends State<SearchCustomAppBar> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(FontAwesomeIcons.arrowLeft),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextFormField(
              controller: searchController,
              onChanged: (value) {
                setState(() {
                  widget.cubit.searchForBook(bookName: value);
                });
              },
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                fillColor: const Color(0xff768ea9),
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
