using System;
using System.Collections.Generic;
using GildedRoseKata.Api.Model;

namespace GildedRoseKata.Api.Repository
{
    public class ItemRepository
    {
        private static Lazy<ItemRepository> instance = new Lazy<ItemRepository>(() => new ItemRepository());
        public static ItemRepository Instance { get { return instance.Value; } }       
        private readonly IList<Item> context;
        private ItemRepository()
        {
            context = new List<Item>{
                new Item {Name = "+5 Dexterity Vest", SellIn = 10, Quality = 20},
                new Item {Name = "Aged Brie", SellIn = 2, Quality = 0},
                new Item {Name = "Elixir of the Mongoose", SellIn = 5, Quality = 7},
                new Item {Name = "Sulfuras, Hand of Ragnaros", SellIn = 0, Quality = 80},
                new Item {Name = "Sulfuras, Hand of Ragnaros", SellIn = -1, Quality = 80},
                new Item
                {
                    Name = "Backstage passes to a TAFKAL80ETC concert",
                    SellIn = 15,
                    Quality = 20
                },
                new Item
                {
                    Name = "Backstage passes to a TAFKAL80ETC concert",
                    SellIn = 10,
                    Quality = 49
                },
                new Item
                {
                    Name = "Backstage passes to a TAFKAL80ETC concert",
                    SellIn = 5,
                    Quality = 49
                },
				// this conjured item does not work properly yet
				new Item {Name = "Conjured Mana Cake", SellIn = 3, Quality = 6}
            };
        }
        public IList<Item> GetAll(){
            return this.context;
        }
        public void UpdateQuality()
        {
            for (var i = 0; i < context.Count; i++)
            {
                if (context[i].Name != "Aged Brie" && context[i].Name != "Backstage passes to a TAFKAL80ETC concert")
                {
                    if (context[i].Quality > 0)
                    {
                        if (context[i].Name != "Sulfuras, Hand of Ragnaros")
                        {
                            context[i].Quality = context[i].Quality - 1;
                        }
                    }
                }
                else
                {
                    if (context[i].Quality < 50)
                    {
                        context[i].Quality = context[i].Quality + 1;

                        if (context[i].Name == "Backstage passes to a TAFKAL80ETC concert")
                        {
                            if (context[i].SellIn < 11)
                            {
                                if (context[i].Quality < 50)
                                {
                                    context[i].Quality = context[i].Quality + 1;
                                }
                            }

                            if (context[i].SellIn < 6)
                            {
                                if (context[i].Quality < 50)
                                {
                                    context[i].Quality = context[i].Quality + 1;
                                }
                            }
                        }
                    }
                }

                if (context[i].Name != "Sulfuras, Hand of Ragnaros")
                {
                    context[i].SellIn = context[i].SellIn - 1;
                }

                if (context[i].SellIn < 0)
                {
                    if (context[i].Name != "Aged Brie")
                    {
                        if (context[i].Name != "Backstage passes to a TAFKAL80ETC concert")
                        {
                            if (context[i].Quality > 0)
                            {
                                if (context[i].Name != "Sulfuras, Hand of Ragnaros")
                                {
                                    context[i].Quality = context[i].Quality - 1;
                                }
                            }
                        }
                        else
                        {
                            context[i].Quality = context[i].Quality - context[i].Quality;
                        }
                    }
                    else
                    {
                        if (context[i].Quality < 50)
                        {
                            context[i].Quality = context[i].Quality + 1;
                        }
                    }
                }
            }
        }
    }
}