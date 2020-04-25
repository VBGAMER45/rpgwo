using System;
using System.Collections.Generic;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Diagnostics;
using System.Net;
using System.IO;
using System.Threading;
using System.IO.Compression;

namespace Autoupdater
{
    public partial class Form1 : Form
    {
        string SelectedServerName;
        string Master1Url = ""; //Main Client Files Url
        string ConnectUrl = "";
        string Master2Url = null;

        public int fileCount;

        ArrayList ServerArray = new ArrayList();

        public Form1()
        {
            InitializeComponent();

            object Switch = 0;
            DownloadFile(Switch);
            Switch = 1;
            Thread t = new Thread(DownloadFile);
            t.Start(Switch);
            ReadConnectIni();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (lstServerSelect.SelectedIndex == -1)
            {
                MessageBox.Show("Please Select a Sever");
            }
            else if (lstServerSelect.SelectedIndex >= 0)
            {
                string[] splitArray = lstServerSelect.SelectedItem.ToString().Split(':');
                Thread t = new Thread(start);
                SelectedServerName = splitArray[0].Substring(0, splitArray[0].Length - 1);
                //Download Master2.dat
                Master2Url = ServerArray[lstServerSelect.SelectedIndex].ToString();
                t.Start();
            }
        }
        public void start()
        {
                try
                {

                    //Checks if server directory is already made
                    DirectoryExists();

                    object Switch = 2;
                    DownloadFile(Switch);

                    //
                    ReadMaster("Master1.dat", 1);
                    ReadMaster("Master2.dat", 2);

                    // ReadMaster(SelectedServerName + ".files/" + "master2.dat", 0);
                }
                catch (ArgumentOutOfRangeException)
                {
                    MessageBox.Show("Please Select a Sever");
                }
                catch (NullReferenceException)
                {
                }

                LaunchClient();
        }
        void DownloadFile(Object obj)
        {
            string swhich = obj.ToString();
            using (WebClient downloader = new WebClient())
            {
                switch (swhich.ToString())
                {
                    case "0":
                        try
                        {
                            downloader.DownloadFile(ConnectUrl, "Connect.ini");
                        }
                        catch (WebException)
                        {
                            MessageBox.Show("Unable to download Connect.ini");
                        }
                    break;

                    case "1":
                    try
                    {
                        downloader.DownloadFile(Master1Url + "Master1.dat", "Master1.dat");
                    }
                    catch (WebException)
                    {
                        MessageBox.Show("Unable to download Master1.dat");
                    }
                    break;

                    case "2":
                    try
                    {
                        downloader.DownloadFile(Master2Url + "/Master2.dat",
                        SelectedServerName + ".files/" + "Master2.dat");
                    }
                    catch (WebException)
                    {
                        MessageBox.Show("Unable to download Master2.dat");
                    }
                    break;
                }
            }
        }

        void decompress(string HttpAddress, string SaveAsName, int which)
        {
            FileStream fDest = null;
            switch (which.ToString())
            {
                case "1":
                    fDest = new FileStream(SaveAsName, FileMode.Create);
                    break;
                case "2":
                    fDest = new FileStream(SelectedServerName + ".files" + "/" +  SaveAsName, FileMode.Create);
                    break;
            }
            using (WebClient downloader = new WebClient())
            {
                MemoryStream ms = new MemoryStream(downloader.DownloadData(HttpAddress +
                SaveAsName + ".gz"));

                byte[] Buffer = new byte[ms.Length];  

                GZipStream gStream = new GZipStream(ms, CompressionMode.Decompress);
                int x = 0;
                while ((x = gStream.Read(Buffer, 0, System.Convert.ToInt32(ms.Length))) > 0)
                {
                    fDest.Write(Buffer, 0, x);
                }
            }
            fDest.Close();
        }

        void ReadConnectIni()
        {

            using (StreamReader ConnectReader = new StreamReader("Connect.ini"))
            {
                string line;
                string ServerLine = "";
                while ((line = ConnectReader.ReadLine()) != null)
                {
                    if (line == "")
                    {

                    }
                    else if (line.ToUpper().Substring(0, 3) == "IP=")
                    {

                    }
                    else if (line.ToUpper().Substring(0, 5) == "NAME=")
                    {
                        if (ServerLine != "")
                        {
                            lstServerSelect.Items.Add(ServerLine + "::");
                        }
                            //lstServerSelect.Items.Add(line.Substring(5, line.Length - 5));
                            ServerLine = line.Substring(5, line.Length - 5);          
                        
                    }
                    else if (line.ToUpper().Substring(0, 5) == "PORT=")
                    {

                    }
                    else if (line.ToUpper().Substring(0, 10) == "UPDATEURL=")
                    {
                        ServerArray.Add(line.Substring(10, line.Length - 10));
                    }
                    else if (line.ToUpper().Substring(0, 12) == "DESCRIPTION=")
                    {
                        if (ServerLine != "")
                        {
                        lstServerSelect.Items.Add(ServerLine + " :: " + line.Substring(12, line.Length - 12));
                        ServerLine = "";
                        }
                        
                    }
                }
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        void DirectoryExists()
        {
            try
            {
                //string[] splitArray = SelectedServerName.Split(':');
                DirectoryInfo dir = new DirectoryInfo(SelectedServerName + ".files");
                //DirectoryInfo dir = new DirectoryInfo(splitArray[0].ToString().Substring(0, splitArray[0].Length -2 )+ ".files");

                if (dir.Exists)
                    return;
                else
                    dir.Create();
            }
            catch (NullReferenceException)
            {
            }
        }

        void ReadMaster(string FileToRead, int which)
        {
            BinaryReader br;
            int fileCount;
            SetProgressBar spb = new SetProgressBar(ProgressBar);

            switch (which.ToString())
            {
                case "1":
                     br = new BinaryReader(File.Open(FileToRead, FileMode.Open));

                    fileCount = br.ReadInt32();
                    this.Invoke(spb, new object[]{ fileCount, 1});

                    for (int x = 0; x < fileCount; x++)
                    {
                        string fileName = br.ReadString();

                        int Month = br.ReadInt32();
                        int Day = br.ReadInt32();
                        int Year = br.ReadInt32();
                        int Hour = br.ReadInt32();
                        int Minute = br.ReadInt32();
                        int Seconds = br.ReadInt32();
                        int Milliseconds = br.ReadInt32();

                        fileCheck(fileName, Month, Day, Year, Hour, Minute, Seconds, Milliseconds, 1);
                        try
                        {
                            this.Invoke(spb, new object[] { 0, 2 });
                        }
                        catch (InvalidOperationException)
                        {
                        }
                    }
                    break;
                case "2":
                     br = new BinaryReader(File.Open(SelectedServerName + ".files" + "/" + FileToRead, FileMode.Open));

                    fileCount = br.ReadInt32();
                    this.Invoke(spb, new object[]{ fileCount, 3});

                    for (int x = 0; x < fileCount; x++)
                    {
                        string fileName = br.ReadString();

                        int Month = br.ReadInt32();
                        int Day = br.ReadInt32();
                        int Year = br.ReadInt32();
                        int Hour = br.ReadInt32();
                        int Minute = br.ReadInt32();
                        int Seconds = br.ReadInt32();
                        int Milliseconds = br.ReadInt32();

                        fileCheck(fileName, Month, Day, Year, Hour, Minute, Seconds, Milliseconds, 2);
                        try
                        {
                            this.Invoke(spb, new object[] { 0, 4 });
                        }
                        catch (InvalidOperationException)
                        {
                        }
                    }
                    break;
            }
        }

        private void ProgressBar(int fileCount, int Switch)
        {
            switch (Switch.ToString())
            {
                case "1":
                    this.progressBar1.Maximum = fileCount;
                    break;
                case "2":
                    this.progressBar1.Increment(1);
                    this.progressBar1.Refresh();
                    break;
                case "3":
                    this.progressBar2.Maximum = fileCount;
                    break;
                case "4":
                    this.progressBar2.Increment(1);
                    this.progressBar2.Refresh();
                    break;
            }
        }

        public delegate void SetProgressBar(int fileCount, int which);

        void fileCheck(string fileName, int Month, int Day, int Year, int Hour, int Minute, int Seconds, int Milliseconds, int which)
        {
            string Url = null;
            string timeSetName = null;
            switch (which.ToString())
            {
                case "1":
                    Url = Master1Url;
                    timeSetName = fileName;
                    break;
                case "2":
                    Url = Master2Url;
                    timeSetName = SelectedServerName + ".files" + "/" + fileName;
                    break;
            }

            DateTime currentTime = File.GetLastWriteTime(timeSetName);
            if (currentTime.Month != Month)
            {
                decompress(Url, fileName, which);
                DateTime dt = new DateTime(Year, Month, Day, Hour, Minute, Seconds, Milliseconds);
                File.SetLastWriteTime(timeSetName, dt);
            }
            if (currentTime.Day != Day)
            {
                decompress(Url, fileName, which);
                DateTime dt = new DateTime(Year, Month, Day, Hour, Minute, Seconds, Milliseconds);
                File.SetLastWriteTime(timeSetName, dt);
            }
            if (currentTime.Year != Year)
            {
                decompress(Url, fileName, which);
                DateTime dt = new DateTime(Year, Month, Day, Hour, Minute, Seconds, Milliseconds);
                File.SetLastWriteTime(timeSetName, dt);
            }
            if (currentTime.Hour != Hour)
            {
                decompress(Url, fileName, which);
                DateTime dt = new DateTime(Year, Month, Day, Hour, Minute, Seconds, Milliseconds);
                File.SetLastWriteTime(timeSetName, dt);
            }
            if (currentTime.Minute != Minute)
            {
                decompress(Url, fileName, which);
                DateTime dt = new DateTime(Year, Month, Day, Hour, Minute, Seconds, Milliseconds);
                File.SetLastWriteTime(timeSetName, dt);
            }
            if (currentTime.Second != Seconds)
            {
                decompress(Url, fileName, which);
                DateTime dt = new DateTime(Year, Month, Day, Hour, Minute, Seconds, Milliseconds);
                File.SetLastWriteTime(timeSetName, dt);
            }
            if (currentTime.Millisecond != Milliseconds)
            {
                decompress(Url, fileName, which);
                DateTime dt = new DateTime(Year, Month, Day, Hour, Minute, Seconds, Milliseconds);
                File.SetLastWriteTime(timeSetName, dt);
            }

        }

        void LaunchClient()
        {
            try
            {
                ProcessStartInfo startInfo = new ProcessStartInfo(@"client.exe");

                string StrArg = SelectedServerName + ".files";

                startInfo.Arguments = StrArg;

                try
                {
                    Process.Start(startInfo);
                }
                catch (Win32Exception)
                {
                    MessageBox.Show("Unable to find Client.exe");
                }
                Application.Exit();
            }
            catch (NullReferenceException)
            {

            }
        }
    }
}
