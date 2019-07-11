using System;
using System.Collections.Generic;

namespace TreeDataEditor.DataModels
{
    /// <summary>
    /// Набор тестовых данных
    /// </summary>
    public class TestData
    {
        /// <summary>
        /// Контракты с информацией об артикулах и условиях по ним
        /// </summary>
        public static List<Contract> Contracts
        {
            get
            {
                return new List<Contract>()
            {
                new Contract()
                {
                    ContractNumber = 102000,
                    Customer = "604579 - ИП Гапеев",
                    CommercialNetwork = "Ромашка",
                    Status = "Согласовано",
                    StartDate = new DateTime(2019,01,01),
                    EndDate = new DateTime(2019,12,31),
                    Products = new List<Product>()
                    {
                        new Product()
                        {
                            Name = "EPICA 130г.",
                            Conditions = new List<ConditionKind>()
                            {
                                new ConditionKind()
                                {
                                    Name = "Объем",
                                    Retro = 10,
                                    RetroDistr = 15,
                                    Rku = 5,
                                    RkuDistr = 6
                                },
                                new ConditionKind()
                                {
                                    Name = "Передача данных",
                                    Retro = 10,
                                    RetroDistr = 15,
                                    Rku = 5,
                                    RkuDistr = 6
                                }
                            }
                        },
                            new Product()
                        {
                            Name = "ALL",
                            Conditions = new List<ConditionKind>()
                            {
                                new ConditionKind()
                                {
                                    Name = "Объем",
                                    Retro = 10,
                                    RetroDistr = 15,
                                    Rku = 5,
                                    RkuDistr = 6
                                },
                                new ConditionKind()
                                {
                                    Name = "Передача данных",
                                    Retro = 10,
                                    RetroDistr = 15,
                                    Rku = 5,
                                    RkuDistr = 6
                                }

                            }
                            },
                            new Product()
                        {
                            Name = "Гранд десерт",
                            Conditions = new List<ConditionKind>()
                            {
                                new ConditionKind()
                                {
                                    Name = "Объем",
                                    Retro = 5,
                                    RetroDistr = 10,
                                    Rku = 3,
                                    RkuDistr = 9
                                },
                                new ConditionKind()
                                {
                                    Name = "Передача данных",
                                    Retro = 2,
                                    RetroDistr = 7,
                                    Rku = 3,
                                    RkuDistr = 9
                                }
                            }
                            }
                    }
                },
                new Contract()
                {
                    ContractNumber = 102000,
                    Customer = "604588 - ИП Ласточкин",
                    CommercialNetwork = "Лютик",
                    Status = "Согласовано частично",
                    StartDate = new DateTime(2019,01,01),
                    EndDate = new DateTime(2019,12,31),
                    Products = new List<Product>()
                    {
                        new Product()
                        {
                            Name = "EPICA 130г.",
                            Conditions = new List<ConditionKind>()
                            {
                                new ConditionKind()
                                {
                                    Name = "Объем",
                                    Retro = 11,
                                    RetroDistr = 18,
                                    Rku = 6,
                                    RkuDistr = 7
                                },
                                new ConditionKind()
                                {
                                    Name = "Передача данных",
                                    Retro = 12,
                                    RetroDistr = 19,
                                    Rku = 9,
                                    RkuDistr = 10
                                }
                            }
                        },
                            new Product()
                        {
                            Name = "ALL",
                            Conditions = new List<ConditionKind>()
                            {
                                new ConditionKind()
                                {
                                    Name = "Объем",
                                    Retro = 100,
                                    RetroDistr = 155,
                                    Rku = 50,
                                    RkuDistr = 65
                                },
                                new ConditionKind()
                                {
                                    Name = "Передача данных",
                                    Retro = 105,
                                    RetroDistr = 159,
                                    Rku = 51,
                                    RkuDistr = 69
                                }

                            }
                            },
                            new Product()
                        {
                            Name = "Гранд десерт",
                            Conditions = new List<ConditionKind>()
                            {
                                new ConditionKind()
                                {
                                    Name = "Объем",
                                    Retro = 51,
                                    RetroDistr = 101,
                                    Rku = 31,
                                    RkuDistr = 91
                                },
                                new ConditionKind()
                                {
                                    Name = "Передача данных",
                                    Retro = 25,
                                    RetroDistr = 75,
                                    Rku = 35,
                                    RkuDistr = 95
                                }

                            }
                            }
                    }
                }
            };
            }
        }
    }
}
