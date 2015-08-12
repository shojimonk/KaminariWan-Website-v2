
namespace Kaminari_Wan_Taiko_Website.App_Code
{
    using System.Collections.Generic;
    using System.Data;
    using Npgsql;
    // using System.Linq;
    // using System.Web;

    
    public class LoginClass
    {
        /// <summary>
        /// This method reads users from database, looks for username match and checks
        /// if pass is correct for given username.
        /// </summary>
        /// <returns> Bool representing success or failure of user login</returns>
        public static bool Verify(string name, string pass)
        {
            using(NpgsqlConnection conn = Connect())
            {
                conn.Open();
                NpgsqlCommand command = new NpgsqlCommand("select name, pass from users order by id ASC", conn);
                NpgsqlDataReader table = command.ExecuteReader();

                List<Users> output = new List<Users>();
                foreach (IDataRecord row in table)
                {
                    if (name == (string)row["name"])
                    {
                        if(pass == (string)row["pass"])
                        {
                            // do something here to give authorization cookie?
                            // or if not here, then on client side?
                            return true;
                        }
                        else{
                            throw new System.ApplicationException("Name and pass do not match.");
                            // return false;
                        }
                    }
                }
            }
            return false;
        }

        /// <summary>
        /// builds connection to database and returns npgsql connection object
        /// </summary>
        /// <returns> Npgsql connection object</returns>
        private static NpgsqlConnection Connect()
        {
            NpgsqlConnectionStringBuilder myBuilder = new NpgsqlConnectionStringBuilder()
            {
                Host = "127.0.0.1",
                Port = 5432,
                Database = "DATABASE_NAME_HERE",
                IntegratedSecurity = true
            };

            NpgsqlConnection conn = new NpgsqlConnection(myBuilder);
            return conn;
        }
    }
}