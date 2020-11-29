import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  final ValueChanged<String> _onChanged;

  SearchWidget({@required onChanged}) : _onChanged = onChanged;

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  static const _radius = 10.0;
  static const _bgColor = Color(0x44FFFFFF);
  final _txtController = TextEditingController();
  bool _active = false;

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          _radius,
        ),
        color: _bgColor,
      ),
      child: Row(
        children: [
          _getSearchIcon(),
          Expanded(
            child: TextFormField(
              controller: _txtController,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: TextStyle(
                color: Colors.white,
              ),
              onChanged: _onInputChanged,
            ),
          ),
        ],
      ),
    );
  }

  void _onInputChanged(String input) {
    setState(() {
      _active = input.isNotEmpty;
      widget._onChanged(input);
    });
  }

  Widget _getSearchIcon() {
    if (_active) {
      return IconButton(
        icon: Icon(
          Icons.clear,
          color: Colors.white,
        ),
        onPressed: () {
          setState(() {
            _txtController.clear();

            // make active false so icon changes when text is cleared
            _active = false;
          });
        },
      );
    }
    // returning IconButton instead of Icon for consistent UI style
    return IconButton(
      icon: Icon(
        Icons.search,
        color: Colors.white,
      ),
      onPressed: null,
    );
  }
}
