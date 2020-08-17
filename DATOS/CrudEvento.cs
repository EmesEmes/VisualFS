using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;

namespace DATOS
{
    public class CrudEvento
    {
        Conexion con = new Conexion();
        public bool SaveorUpdateEvento(string[] dato)
        {
            int ok;
            try
            {
                SqlConnection conec = new SqlConnection(con.conec());
                conec.Open();
                SqlCommand cmd = new SqlCommand("spSaveorUpdateEvento", conec);                
                if (dato[0] != null)
                {
                    cmd.Parameters.Add("@id", SqlDbType.Int).Value = dato[0].ToString();
                }
                cmd.Parameters.Add("@Nombre", SqlDbType.VarChar,200).Value = dato[1].ToString();
                cmd.Parameters.Add("@Descripcion", SqlDbType.VarChar,200).Value = dato[2].ToString();
                cmd.Parameters.Add("@Fecha", SqlDbType.VarChar, 200).Value = dato[3].ToString();
                cmd.Parameters.Add("@Hora", SqlDbType.VarChar,200).Value = dato[4].ToString();
                cmd.Parameters.Add("@Remuneracion", SqlDbType.VarChar, 200).Value = dato[5].ToString();
                cmd.Parameters.Add("@Conferencista", SqlDbType.VarChar, 50).Value = dato[6].ToString();
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

        public bool DeleteEvento(string[] dato)
        {
            int ok;
            try
            {
                SqlConnection conec = new SqlConnection(con.conec());
                conec.Open();
                SqlCommand cmd = new SqlCommand("spDeleteEvento", conec);
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
