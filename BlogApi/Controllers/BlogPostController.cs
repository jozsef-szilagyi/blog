using BlogApi.Models;
using BlogApi.Models.DTOs;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MySqlConnector;

namespace BlogApi.Controllers
{
    [Route("blogpost")]
    [ApiController]
    public class BlogPostController : ControllerBase
    {
        private readonly string ConnectionString = "server=localhost;database=blog;user=root;password=";

        [HttpGet("getAllBloggerPost")]
        public object GetAllBloggerAndPost([FromQuery] int id)
        {
            List<BlogAndPostDto> lista = new List<BlogAndPostDto>();

            var connector = new MySqlConnection(ConnectionString);

            connector.Open();

            string sql = @"SELECT blogger.name, blogpost.title, blogpost.content
                FROM blogger
                INNER JOIN blogpost ON blogger.id = blogpost.blogId
                WHERE blogger.id = @id";

            var cmd = new MySqlCommand(sql, connector);

            cmd.Parameters.AddWithValue("@id", id);
            var datareader = cmd.ExecuteReader();

            while (datareader.Read())
            {
                var blogandpost = new BlogAndPostDto
                {
                    Name = datareader.GetString(0),
                    Title = datareader.GetString(1),
                    Content = datareader.GetString(2)
                };
                lista.Add(blogandpost);
            }

            connector.Close();
            return new { message = "Sikeres lekérdezés.", result = lista };
        }

        [HttpGet]
        public object NumberOfPosts()
        {
            var connector = new MySqlConnection(ConnectionString);

            connector.Open();

            string sql = @"SELECT COUNT(*) FROM blogpost";
            var cmd = new MySqlCommand(sql, connector);
            var datareader = cmd.ExecuteReader();
            datareader.Read();

            var db = datareader.GetInt32(0);

            connector.Close();

            return new { message = "Sikeres lekérdezés.", result = db };

        }

        [HttpGet("getBloggerPostsNumber/{id}")]

        public object GetBloggerPostsNumber([FromRoute] int id)
        {
            var connector = new MySqlConnection(ConnectionString);

            connector.Open();

            string sql = @"SELECT blogger.name, COUNT(blogpost.id) AS `BejegyzesekSzama`
                            FROM `blogger` 
                            INNER JOIN blogpost ON blogger.id = blogpost.blogId
                            WHERE blogger.id = @id;";

            var cmd = new MySqlCommand(sql, connector);

            cmd.Parameters.AddWithValue("@id", id);
            var datareader = cmd.ExecuteReader();



            object result = null;
            if (datareader.Read() && datareader != null)
            {
                var bloggerPosts = new NumberOfBloggerPostDto
                {
                    Name = datareader.GetString(0),
                    Number = datareader.GetInt32(1),
                };
                return new { message = "Sikeres lekérdezés.", result = bloggerPosts };

            }
            else
            {
                return new { message = "Sikertelen lekérdezés.", result = "" };

            }

            connector.Close();
            return result;

        }

        [HttpPost("AddNewPost")]
        public object AddNewPost([FromBody] NewPostDto newPostDto)
        {
            var connector = new MySqlConnection(ConnectionString);

            connector.Open();

            string sql = @"INSERT INTO `blogpost`(`id`, `title`, `content`, `postTime`,`updateTime`, `blogId`) VALUES (@id,@title,@content,@PostTime,@updateTime,@blogId);";

            var cmd = new MySqlCommand(sql, connector);

            cmd.Parameters.AddWithValue("@id", newPostDto.Id);
            cmd.Parameters.AddWithValue("@title", newPostDto.Title);
            cmd.Parameters.AddWithValue("@content", newPostDto.Content);
            cmd.Parameters.AddWithValue("@PostTime", DateTime.Now);
            cmd.Parameters.AddWithValue("@updateTime", DateTime.Now);
            cmd.Parameters.AddWithValue("@blogId", newPostDto.BlogId);

            cmd.ExecuteNonQuery();

            connector.Close();

            return new { message = "Sikeres hozzáads", result = newPostDto };
        }

        [HttpPut("PostUpdate/{id}")]
        public object PostUpdate([FromRoute] int id, [FromBody] UpdatePostDto updatePostDto)
        {
            var connector = new MySqlConnection(ConnectionString);

            connector.Open();

            string sql = @"UPDATE `blogpost` SET `title`=@title,`content`=@content,`updateTime`=@updateTime WHERE `id` =@id;";

            var cmd = new MySqlCommand(sql, connector);

            cmd.Parameters.AddWithValue("@title", updatePostDto.Title);
            cmd.Parameters.AddWithValue("@content", updatePostDto.Content);
            cmd.Parameters.AddWithValue("@updateTime", DateTime.Now);
            cmd.Parameters.AddWithValue("@id", id);

            cmd.ExecuteNonQuery();
            connector.Close();

            return updatePostDto;




        }
        [HttpDelete("PostDelete")]
        public object PostDelete([FromQuery] int id)
        {
            var connector = new MySqlConnection(ConnectionString);

            connector.Open();

            string sql = @"DELETE FROM `blogpost` WHERE `id`=@id";
            var cmd = new MySqlCommand(sql, connector);

            cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();

            return new { message = "Sikeres törlés ha megfelelő id-t adtál meg" };

        }
    }
}
