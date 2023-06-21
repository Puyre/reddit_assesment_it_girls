import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final String title;
  final String? image;
  final VoidCallback onTap;

  const PostWidget({
    super.key,
    required this.title,
    required this.onTap,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Material(
          child: InkWell(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: const Border.fromBorderSide(
                  BorderSide(
                    color: Colors.blue,
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                    ),
                  ),
                  if (image != null)
                    Image.network(
                      image!,
                      width: 70,
                      errorBuilder: (context, _, __) {
                        return const SizedBox(
                          width: 70,
                        );
                      },
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
