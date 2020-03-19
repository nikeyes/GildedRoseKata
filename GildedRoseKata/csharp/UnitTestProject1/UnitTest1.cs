using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.IO;
using System.Text;
using ApprovalTests;
using ApprovalTests.Reporters;
using System.Collections.Generic;
using ApprovalTests.Combinations;

namespace csharp
{
    [UseReporter(typeof(DiffReporter))]
    [TestClass]
    public class ApprovalTest
    {
        [TestMethod]
        public void ThirtyDays()
        {
            CombinationApprovals.VerifyAllCombinations(DoUpdateQuality,
                new string[] { "foo", "Aged Brie", "Backstage passes to a TAFKAL80ETC concert", "Sulfuras, Hand of Ragnaros" },
                new int[] { -1, 0, 11 },
                new int[] { 0, 1, 49, 50 });


        }

        private String DoUpdateQuality(string name, int sellin, int quality)
        {
            Item item = new Item()
            {
                Name = name,
                Quality = quality,
                SellIn = sellin
            };

            List<Item> items = new List<Item>() { item };
            GildedRose gildedRose = new GildedRose(items);

            gildedRose.UpdateQuality();

            return item.ToString();
        }
    }
}