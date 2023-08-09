import 'dart:convert';
import 'package:fm/models/pair.dart';

class Data {
  final List<Pair> words;
  Data({
    required this.words,
  });

  Data copyWith({
    List<Pair>? words,
  }) {
    return Data(
      words: words ?? this.words,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'words': words,
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    var list = map['data'] as List;
    var pairs = list.map<Pair>((json) => Pair.fromMap(json)).toList();
    return Data(words: pairs);
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) =>
      Data.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Data(words: $words)';

  @override
  int get hashCode => words.hashCode;
}
