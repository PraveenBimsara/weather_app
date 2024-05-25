import 'package:flutter/material.dart';

class card extends StatelessWidget {
  final String time;
  final IconData icon;
  final String temaparature;

  const card({
    super.key,
    required this.time,
    required this.icon,
    required this.temaparature,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 120,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                time,
                maxLines: 1,
                overflow: TextOverflow.clip,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 4,
              ),
              Icon(
                icon,
                size: 24,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                temaparature,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
