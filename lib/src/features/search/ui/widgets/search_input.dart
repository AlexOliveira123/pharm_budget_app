part of '../search_page.dart';

class _SearchInput extends StatefulWidget {
  final void Function(String) onChanged;
  final void Function() onClear;

  const _SearchInput({
    required this.onChanged,
    required this.onClear,
  });

  @override
  State<_SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<_SearchInput> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  bool get _hasTextFilled => _controller.text.isNotEmpty;

  void onChanged(String? value) {
    if (value == null) return;
    widget.onChanged(value);
    setState(() {});
  }

  void clearField() {
    if (_controller.text.isNotEmpty) {
      _controller.clear();
      widget.onClear();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.x1),
      child: Material(
        elevation: 10,
        color: AppColors.white100,
        shadowColor: AppColors.grey20,
        borderRadius: BorderRadius.circular(32),
        child: TextField(
          controller: _controller,
          onChanged: onChanged,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: AppColors.secondary),
            suffixIcon: _hasTextFilled
                ? GestureDetector(
                    onTap: clearField,
                    child: Icon(Icons.close, color: AppColors.secondary),
                  )
                : null,
            border: InputBorder.none,
            hintText: 'Digite algo..',
            contentPadding: const EdgeInsets.symmetric(vertical: AppSpacing.x4, horizontal: AppSpacing.x5),
          ),
        ),
      ),
    );
  }
}
