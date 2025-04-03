class YoutubePlayerFlags {
  const YoutubePlayerFlags({
    this.autoPlay = false,
    this.hideControls = true,
    this.hideThumbnail = true,
    this.isLive = false,
    this.mute = false,
    this.showLiveFullscreenButton = false,
    this.enableCaption = false,
    this.useHybridComposition = false,
  });

  final bool autoPlay;
  final bool hideControls;
  final bool hideThumbnail;
  final bool isLive;
  final bool mute;
  final bool showLiveFullscreenButton;
  final bool enableCaption;
  final bool useHybridComposition;

  YoutubePlayerFlags copyWith({
    bool? autoPlay,
    bool? hideControls,
    bool? hideThumbnail,
    bool? isLive,
    bool? mute,
    bool? showLiveFullscreenButton,
    bool? enableCaption,
    bool? useHybridComposition,
  }) {
    return YoutubePlayerFlags(
      autoPlay: autoPlay ?? this.autoPlay,
      hideControls: hideControls ?? this.hideControls,
      hideThumbnail: hideThumbnail ?? this.hideThumbnail,
      isLive: isLive ?? this.isLive,
      mute: mute ?? this.mute,
      showLiveFullscreenButton: showLiveFullscreenButton ?? this.showLiveFullscreenButton,
      enableCaption: enableCaption ?? this.enableCaption,
      useHybridComposition: useHybridComposition ?? this.useHybridComposition,
    );
  }
} 