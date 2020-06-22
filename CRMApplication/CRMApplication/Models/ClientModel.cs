using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using Dapper;

namespace CRMApplication.Models
{
    public class ClientModel
    {
        private static string ConnectionString = @"Data Source=DESKTOP-H5TO3G2\SQLEXPRESS;Initial Catalog=CRM;Integrated Security=True";
        public static void ExecuteWithoutReturn(string procedurename, DynamicParameters param = null)
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                con.Open();
                con.Execute(procedurename, param, commandType: CommandType.StoredProcedure);
            }
        }
        public static T ExecuteReturnScalar<T>(string procedurename, DynamicParameters param = null)
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                con.Open();
                return (T)Convert.ChangeType(con.ExecuteScalar(procedurename, param, commandType: CommandType.StoredProcedure), typeof(T));
            }
        }
        public static IEnumerable<T> ReturnList<T>(string procedurename, DynamicParameters param = null)
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                con.Open();
                return con.Query<T>(procedurename, param, commandType: CommandType.StoredProcedure);
            }
        }
        public DataTable getAllEmployee()
        {

            DataTable dt = new DataTable();
          
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Execute spGetClients", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
            }
            return dt;
            //throw new NotImplementedException();
        }
    }
}
