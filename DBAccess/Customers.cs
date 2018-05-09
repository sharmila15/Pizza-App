using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBAccess
{
    public class Customers
    {
        public int Id { get; set; }
        public String FirstName { get; set; }
        public String LastName { get; set; }
        public String address { get; set; }
        public int PhoneNo { get; set; }


        public Customers()
        {

        }
        public int AddCustomer()
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("AddCust", conn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter IdParam = new SqlParameter();
                    IdParam.ParameterName = "@CustId";
                    IdParam.SqlDbType = SqlDbType.Int;
                    IdParam.Direction = ParameterDirection.Output;
                    IdParam.Size = 0;
                    IdParam.Value = this.Id;
                    cmd.Parameters.Add(IdParam);

                    SqlParameter fnParam = new SqlParameter();
                    IdParam.ParameterName = "@CustFName";
                    IdParam.SqlDbType = SqlDbType.VarChar;
                    IdParam.Direction = ParameterDirection.Input;
                    IdParam.Size = 50;
                    IdParam.Value = this.FirstName;
                    cmd.Parameters.Add(fnParam);

                    SqlParameter lnParam = new SqlParameter();
                    IdParam.ParameterName = "@CustomerLName";
                    IdParam.SqlDbType = SqlDbType.NVarChar;
                    IdParam.Direction = ParameterDirection.Input;
                    IdParam.Size = 50;
                    IdParam.Value = this.LastName;
                    cmd.Parameters.Add(lnParam);


                    SqlParameter AddressParam = new SqlParameter();
                    IdParam.ParameterName = "@Address";
                    IdParam.SqlDbType = SqlDbType.NVarChar;
                    IdParam.Direction = ParameterDirection.Input;
                    IdParam.Size = 50;
                    IdParam.Value = this.address;
                    cmd.Parameters.Add(AddressParam);

                    SqlParameter PhoneNoParam = new SqlParameter();
                    IdParam.ParameterName = "@PhoneNo";
                    IdParam.SqlDbType = SqlDbType.Int;
                    IdParam.Direction = ParameterDirection.Input;
                    IdParam.Size = 0;
                    IdParam.Value = this.PhoneNo;
                    cmd.Parameters.Add(PhoneNoParam);

                    
                    cmd.ExecuteNonQuery();

                    this.Id = Convert.ToInt32(IdParam.Value);

                }
                return this.Id;
            }
            catch
            {
                return -1;
            }
        }
    }


}
