using System;
using System.Collections.Generic;

namespace TreeDataEditor.DataModels
{
    /// <summary>
    /// Модель данных о контракте
    /// </summary>
    public class Contract : EntityBase
    {
        /// <summary>
        /// Номер контракта
        /// </summary>
        public int ContractNumber { get; set; }

        /// <summary>
        /// Заказчик
        /// </summary>
        public string Customer { get; set; }

        /// <summary>
        /// Торговая сеть
        /// </summary>
        public string CommercialNetwork { get; set; }

        /// <summary>
        /// Статус
        /// </summary>
        public string Status { get; set; }

        /// <summary>
        /// Дата начала действия
        /// </summary>
        public DateTime StartDate { get; set; }

        /// <summary>
        /// Дата окончания действия
        /// </summary>
        public DateTime EndDate { get; set; }

        /// <summary>
        /// Артикулы по контракту
        /// </summary>
        public virtual List<Product> Products { get; set; }

        /// <summary>
        /// Полное название контракта
        /// </summary>
        public string FullName
        {
            get
            {
                return String.Format("{0}. {1}/{2} ({3})", ContractNumber, Customer, CommercialNetwork, Status);
            }
        }

        /// <summary>
        /// Дата начала действия в виде строки
        /// </summary>
        public string StartDateStr { get { return StartDate.ToShortDateString(); } }

        /// <summary>
        /// Дата окончания действия в виде строки
        /// </summary>
        public string EndDateStr { get { return EndDate.ToShortDateString(); } }
    }
}
