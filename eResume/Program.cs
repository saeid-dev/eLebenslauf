using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using System.Data.SqlClient;


namespace eResume
{
    class Program
    {
        static void Main(string[] args)
        {
            using (var db = new SampleDBContainer())
            {
                var author = db.AuthorSet.Create();
                author.Name = "Saeid";
                author.Family = "Hajirahimi";
              

                db.AuthorSet.Add(author);
                db.SaveChanges();
            }
        }
    }
}
