using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TextEditWithDBCMS
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LiteralTextFromDatabase.Text = GetTextFromDataBase(1);
        }

        /// <summary>
        /// Connects to database and returns the text with id same as param
        /// </summary>
        /// <param name="id"></param>
        /// <returns>string</returns>
        private string GetTextFromDataBase(int id)
        {
            var connectionString = ConfigurationManager.ConnectionStrings["ConnAir"].ConnectionString;
            string fromDB = "";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT Text FROM WebText", conn);
                cmd.CommandType = CommandType.Text;

                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    fromDB = (string)reader["Text"];
                }
                reader.Close();
                conn.Close();
            }
            return fromDB;
        }
    }
}