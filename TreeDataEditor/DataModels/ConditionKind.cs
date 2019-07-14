namespace TreeDataEditor.DataModels
{
    /// <summary>
    /// Модель данных об условиях
    /// </summary>
    public class ConditionKind : EntityBase
    {
        /// <summary>
        /// Название условия
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// Значение Ретро
        /// </summary>
        public int? Retro { get; set; }

        /// <summary>
        /// Значение Ретро, дистр
        /// </summary>
        public int? RetroDistr { get; set; }

        /// <summary>
        /// Значение РКУ
        /// </summary>
        public int? Rku { get; set; }

        /// <summary>
        /// Значение РКУ, дистр
        /// </summary>
        public int? RkuDistr { get; set; }
    }
}
