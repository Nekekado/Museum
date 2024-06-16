using System;
using Xamarin.Forms;
using Xamarin.Forms.Maps;
using Plugin.Geolocator;
using System.Collections.Generic;

namespace Museum
{
    public partial class MainPage : ContentPage
    {
        private ZoneViewModel _zoneViewModel;
        private double _timeToUpdate = 10;
        private IDonwloader _downloader = DependencyService.Get<IDonwloader>();

        public MainPage()
        {
            InitializeComponent();

            //_downloader.OnFileDownloaded += OnFileDownLoaded;

            // Создается класс, в котором считывается json с сервера
            _zoneViewModel = new ZoneViewModel();
            // Перенос данных с json в список Zones
            _zoneViewModel.TestLoadData();

            // Создание полигонов на карте
            foreach (var zone in _zoneViewModel.Zones)
            {
                Polygon polygon = zone.CreatePolygon(); // Создание полигона как элемент класса
                map.MapElements.Add(polygon); // Добовление полигона на карту
            }

            DownLoadFile("https://disk.yandex.ru/d/VtqgKifII1STMg/аудио", _zoneViewModel.Zones);

            // Таймер на вызов метода проверки зон каждые timeToUpdate
            Device.StartTimer(TimeSpan.FromSeconds(_timeToUpdate), () => {
                Device.BeginInvokeOnMainThread(() => CheckInZone());
                return true;
            });
        }

        private void OnFileDownLoaded(object sender, DownloadEventArgs e)
        {
            if(e.FileSaved)
            {
                DisplayAlert("Downloader", "File Saved Successfully", "Close");
            }
            else
            {
                DisplayAlert("Downloader", "File error while saving", "Close");
            }    
        }

        public void DownLoadFile(string url, List<Zone> zones)
        {
            _downloader.DownloadFile(url, zones);
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
            foreach(var zone in _zoneViewModel.Zones)
            {
                // Если пользователь в зоне
               if( zone.InPoly(pos))
                {
                    label.Text = zone.id.ToString(); // Вывести айди зоны
                    DependencyService.Get<IAudio>().PlayAudio(zone.audio);// Запустить музыку
                    break;
                }
                else // Если не в зоне
                {
                    label.Text = "Не в зоне"; // Вывести, что не в зоне
                    DependencyService.Get<IAudio>().StopAudio();// Нужно стопнуть музыку
                }
            }
        }
    }
}
