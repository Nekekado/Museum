using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms.Maps;

namespace Museum
{
    public class InteractiveZone
    {
        private Polygon _zone;
        private string _songPath;
    
        public Polygon Zone => _zone;
        public string SongPath => _songPath;

        public InteractiveZone(Polygon zone, string songPath)
        {
            _zone = zone;
            _songPath = songPath;
        }

        public bool InZone(Position position)
        {
            
        }
    }
}
