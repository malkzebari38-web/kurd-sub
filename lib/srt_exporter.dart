import 'subtitle_model.dart';

class SrtExporter {
  static String exportToSrt(List<SubtitleItem> subtitles) {
    StringBuffer buffer = StringBuffer();
    for (var item in subtitles) {
      buffer.writeln(item.index);
      buffer.writeln('${_formatDuration(item.start)} --> ${_formatDuration(item.end)}');
      buffer.writeln(item.text);
      buffer.writeln();
    }
    return buffer.toString();
  }

  static String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String threeDigits(int n) => n.toString().padLeft(3, '0');
    String hours = twoDigits(duration.inHours);
    String minutes = twoDigits(duration.inMinutes.remainder(60));
    String seconds = twoDigits(duration.inSeconds.remainder(60));
    String milliseconds = threeDigits(duration.inMilliseconds.remainder(1000));
    return '$hours:$minutes:$seconds,$milliseconds';
  }
}
