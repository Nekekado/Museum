using System;
using System.Collections.Generic;
using System.Text;

namespace Museum
{
    public interface IAudio
    {
        void PlayAudio(string filePath);
        void StopAudio();
    }
}
