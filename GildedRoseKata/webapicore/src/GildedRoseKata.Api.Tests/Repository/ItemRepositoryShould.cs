using GildedRoseKata.Api.Model;
using GildedRoseKata.Api.Repository;
using System;
using System.Collections.Generic;
using Xunit;

namespace GildedRoseKata.Api.Tests.Repository
{
    public class ItemRepositoryShould
    {
        private ItemRepository itemRepository;
        private const int EXPECTED_ITEMS_COUNT = 2;
        private const string EXPECTED_NAME = "Aged Brie";
        private const string UNKNOW_ITEM = "Coca cola";
        private readonly IList<Item> context;
       
        public ItemRepositoryShould()
        {
            context = new List<Item>
            {
                new Item {Name = "+5 Dexterity Vest", SellIn = 10, Quality = 20},
                new Item {Name = "Aged Brie", SellIn = 2, Quality = 0},
            };
        }

        [Fact]
        public void Return_all_items()
        {
            // Arrange
            itemRepository = new ItemRepository(context);

            // Act
            var currentResult = itemRepository.GetAll();

            // Assert
            Assert.True(currentResult.Count == EXPECTED_ITEMS_COUNT);
        }

        [Fact]
        public void Return_correct_item_by_name()
        {
            // Arrange
            itemRepository = new ItemRepository(context);

            // Act
            var currentResult = itemRepository.GetByName(EXPECTED_NAME);

            // Assert
            Assert.True(currentResult.Name == EXPECTED_NAME);
        }

        [Fact]
        public void Return_null_if_item_does_not_exists()
        {
            // Arrange
            itemRepository = new ItemRepository(context);

            // Act
            var currentResult = itemRepository.GetByName(UNKNOW_ITEM);

            // Assert
            Assert.True(currentResult == null);
        }

        [Fact]
        public void Throw_if_name_is_empty()
        {
            var repository = new ItemRepository(context);
            Assert.Throws<ArgumentException>(() => repository.GetByName(string.Empty));
        }

        [Fact]
        public void Throw_if_name_is_null()
        {
            var repository = new ItemRepository(context);
            Assert.Throws<ArgumentException>(() => repository.GetByName(null));


        }
    }   
}
