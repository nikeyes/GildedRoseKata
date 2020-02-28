using Microsoft.AspNetCore.Mvc;

namespace GildedRoseKata.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class TestController : ControllerBase
    {
        public TestController()
        {
            
        }

        [HttpGet]
        public ActionResult Get()
        {
           return Ok("Api up");
        }
    }
}
