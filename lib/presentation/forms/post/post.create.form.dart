import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class PostCreateForm extends StatelessWidget {
  PostCreateForm({super.key});

  final form = FormGroup({
    'text': FormControl<String>(validators: [Validators.required]),
    'image': FormControl<String>(),
    'likes': FormControl<int>(),
    'tags': FormControl<List<String>>(),
    'owner': FormControl<String>(validators: [Validators.required]),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ReactiveForm(
        formGroup: form,
        child: Column(
          children: [
            ReactiveTextField<String>(
              formControlName: 'text',
              decoration: const InputDecoration(
                labelText: 'Text',
              ),
            ),
            ReactiveTextField<String>(
              formControlName: 'image',
              decoration: const InputDecoration(
                labelText: 'Image',
              ),
            ),
            ReactiveTextField<int>(
              formControlName: 'likes',
              decoration: const InputDecoration(
                labelText: 'Likes',
              ),
            ),
            //! ERROR cuando se utiliza tags
            // ReactiveCheckbox(
            //   formControlName: 'tags',
            //   ),
            const SizedBox(height: 20),
            // submit
            ReactiveFormConsumer(builder: (context, form, child) {
              return ElevatedButton(
                onPressed: () {
                  if (form.valid) {
                    print(form.value);
                  } else {
                    form.markAllAsTouched();
                  }
                },
                child: const Text('Submit'),
              );
            }),
          ],
        ),
      ),
    );
  }
}
