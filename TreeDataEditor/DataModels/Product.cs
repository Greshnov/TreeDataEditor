using System.Collections.Generic;
using System.Linq;

namespace TreeDataEditor.DataModels
{
    /// <summary>
    /// Модель данных об артикуле / продукте
    /// </summary>
    public class Product : EntityBase
    {
        /// <summary>
        /// Артикул
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// Агрегированное значение Ретро по всем условиям
        /// </summary>
        public int? Retro { get { return Conditions.Sum(i => i.Retro); } }

        /// <summary>
        /// Агрегированное значение Ретро, дистр по всем условиям
        /// </summary>
        public int? RetroDistr { get { return Conditions.Sum(i => i.RetroDistr); } }

        /// <summary>
        /// Агрегированное значение РКУ по всем условиям
        /// </summary>
        public int? Rku { get { return Conditions.Sum(i => i.Rku); } }

        /// <summary>
        /// Агрегированное значение РКУ, дистр по всем условиям
        /// </summary>
        public int? RkuDistr { get { return Conditions.Sum(i => i.RkuDistr); } }

        public virtual List<ConditionKind> Conditions { get; set; }
    }
}
