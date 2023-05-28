import 'package:flutter/material.dart';

class InputWidget1 extends StatelessWidget {
  const InputWidget1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        hintText: 'Enter name or category',
        hintStyle: const TextStyle(color: Colors.grey),
        suffixIcon: const Icon(Icons.search,size: 30),
        suffixIconColor: Colors.grey,
        filled: true,
        fillColor: Colors.grey[200],
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent,),
          borderRadius: BorderRadius.all(Radius.circular(17))
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(17))
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(17))
        )
      ),
    );
  }
}