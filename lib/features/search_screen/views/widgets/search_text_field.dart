import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchTextField extends StatefulWidget {
  Function(String)? onChanged;

  SearchTextField({
    required this.onChanged,
  });

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  GlobalKey<FormState> formkey = GlobalKey();
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(
            start: 21, end: 21, bottom: 12, top: 24),
        child: TextFormField(
          validator: (data) {
            if (data!.isEmpty) {
              return 'Field is empty';
            } else {
              return null;
            }
          },
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),
          onChanged: widget.onChanged,
          cursorColor: Colors.white,
          cursorHeight: 24,
          decoration: InputDecoration(
            filled: true,
            prefixIcon: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(
                Icons.chevron_left,
                color: Colors.white,
              ),
            ),
            suffixIcon: IconButton(
              onPressed: () {
                if (formkey.currentState!.validate()) {}
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
            hintText: 'search here...',
            hintStyle: const TextStyle(
              color: Color(0xffB6B7B7),
            ),
            floatingLabelAlignment: FloatingLabelAlignment.start,
            labelStyle: const TextStyle(
              color: Color(0xffB6B7B7),
            ),
            enabledBorder: outLineInputBorder(),
            border: outLineInputBorder(),
            focusedBorder: outLineInputBorder(),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outLineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      borderSide: const BorderSide(
        style: BorderStyle.none,
        color: Colors.white,
      ),
    );
  }
}
