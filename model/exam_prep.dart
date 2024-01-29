
abstract class Playable{
  play();
  pause();
  stop();
}
class MediaFile extends Playable {
  
  @override
  void play() {
    print('Music started');
  }

   @override
  void pause() {
    print('Music paused');
  }

 
  @override
  void stop() {
    print('Music stopped');
  }
}
