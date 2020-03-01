using System;
using Xunit;
using csharp;
using System.Collections.Generic;

namespace GildedRoseStore.UnitTests
{
    public class Given_A_Gilded_Rose_Magic_Store
    {
        [Fact]
        public void When_1_Day_Has_Passed_The_Quality_Of_The_Items_Is_0_Or_More()
        {
            //ARRANGE
            List<Item> items = new List<Item>()
            {
                new Item()
                {
                    Name = "Foo",
                    Quality = 0,
                    SellIn = 0
                }
            };

            //ACT
            GildedRose gildedRose = new GildedRose(items);
            gildedRose.UpdateQuality();

            //ASSERT
            Assert.Equal(0, items[0].Quality);
        }

        [Fact]
        public void When_1_Day_Has_Passed_The_Quality_Of_The_Items_Decrease_1_Unit()
        {
            //ARRANGE
            List<Item> items = new List<Item>()
            {
                new Item()
                {
                    Name = "Foo",
                    Quality = 8,
                    SellIn = 35
                }
            };

            //ACT
            GildedRose gildedRose = new GildedRose(items);
            gildedRose.UpdateQuality();

            //ASSERT
            Assert.Equal(7, items[0].Quality);
        }

        [Fact]
        public void When_The_Expiration_Date_Has_Passed_The_Quality_Degrades_At_Twice_The_Speed()
        {
            //ARRANGE
            List<Item> items = new List<Item>()
            {
                new Item()
                {
                    Name = "Foo",
                    Quality = 10,
                    SellIn = 0
                }
            };

            //ACT
            GildedRose gildedRose = new GildedRose(items);
            gildedRose.UpdateQuality();

            //ASSERT
            Assert.Equal(8, items[0].Quality);
        }
    }
}
