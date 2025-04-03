# Custom YouTube Player

A Flutter package for playing YouTube videos with hidden overlays and controls.

## Features

- Hidden YouTube overlays and logos
- Clean video playback interface
- Customizable player controls
- Full-screen support

## Usage

Add to pubspec.yaml:
```yaml
dependencies:
  custom_youtube_player:
    git:
      url: https://github.com/YourUsername/custom_youtube_player.git
      ref: main
```

## Example

```dart
import 'package:custom_youtube_player/custom_youtube_player.dart';

// In your widget:
YoutubePlayer(
  controller: YoutubePlayerController(
    initialVideoId: 'VIDEO_ID',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      hideControls: true,
    ),
  ),
)
``` 