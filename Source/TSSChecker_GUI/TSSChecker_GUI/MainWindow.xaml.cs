using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;


namespace TSSChecker_GUI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        string ThisCurrentDirectory = Directory.GetCurrentDirectory() + "\\";

        string SavePah = "";
        string TSSChecker = "tsschecker_windows.exe";

        public MainWindow()
        {
            InitializeComponent();
            StartBtn.Click += ShowFolderDialog;
            CheckForFiles();
        }

        public void StartFetching()
        {
            ProcessStartInfo startInfo = new ProcessStartInfo();
            startInfo.FileName = ThisCurrentDirectory + "\\files\\" + TSSChecker;
            startInfo.UseShellExecute = false;

            // Conditions.
            if (iOSModelTxtBox.Text == "" && ECIDTxtBox.Text == "" && iOSVersionTxtBox.Text == "")
            {
                MessageBox.Show("Please enter a device ECID, version and model.", "Required fields are not filled!");
            }
            else
            {
                if (BuildNumberTxtBox.Text == "")
                {
                    startInfo.Arguments = string.Format("-d {0} -e {1} -i {2} -s --save-path \"{3}\"", iOSModelTxtBox.Text, ECIDTxtBox.Text, iOSVersionTxtBox.Text, SavePah);
                }
                else
                {
                    startInfo.Arguments = string.Format("-d {0} -e {1} -i {2} -s --save-path \"{3}\" --buildid {4}", iOSModelTxtBox.Text, ECIDTxtBox.Text, iOSVersionTxtBox.Text, SavePah, BuildNumberTxtBox.Text);
                }

                Process.Start(startInfo);
            }
        }

        private void ShowFolderDialog(object sender, EventArgs e)
        {
            if (iOSModelTxtBox.Text == "" && ECIDTxtBox.Text == "" && iOSVersionTxtBox.Text == "")
            {
                MessageBox.Show("Please enter a device ECID, version and model.", "Required fields are not filled!");
            }
            else
            {
                if (SavePah == "")
                {
                    ShowSaveFolderBrowser();
                }
                else
                {
                    StartFetching();
                }
            }
        }

        public void ShowSaveFolderBrowser()
        {
            System.Windows.Forms.FolderBrowserDialog FD = new System.Windows.Forms.FolderBrowserDialog();
            FD.Description = "Browse for a place to save the blobs.";
            if (FD.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                SavePah = FD.SelectedPath;
                StartFetching();
            }
        }

        public void CheckForFiles()
        {
            if (!File.Exists(ThisCurrentDirectory + "\\files\\" + TSSChecker))
            {
                MessageBox.Show(string.Format("The {0} program is gone! You will not be able to use this without it. Please re-download it and put it inside the \"files\" folder.", TSSChecker));
                Application.Current.Shutdown();
            }
        }
    }
}
