using System.Data.Entity;
using System.Windows;
using TreeDataEditor.DataModels;

namespace TreeDataEditor
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        /// <summary>
        /// Контекст БД
        /// </summary>
        DataBaseContext db;

        public MainWindow()
        {
            InitializeComponent();

            // Тестовые данные (локальные)
            // DataContext = new { Contracts = TestData.Contracts };
            
            // Создание контекста БД
            db = new DataBaseContext();
            // Загрузка данных из БД
            db.Contracts.Load();
            // Привязка к контексту данных приложени (для отображения)
            DataContext = new { Contracts = db.Contracts.Local.ToBindingList() };
            
            this.Closing += MainWindow_Closing;
        }

        /// <summary>
        /// Обработчик события закрытия окна
        /// </summary>
        private void MainWindow_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            // Освобождение ресурсов контекста БД
            if (db != null)
                db.Dispose();
        }

        /// <summary>
        /// Обработчик выбора строки в списке контрактов
        /// </summary>
        private void ContractsList_SelectedItemChanged(object sender, RoutedPropertyChangedEventArgs<object> e)
        {
            ClearFields();

            var item = ContractsList.SelectedItem;

            if (item is Contract)
            {
                var contract = (Contract)item;
                ContractFullName.Text = contract.FullName;
                ContractNumber.Text = contract.ContractNumber.ToString();
                Customer.Text = contract.Customer;
                CommercialNetwork.Text = contract.CommercialNetwork;
                Status.Text = contract.Status;
                StartDate.Text = contract.StartDate.ToShortDateString();
                EndDate.Text = contract.EndDate.ToShortDateString();
            }
            else if (item is Product)
            {
                var product = (Product)item;
                ProductName.Text = product.Name;
                RetroSum.Text = product.Retro.HasValue ? product.Retro.ToString() : null;
                RetroDistrSum.Text = product.RetroDistr.HasValue ? product.RetroDistr.ToString() : null;
                RkuSum.Text = product.Rku.HasValue ? product.Rku.ToString() : null;
                RkuDistrSum.Text = product.RkuDistr.HasValue ? product.RkuDistr.ToString() : null;
            }
            else if (item is ConditionKind)
            {
                var condition = (ConditionKind)item;
                ConditionKindName.Text = condition.Name;
                Retro.Text = condition.Retro.HasValue ? condition.Retro.ToString() : null;
                RetroDistr.Text = condition.RetroDistr.HasValue ? condition.RetroDistr.ToString() : null;
                Rku.Text = condition.Rku.HasValue ? condition.Rku.ToString() : null;
                RkuDistr.Text = condition.RkuDistr.HasValue ? condition.RkuDistr.ToString() : null;

            }
        }

        /// <summary>
        /// Очищает поля ввода / вывода
        /// </summary>
        void ClearFields()
        {
            ContractFullName.Text = null;
            ContractNumber.Text = null;
            Customer.Text = null;
            CommercialNetwork.Text = null;
            Status.Text = null;
            StartDate.Text = null;
            EndDate.Text = null;
            ProductName.Text = null;
            RetroSum.Text = null;
            RetroDistrSum.Text = null;
            RkuSum.Text = null;
            RkuDistrSum.Text = null;
            Retro.Text = null;
            RetroDistr.Text = null;
            Rku.Text = null;
            RkuDistr.Text = null;
        }

    }
}
