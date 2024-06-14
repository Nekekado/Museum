using System;
using Xamarin.Forms;
using Xamarin.Forms.Maps;
using Plugin.Geolocator;

namespace Museum
{
    public partial class MainPage : ContentPage
    {
        ZoneViewModel zoneViewModel;
        double timeToUpdate = 10;

        public MainPage()
        {
            InitializeComponent();

            // Создается класс, в котором считывается json с сервера
            zoneViewModel = new ZoneViewModel();
            // Перенос данных с json в список Zones
            zoneViewModel.TestLoadData();
            // Создание полигонов на карте
            foreach (var zone in zoneViewModel.Zones)
            {
                Polygon polygon = zone.CreatePolygon(); // Создание полигона как элемент класса
                map.MapElements.Add(polygon); // Добовление полигона на карту
            }

            // Таймер на вызов метода проверки зон каждые timeToUpdate
            Device.StartTimer(TimeSpan.FromSeconds(timeToUpdate), () => {
                Device.BeginInvokeOnMainThread(() => CheckInZone());
                return true;
            });
        }

        // Временно не рабочий метод проигрывания музыки
        private void PlayAuido(string path)
        {
            var audio = new AudioService();
            audio.PlayAudio(path);
        }

        // Метод для проверки в зоне ли пользователь
        private async void CheckInZone()
        {
            // Подключение геолокатора
            var locator = CrossGeolocator.Current;
            // Получение позиции пользователя
            var p = await locator.GetPositionAsync();
            
            Position pos = new Position(p.Latitude, p.Longitude);

            // Проверка всех зон
            foreach(var zone in zoneViewModel.Zones)
            {
                // Если пользователь в зоне
               if( zone.InPoly(pos))
                {
                    label.Text = zone.id.ToString(); // Вывести айди зоны
                    PlayAuido(zone.audio); // Запустить музыку
                    break;
                }
                else // Если не в зоне
                {
                    label.Text = "Не в зоне"; // Вывести, что не в зоне
                    // Нужно стопнуть музыку
                }
            }
        }
    }
}
