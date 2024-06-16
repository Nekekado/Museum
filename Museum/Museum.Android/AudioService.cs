using Android.Media;
using Museum.Droid;
using System;
using Museum.Droid;
using Xamarin.Forms;

[assembly: Dependency(typeof(AudioService))]
namespace Museum.Droid
{
    public class AudioService : IAudio
    {
        private bool _isPlaying = false;
        private MediaPlayer _player = new MediaPlayer();

        public double TimeToSwitch = 5;
        public AudioService() { }

        public void PlayAudio(string fileName)
        {
            if (_isPlaying)
            {
                SwitchAudio(fileName);
            }
            else
            {
                var fd = global::Android.App.Application.Context.Assets.OpenFd(fileName);
                _player.Prepared += (s, e) =>
                {
                    _player.Start();
                };
                _player.SetDataSource(fd.FileDescriptor, fd.StartOffset, fd.Length);
                _player.Prepare();
                _isPlaying = true;
            }
        }

        public void StopAudio()
        {
            if (_isPlaying)
            {
                _player?.Stop();
                _isPlaying = false;
            }
        }

        private void SwitchAudio(string fileName)
        {
            Device.StartTimer(TimeSpan.FromSeconds(TimeToSwitch), () =>
            {
                Device.BeginInvokeOnMainThread(() => StopAudio());
                Device.BeginInvokeOnMainThread(() => PlayAudio(fileName));
                _isPlaying = false;
                return true;
            });
        }
    }
}