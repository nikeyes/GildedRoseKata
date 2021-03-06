using GildedRoseKata.Api.Repository;
using Microsoft.AspNetCore.Mvc;

namespace GildedRoseKata.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class ItemController : ControllerBase
    {
        private readonly ItemRepository repository;
        public ItemController()
        {
            repository = ItemRepository.Instance;
        }

        [HttpGet]
        public ActionResult Get()
        {
            var items = repository.GetAll();
            return Ok(items);
        }

        [HttpGet("{name}")]
        public ActionResult GetByName(string name)
        {
            return BadRequest("Missing implementation");
        }
        

        [HttpPut]
        public ActionResult Put(){
            
            repository.UpdateQuality();
            return Ok("items updated");
        }
    }
}