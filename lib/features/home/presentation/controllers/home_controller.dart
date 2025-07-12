import 'package:flutter/foundation.dart';
import 'package:english_words/english_words.dart';

class HomeController extends ChangeNotifier {
  WordPair _current = WordPair.random();

  WordPair get current => _current;

  void generateNewWord() {
    _current = WordPair.random();
    notifyListeners();
  }
}
