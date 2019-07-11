using System.Windows;
using TreeDataEditor.DataModels;

namespace TreeDataEditor
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            
            // Тестовые данные
            DataContext = new { Contracts = TestData.Contracts };
        }
    }
}
