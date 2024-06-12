using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Maps;

namespace Museum
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();



            Polygon zone1 = new Polygon
            {
                StrokeColor = Color.Red,
                StrokeWidth = 8,
                FillColor = Color.FromRgba(252, 0, 0, 125),
                Geopath =
                {
                    new Position(59.278476, 39.716340),
                    new Position(59.278347, 39.716519),
                    new Position(59.278435, 39.716891),
                    new Position(59.278598, 39.716742)
                }
            };

            map.MapElements.Add(zone1);
        }
    }
}
