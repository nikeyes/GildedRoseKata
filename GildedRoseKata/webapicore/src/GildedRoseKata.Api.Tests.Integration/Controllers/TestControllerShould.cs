using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.TestHost;
using System.Net;
using System.Threading.Tasks;
using Xunit;

namespace GildedRoseKata.Api.Tests.Integration.Controllers
{
    public class TestControllerShould
    {
        private readonly TestServer testServer;
        private const HttpStatusCode EXPECTED_STATUS_CODE = HttpStatusCode.OK; 
        
        public TestControllerShould()
        {
            var builder = new WebHostBuilder()
                .UseEnvironment("Development")
                .UseStartup<Startup>();
            
            testServer = new TestServer(builder);
        }

        [Fact]
        public async Task Return_ok_result_when_calling_get()
        {
            // Arrange
            var httpClient = testServer.CreateClient();

            // Act
            var currentResult = await httpClient.GetAsync("/test");

            // Assert
            Assert.True(currentResult.StatusCode == EXPECTED_STATUS_CODE);
        }


    }
}
