// ignore: depend_on_referenced_packages
import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:resto_app_dicoding/presentation/components/gen/colors.gen.dart';
import 'package:resto_app_dicoding/presentation/components/styles/typography.dart';

class SearchFormField extends StatefulWidget {
  const SearchFormField({
    super.key,
    this.onChanged,
  });

  final Function(String value)? onChanged;

  @override
  State<SearchFormField> createState() => _SearchFormFieldState();
}

class _SearchFormFieldState extends State<SearchFormField> {
  late TextEditingController _controller;
  late CancelableOperation<void> _cancelableOperation;
  final _delayedTime = const Duration(milliseconds: 1000);

  void _start() {
    _cancelableOperation = CancelableOperation.fromFuture(
      Future.delayed(_delayedTime),
      onCancel: () {
        debugPrint('Canceled');
      },
    );
  }

  _onChanged(String value) {
    _cancelableOperation.cancel();
    _start();
    if (widget.onChanged != null) {
      _cancelableOperation.value.whenComplete(() => widget.onChanged!(value));
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _start();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      onChanged: _onChanged,
      autofocus: true,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: 'Search...',
        fillColor: ColorName.accentCardGrey,
        filled: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: ColorName.primaryYellow700,
          ),
        ),
      ),
      style: AppTypography(context).body1,
    );
  }
}
