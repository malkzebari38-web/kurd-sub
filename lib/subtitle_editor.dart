import 'package:flutter/material.dart';
import 'subtitle_model.dart';

class SubtitleEditor extends StatefulWidget {
  final List<SubtitleItem> subtitles;
  const SubtitleEditor({super.key, required this.subtitles});

  @override
  State<SubtitleEditor> createState() => _SubtitleEditorState();
}

class _SubtitleEditorState extends State<SubtitleEditor> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.subtitles.length,
      itemBuilder: (context, index) {
        final item = widget.subtitles[index];
        return ListTile(
          leading: Text('${item.index}'),
          title: TextFormField(
            initialValue: item.text,
            onChanged: (value) => item.text = value,
          ),
          subtitle: Text('${item.start} --> ${item.end}'),
        );
      },
    );
  }
}
