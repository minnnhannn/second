using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace trading2018
{
    public class DB
    {
        private string _sql_local = WebConfigurationManager.AppSettings["local"];
        private string _sql_global = WebConfigurationManager.AppSettings["global"];

        private string _connectionString;
        public DB(string connection) { _connectionString = connection; }
        public DataTable ExecuteProc(string procName, List<SqlParameter> parameterList)
        {

            var table = new DataTable();
            try
            {
                var myConn = new SqlConnection(_connectionString);
                myConn.Open();
                var myCommand = new SqlCommand(procName, myConn);
                myCommand.CommandType = CommandType.StoredProcedure;

                if (parameterList != null)
                {
                    foreach (var param in parameterList)
                    {
                        myCommand.Parameters.Add(param);
                    }
                }

                var sqlDapter = new SqlDataAdapter(myCommand);
                var commandBuilder = new SqlCommandBuilder(sqlDapter);
                table.Locale = CultureInfo.InvariantCulture;
                sqlDapter.Fill(table);
            }
            catch (Exception ex)
            {
                throw new InvalidOperationException(ex.Message);
            }
            return table;
        }
    }
}