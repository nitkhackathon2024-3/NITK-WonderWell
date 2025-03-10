extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}

extension Range on num {
  bool inRange(num low, num high) {
    return (low <= this && this <= high);
  }
}

extension StringExtensions on String {
  String toCapitalCase() {
    if (isEmpty) return this;

    final words = split('_');
    final capitalizedWords = words.map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    });

    return capitalizedWords.join(' ');
  }
}
