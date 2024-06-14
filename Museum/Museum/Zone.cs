using System.Collections.Generic;
using Xamarin.Forms.Maps;

namespace Museum
{
    public class Zone
    {
        private Polygon _zone;
        private double _alpha = 0.5;

        public string id { get; set; }
        public string name { get; set; }
        public string color { get; set; }
        public string audio { get; set; }
        public List<List<double>> coordinates { get; set; }

        public Polygon CreatePolygon()
        {
            Polygon polygon = new Polygon
            {
                StrokeColor = Xamarin.Forms.Color.FromHex(color), // Установление цвета обводки
                StrokeWidth = 9, // Толщина обводки
                FillColor = Xamarin.Forms.Color.FromHex(color), // Цвет заливки полигона
            };
            Xamarin.Forms.Color c = polygon.FillColor; // Сохроняем цвет заливки
            polygon.FillColor = c.MultiplyAlpha(_alpha); // Устанавливаем прозрачность
            
            // Добовляем точки в полигон
            for (int i = 0; i < coordinates.Count; i++)
            {
                polygon.Geopath.Add(new Position(coordinates[i][0], coordinates[i][1]));
            }
            _zone = polygon; // устанавливаем ссылку на полигон
            return polygon;
        }

        public bool InPoly(Position position)
        {
            bool c = false;
            for(int i = 0, j = _zone.Geopath.Count - 1; i < _zone.Geopath.Count; j = i++)
            {
                // проверка в зоне или нет
                if ((((_zone.Geopath[i].Latitude <= position.Latitude) && (position.Latitude < _zone.Geopath[j].Latitude)) || 
                    ((_zone.Geopath[j].Latitude <= position.Latitude) && (position.Latitude < _zone.Geopath[i].Latitude))) &&
                    (((_zone.Geopath[j].Latitude - _zone.Geopath[i].Latitude) != 0) && (position.Longitude > ((_zone.Geopath[j].Longitude - _zone.Geopath[i].Longitude) * 
                    (position.Latitude - _zone.Geopath[i].Latitude) / (_zone.Geopath[j].Latitude - _zone.Geopath[i].Latitude) + _zone.Geopath[i].Longitude))))
                {
                    c = !c;
                }  
            }
            return c;
        }
    }
}
