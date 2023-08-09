import 'dart:convert';

class Pair {
  final String word;
  final String type;
  Pair({
    required this.word,
    required this.type,
  });

  Pair copyWith({
    String? word,
    String? type,
  }) {
    return Pair(
      word: word ?? this.word,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'word': word,
      'type': type,
    };
  }

  factory Pair.fromMap(Map<String, dynamic> map) {
    return Pair(
      word: map['word'] as String,
      type: map['type'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Pair.fromJson(String source) =>
      Pair.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Data(word: $word, type: $type)';

  @override
  int get hashCode => word.hashCode ^ type.hashCode;

  @override
  bool operator ==(covariant Pair other) {
    if (identical(this, other)) return true;

    return other.word == word && other.type == type;
  }
}
