using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class ThaoTacCSDL
    {

        SqlConnection connect;
        SqlCommand cmd;
        SqlDataAdapter da;
        private void KetNoi()
        {
            connect = new SqlConnection(@"Data Source=DESKTOP-3N24II3\SQLEXPRESS2012;Initial Catalog=QLBANGIAY;Integrated Security=True");
            connect.Open();
        }
        private void NgatKetNoi()
        {
            connect.Close();
            connect.Dispose();
        }
        public DataTable HienThiDuLieu(string sp, string[] name, object[] value, int n)
        {
            KetNoi();
            cmd = new SqlCommand(sp, connect);
            cmd.CommandType = CommandType.StoredProcedure;

            for (int i = 0; i < n; i++)
                cmd.Parameters.AddWithValue(name[i], value[i]);

            da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public void HienDuLieu(string name, DataTable dt)
        {
            KetNoi();
            da = new SqlDataAdapter("SELECT * FROM " + name, connect);
            da.Fill(dt);
            NgatKetNoi();
        }

        public int ThucHien(string sp, string[] name, object[] value, int n)
        {
            KetNoi();
            cmd = new SqlCommand(sp, connect);
            cmd.CommandType = CommandType.StoredProcedure;
            for (int i = 0; i < n; i++)
                cmd.Parameters.AddWithValue(name[i], value[i]);
            return cmd.ExecuteNonQuery();
        }

    }
}
