using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace HE130496_AnKDQ_PT1
{
    class DAO
    {
        static string strConnection = ConfigurationManager
                   .ConnectionStrings["ConnectionString"]
                   .ConnectionString;
        public static DataTable GetDataTable(string sql)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strConnection);

                SqlCommand cmd = new SqlCommand(sql);
                cmd.Connection = conn;

                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public static DataTable GetDataTable(SqlCommand cmd)
        {
            try
            {

                SqlConnection conn = new SqlConnection(strConnection);

                cmd.Connection = conn;

                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public static void UpdateTable(SqlCommand cmd)
        {
            try
            {

                SqlConnection conn = new SqlConnection(strConnection);

                cmd.Connection = conn;

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}
