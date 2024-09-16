import 'package:flutter/material.dart';

class SearchableDropdown extends StatefulWidget {
  const SearchableDropdown({super.key});

  @override
  State<StatefulWidget> createState() => _SearchableDropdownState();
}

class _SearchableDropdownState extends State<SearchableDropdown> {
  List<SearchMenuItem> list = [
    SearchMenuItem(1, "Calender", Icons.calendar_month_sharp),
    SearchMenuItem(2, "search", Icons.search_rounded),
    SearchMenuItem(3, "favorites", Icons.favorite),
  ];

  final TextEditingController _controller = TextEditingController();

  SearchMenuItem? selectedItem;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
        controller: _controller,
        onSelected: (SearchMenuItem? item) {
          setState(() {
            selectedItem = item;
          });
        },
        requestFocusOnTap: true,
        enableSearch: true,
        enableFilter: true,
        dropdownMenuEntries:
            list.map<DropdownMenuEntry<SearchMenuItem>>((SearchMenuItem menu) {
          return DropdownMenuEntry<SearchMenuItem>(
              value: menu,
              label: menu.menuTitle,
              leadingIcon: Icon(menu.menuIcon));
        }).toList());
  }
}

class SearchMenuItem {
  final int menuId;
  final String menuTitle;
  final IconData menuIcon;

  SearchMenuItem(this.menuId, this.menuTitle, this.menuIcon);
}
