using GildedRoseKata.Api.Model;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.TestHost;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Net;
using System.Threading.Tasks;
using Xunit;

namespace GildedRoseKata.Api.Tests.Integration.Controllers
{
    public class ItemControllerShould
    {
        private readonly TestServer testServer;
        private const HttpStatusCode EXPECTED_STATUS_CODE = HttpStatusCode.OK;
        private const int EXPECTED_ITEMS_COUNT = 9;

        public ItemControllerShould()
        {
            var builder = new WebHostBuilder()
                .UseEnvironment("Development")
                .UseStartup<Startup>();

            testServer = new TestServer(builder);
        }

        [Fact]
        public async Task Return_correct_elements_when_calling_get()
        {
            // Arrange
            var httpClient = testServer.CreateClient();

            // Act
            var currentResult = await httpClient.GetAsync("/item");
            var items = JsonConvert.DeserializeObject<IList<Item>>(await currentResult.Content.ReadAsStringAsync());

            // Assert 
            Assert.True(currentResult.StatusCode == EXPECTED_STATUS_CODE);
            Assert.True(items.Count == 0);
        }
    }
}
