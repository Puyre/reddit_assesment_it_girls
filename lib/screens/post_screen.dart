import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  final String title;
  final String? image;
  final String? body;
  final int? ups;

  const PostScreen({
    super.key,
    required this.title,
    this.image,
    this.body,
    this.ups,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 14,
            right: 14,
            top: 14,
          ),
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
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
              const SizedBox(
                height: 12,
              ),
              if (ups != null)
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_upward,
                      color: Colors.pink,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      ups.toString(),
                      style: const TextStyle(
                        color: Colors.pink,
                      ),
                    ),
                  ],
                ),
              const SizedBox(
                height: 12,
              ),
              if (body != null)
                Text(
                  body!,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
