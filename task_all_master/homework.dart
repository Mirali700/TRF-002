abstract class Playable {
  play();
  pause();
  stop();
}

class MediaFile implements Playable {
  String title;
  int duration;
  String filePath;

  MediaFile(this.title, this.duration, this.filePath);

  @override
  void play() {
    print('$title started');
  }

  @override
  void pause() {
    print('$title paused');
  }

  @override
  void stop() {
    print('$title stopped');
  }
}

mixin Shuffleable {
  void shufflePlaylist(List<Playable> playlist) {
    playlist.shuffle();
    print("Playlist shuffled");
  }
}

class Playlist extends MediaFile with Shuffleable {
  String name;
  List<Playable> mediaFiles;

  Playlist(this.name, this.mediaFiles,super.title,super.duration,super.filePath); 

  void playPlaylist() {
    shufflePlaylist(mediaFiles);
    for (var mediaFile in mediaFiles) {
      mediaFile.play();
    }
  }
}

