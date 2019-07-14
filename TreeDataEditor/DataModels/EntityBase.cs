namespace TreeDataEditor.DataModels
{
    /// <summary>
    /// Базовый класс для сущностей БД
    /// </summary>
    public abstract class EntityBase
    {
        /// <summary>
        /// Идентификатор
        /// </summary>
        public int Id { get; set; }
    }
}
