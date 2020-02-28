using GildedRoseKata.Api.Repository;
using Xunit;

namespace GildedRoseKata.Api.Tests.Repository
{
    public class ItemRepositoryShould
    {
        private ItemRepository itemRepository;
        private const int EXPECTED_ITEMS_COUNT = 9;
       
        public ItemRepositoryShould()
        {
            
        }
        [Fact]
        public void Return_correct_items_count()
        {
            // Arrange
            itemRepository = ItemRepository.Instance;

            // Act
            var currentResult = itemRepository.GetAll();

            // Assert
            Assert.True(currentResult.Count == EXPECTED_ITEMS_COUNT);
        }

    }   
}
