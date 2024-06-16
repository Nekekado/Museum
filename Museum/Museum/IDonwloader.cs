using System;
using System.Collections.Generic;
using System.Text;

namespace Museum
{
    public interface IDonwloader
    {
        void DownloadFile(string url, List<Zone> zones);
        event EventHandler<DownloadEventArgs> OnFileDownloaded;
    }

    public class DownloadEventArgs:EventArgs
    {
        public bool FileSaved = false;

        public DownloadEventArgs(bool fileSaved)
        {
            FileSaved = fileSaved;
        }
    }
}
