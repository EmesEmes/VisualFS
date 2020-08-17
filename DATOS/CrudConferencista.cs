using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;

namespace DATOS
{
    public class CrudConferencista
    {
        Conexion con = new Conexion();
        public bool SaveorUpdateConferencista(string[] dato)
        {
            int ok;
            try
            {
                SqlConnection conec = new SqlConnection(con.conec());
                conec.Open();
                SqlCommand cmd = new SqlCommand("spSaveorUpdateConferencista", conec);
                if (dato[0] != null)
                {
                    cmd.Parameters.Add("@id", SqlDbType.Int).Value = dato[0].ToString();
                }
                cmd.Parameters.Add("@Nombre", SqlDbType.VarChar, 200).Value = dato[1].ToString();
                cmd.Parameters.Add("@Tipo", SqlDbType.VarChar, 200).Value = dato[2].ToString();
                cmd.Parameters.Add("@Referencia", SqlDbType.VarChar, 200).Value = dato[3].ToString();

                cmd.CommandType = CommandType.StoredProcedure;
                ok = cmd.ExecuteNonQuery();
                if (ok == 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                ex.Message.ToString();
                return false;
            }
        }

        public bool DeleteConferencista(string[] dato)
        {
            int ok;
            try
            {
                SqlConnection conec = new SqlConnection(con.conec());
                conec.Open();
                SqlCommand cmd = new SqlCommand("spDeleteConferencista", conec);
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = dato[0].ToString();
                cmd.CommandType = CommandType.StoredProcedure;
                ok = cmd.ExecuteNonQuery();
                if (ok == 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                ex.Message.ToString();
                return false;
            }
        }
    }
}
