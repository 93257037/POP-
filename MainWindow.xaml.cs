using SR_26_2021_POP2022.Models;
using SR_26_2021_POP2022.Windows;
using System;
using System.Collections.Generic;
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

namespace SR_26_2021_POP2022
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            //uvlacim inicijalne test podatke - kada prvi put pokrecem
            //Data.Instance.Initialize();

            //inicijalne podatke citam iz fajlova - kada imam kreirane fajlove
            Data.Instance.CitanjeEntiteta("korisnici.txt");
            Data.Instance.CitanjeEntiteta("profesori.txt");
        }

        private void btnStart_Click(object sender, RoutedEventArgs e)
        {
            AllProfessorsWindow mainWindow = new AllProfessorsWindow();
            this.Hide();
            mainWindow.Show();
        }
    }
}
