using System;
using System.Collections.Generic;
using ApprovalTests;
using ApprovalTests.Combinations;
using ApprovalTests.Reporters;
using csharp;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace GildedRoseTests
{
    [UseReporter(typeof(DiffReporter))]
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            String[] name = { "foo", "Aged Brie", "Backstage passes to a TAFKAL80ETC concert" };
            int[] sellin = { 0 , -1, 5};
            int[] quality = { 0, 1, 2 };

            //string itemString = doUpdateQuality(name, sellin, quality);

            //Assert.AreEqual("foo", items[0].Name);

            //Approvals.Verify(itemString);
            CombinationApprovals.VerifyAllCombinations(doUpdateQuality,  name, sellin, quality);
        }

        private static string doUpdateQuality(string name, int sellin, int quality)
        {
            IList<Item> items = new List<Item> { new Item { Name = name, SellIn = sellin, Quality = quality } };
            GildedRose gildedRose = new GildedRose(items);

            gildedRose.UpdateQuality();

            String itemString = items[0].ToString();
            return itemString;
        }
    }
}
