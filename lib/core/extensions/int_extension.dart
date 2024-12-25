extension IntExtension on int {
  String get formatTime {
    final Duration duration = Duration(seconds: this);
    final int minutes = duration.inMinutes;
    final int seconds = duration.inSeconds % 60;
    return "${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}";
  }
}