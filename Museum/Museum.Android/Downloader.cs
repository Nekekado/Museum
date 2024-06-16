using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using Museum.Droid;
using Xamarin.Forms;

[assembly: Xamarin.Forms.Dependency(typeof(Downloader))]
namespace Museum.Droid
{
    public class Downloader : IDonwloader
    {
        public event EventHandler<DownloadEventArgs> OnFileDownloaded;

        public void DownloadFile(string url)
        {
            var context = Android.App.Application.Context;
            var pathToNewFolder = Path.Combine(context.GetExternalFilesDir(Android.OS.Environment.StorageDirectory.ToString()).ToString());
            Directory.CreateDirectory(pathToNewFolder);



            try
            {
                WebClient webClient = new WebClient();
                webClient.DownloadFileCompleted += new System.ComponentModel.AsyncCompletedEventHandler(Completed);
                string pathToNewFile = Path.Combine(pathToNewFolder, Path.GetFileName(url));
                webClient.DownloadFileAsync(new Uri(url), pathToNewFile);
            }
            catch(Exception)
            {
                if(OnFileDownloaded!=null)
                {
                    OnFileDownloaded.Invoke(this, new DownloadEventArgs(false));
                }
            }
        }
        private void Completed(object sender, AsyncCompletedEventArgs e)
        {
            if(e.Error!= null)
            {
                if (OnFileDownloaded != null)
                {
                    OnFileDownloaded.Invoke(this, new DownloadEventArgs(false));
                }
            }
            else
            {
                if (OnFileDownloaded != null)
                {
                    OnFileDownloaded.Invoke(this, new DownloadEventArgs(true));
                }
            }
        }
    }
}