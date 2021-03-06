﻿
namespace Kaminari_Wan_Taiko_Website.App_Code
{
    using System.Collections.Generic;
    using System.Data;
    using Npgsql;
    // using System.Linq;
    // using System.Web;

    
    public class KaminariDB
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
        /// This method reads photo names and decriptions from the KaminariWan.Website
        /// database for dynamically populating the photos.aspx page.
        /// </summary>
        /// <returns> List of structure PhotoStruct, containing photo names and descriptions. </returns>
        public static List<PhotoStruct> GetPictures()
        {
            
            using (NpgsqlConnection conn = Connect())
            {
                conn.Open();
                NpgsqlCommand command = new NpgsqlCommand("select id, name, description, alt from pictures order by id ASC;", conn);
                NpgsqlDataReader table = command.ExecuteReader();
                List<PhotoStruct> photos = new List<PhotoStruct>();
                foreach (IDataRecord row in table)
                {
                    PhotoStruct currentPhoto = new PhotoStruct();
                    currentPhoto.ID = (int)row["id"];
                    currentPhoto.Name = (string)row["name"];
                    currentPhoto.Descript = (string)row["description"];
                    currentPhoto.Alt = (string)row["alt"];
                    photos.Add(currentPhoto);
                }
                return photos;
            }
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
                Database = "KaminariWan.Website",
                IntegratedSecurity = true
            };

            NpgsqlConnection conn = new NpgsqlConnection(myBuilder);
            return conn;
        }
    }
}