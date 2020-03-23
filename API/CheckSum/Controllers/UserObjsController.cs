using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using CheckSum.Models;

namespace CheckSum.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserObjsController : ControllerBase
    {
        private readonly UserContext _context;

        public UserObjsController(UserContext context)
        {
            _context = context;
        }

        // GET: api/UserObjs
        [HttpGet]
        public async Task<ActionResult<IEnumerable<UserObj>>> GetUserObj()
        {
            return await _context.UserObj.ToListAsync();
        }

        // GET: api/UserObjs/5
        [HttpGet("{id}")]
        public async Task<ActionResult<UserObj>> GetUserObj(string id)
        {
            var userObj = await _context.UserObj.FindAsync(id);

            if (userObj == null)
            {
                return NotFound();
            }

            return userObj;
        }

        // PUT: api/UserObjs/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see https://aka.ms/RazorPagesCRUD.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutUserObj(string id, UserObj userObj)
        {
            if (id != userObj.id)
            {
                return BadRequest();
            }

            _context.Entry(userObj).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!UserObjExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/UserObjs
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see https://aka.ms/RazorPagesCRUD.
        [HttpPost]
        public async Task<ActionResult<UserObj>> PostUserObj(UserObj userObj)
        {
            _context.UserObj.Add(userObj);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (UserObjExists(userObj.id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetUserObj", new { id = userObj.id }, userObj);
        }

        // DELETE: api/UserObjs/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<UserObj>> DeleteUserObj(string id)
        {
            var userObj = await _context.UserObj.FindAsync(id);
            if (userObj == null)
            {
                return NotFound();
            }

            _context.UserObj.Remove(userObj);
            await _context.SaveChangesAsync();

            return userObj;
        }

        private bool UserObjExists(string id)
        {
            return _context.UserObj.Any(e => e.id == id);
        }
    }
}
