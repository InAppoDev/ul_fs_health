extension ListExtension<T> on List<T> {
  T? maybeGet(int index) {
    return (index >= 0 && index < length) ? this[index] : null;
  }
}