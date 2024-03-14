import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class Control extends StatelessWidget {
  const Control({super.key, required this.audioPlayer, required this.size});
  final AudioPlayer audioPlayer;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          color: Theme.of(context).primaryColor,
          icon: const Icon(Icons.skip_previous),
          iconSize: size,
          onPressed: audioPlayer.seekToPrevious,
        ),
        StreamBuilder<PlayerState>(
          stream: audioPlayer.playerStateStream,
          builder: (context, snapshot) {
            final playerState = snapshot.data;
            final processingState = playerState?.processingState;
            final playing = playerState?.playing;
            if (processingState == ProcessingState.loading ||
                processingState == ProcessingState.buffering) {
              return const CircularProgressIndicator();
            } else if (playing != true) {
              return IconButton(
                color: Theme.of(context).primaryColor,
                icon: const Icon(Icons.play_arrow),
                iconSize: size,
                onPressed: audioPlayer.play,
              );
            } else if (processingState != ProcessingState.completed) {
              return IconButton(
                color: Theme.of(context).primaryColor,
                icon: const Icon(Icons.pause),
                iconSize: size,
                onPressed: audioPlayer.pause,
              );
            } else {
              return IconButton(
                color: Theme.of(context).primaryColor,
                icon: const Icon(Icons.replay),
                iconSize: size,
                onPressed: () => audioPlayer.seek(Duration.zero, index: 0),
              );
            }
          },
        ),
        IconButton(
          color: Theme.of(context).primaryColor,
          icon: const Icon(Icons.skip_next),
          iconSize: size,
          onPressed: audioPlayer.seekToNext,
        ),
      ],
    );
  }
}
