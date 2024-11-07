import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class UserCreateForm extends StatelessWidget {
  final FormGroup userForm = FormGroup({
    'title': FormControl<String>(validators: [Validators.required]),
    'firstName': FormControl<String>(validators: [Validators.required]),
    'lastName': FormControl<String>(validators: [Validators.required]),
    'picture': FormControl<String>(validators: [Validators.required]),
    'gender': FormControl<String>(validators: [Validators.required]),
    'email': FormControl<String>(
        validators: [Validators.required, Validators.email]),
    'phone': FormControl<String>(validators: [Validators.min(10)]),
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ReactiveForm(
            formGroup: userForm,
            child: Column(
              children: <Widget>[
                ReactiveTextField<String>(
                  formControlName: 'title',
                  decoration: const InputDecoration(labelText: 'Title'),
                ),
                ReactiveTextField<String>(
                  formControlName: 'firstName',
                  decoration: const InputDecoration(labelText: 'First Name'),
                ),
                ReactiveTextField<String>(
                  formControlName: 'lastName',
                  decoration: const InputDecoration(labelText: 'Last Name'),
                ),
                ReactiveTextField<String>(
                  formControlName: 'picture',
                  decoration: const InputDecoration(labelText: 'Picture'),
                ),
                ReactiveDropdownField<String>(
                  formControlName: 'gender',
                  decoration: const InputDecoration(
                    labelText: 'Selecciona tu identidad de genero',
                  ),
                  items: const [
                    DropdownMenuItem<String>(
                      value: 'F',
                      child: Text('Femenino'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'M',
                      child: Text('Masculino'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'O',
                      child: Text('Otro'),
                    ),
                  ],
                ),
                ReactiveTextField<String>(
                  formControlName: 'email',
                  decoration: const InputDecoration(labelText: 'Email'),
                ),
                ReactiveTextField<String>(
                  formControlName: 'phone',
                  decoration: const InputDecoration(labelText: 'Phone'),
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                    onPressed: () {
                      if (userForm.valid) {
                        print(userForm.value);
                      } else {
                        userForm.markAllAsTouched();
                      }
                    },
                    child: const Text('Save')),
              ],
            ),
          )),
    )));
  }
}
