using System;
using System.Collections.Generic;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Net.Http;
using System.Windows.Input;
using System.ComponentModel;
using System.IO;
using System.Reflection;

namespace Museum
{
    internal class ZoneViewModel : INotifyPropertyChanged
    {
        private List<Zone> _zones;

        public List<Zone> Zones
        {
            get { return _zones; }
            private set
            {
                _zones = value;
                OnPropertyChanged("Zones");
            }
        }

        // Тестовая загрузка json с проекта
        public  void TestLoadData()
        {
            string jsonFileName = "zones.json";  // ссылка на json
            var assembly = typeof(MainPage).GetTypeInfo().Assembly; // получение версии сборки 
            Stream stream = assembly.GetManifestResourceStream($"{assembly.GetName().Name}.{jsonFileName}");  
            using (var reader = new System.IO.StreamReader(stream))  
            {  
                var jsonString = reader.ReadToEnd();// считывание json
                _zones = JsonConvert.DeserializeObject<List<Zone>>(jsonString);  // Создание списка с зонами по json
            }
        }

        // Метод с подключением к серверу, получением json и ее использованием
        private async void LoadData()
        {
            string url = "";

            try
            {
                // подключение к серверу по ссылке
                HttpClient client = new HttpClient();
                client.BaseAddress = new Uri(url);
                var response = await client.GetAsync(client.BaseAddress);
                response.EnsureSuccessStatusCode(); // получение запроса

                var content = await response.Content.ReadAsStringAsync(); // считывание текста с запроса
                JObject o = JObject.Parse(content); // создание json по тексту с запроса


                var zonesInfo = JsonConvert.DeserializeObject<List<Zone>>(o.ToString()); // / Создание списка с зонами по json
                Zones = zonesInfo;
            }
            catch (Exception ex)
            { }
        }

        public event PropertyChangedEventHandler PropertyChanged;
        public void OnPropertyChanged(string prop = "")
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(prop));
        }
    }
}
