using System.Data.Entity;

namespace TreeDataEditor.DataModels
{
    /// <summary>
    /// Контекст БД
    /// </summary>
    class DataBaseContext : DbContext
    {
        public DataBaseContext() : base("DefaultConnection")
        {
        }

        /// <summary>
        /// Контракты
        /// </summary>
        public DbSet<Contract> Contracts { get; set; }
    }
}
