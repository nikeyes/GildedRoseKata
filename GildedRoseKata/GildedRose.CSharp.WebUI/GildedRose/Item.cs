using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GildedRose.CSharp.WebUI.Views.Home
{
    public class Item
    {
        public string Name { get; set; }

        public int SellIn { get; set; }

        public int Quality { get; set; }

        public override String ToString()
        {
            return Name + "#" + SellIn + "#" + Quality;
        }
    }
}