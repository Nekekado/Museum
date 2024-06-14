
namespace Museum
{
    public class AudioService
    {
        public void PlayAudio(string filePath)
        {
            var player = Plugin.SimpleAudioPlayer.CrossSimpleAudioPlayer.Current;
            player.Load("Audio/about_museum.mp3");
            player.Play();
        }
    }
}
