import 'dart:async';
import 'package:flutter/foundation.dart';
import '../utils/youtube_player_flags.dart';

class YoutubePlayerController extends ChangeNotifier {
  YoutubePlayerController({
    required this.initialVideoId,
    this.flags = const YoutubePlayerFlags(),
  }) {
    _initialize();
  }

  final String initialVideoId;
  final YoutubePlayerFlags flags;

  bool _isReady = false;
  bool get isReady => _isReady;

  bool _isPlaying = false;
  bool get isPlaying => _isPlaying;

  double _currentPosition = 0;
  double get currentPosition => _currentPosition;

  double _duration = 0;
  double get duration => _duration;

  Timer? _positionTimer;

  void _initialize() {
    _startPositionTimer();
  }

  void _startPositionTimer() {
    _positionTimer?.cancel();
    _positionTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _updatePosition();
    });
  }

  void _updatePosition() {
    // This would be implemented to get the actual position from the player
    _currentPosition += 1;
    notifyListeners();
  }

  void play() {
    _isPlaying = true;
    notifyListeners();
  }

  void pause() {
    _isPlaying = false;
    notifyListeners();
  }

  void seekTo(Duration position) {
    _currentPosition = position.inSeconds.toDouble();
    notifyListeners();
  }

  @override
  void dispose() {
    _positionTimer?.cancel();
    super.dispose();
  }
} 