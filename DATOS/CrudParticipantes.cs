using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;

namespace DATOS
{
    public class CrudParticipantes
    {
        Conexion con = new Conexion();
        public bool SaveorUpdateParticipante(string[] dato)
        {
            int ok;
            try
            {
                SqlConnection conec = new SqlConnection(con.conec());
                conec.Open();
                SqlCommand cmd = new SqlCommand("spSaveorUpdateParticipantes", conec);
                if (dato[0] != null)
                {
                    cmd.Parameters.Add("@id", SqlDbType.Int).Value = dato[0].ToString();
                }
                cmd.Parameters.Add("@Nombre", SqlDbType.VarChar, 200).Value = dato[1].ToString();
                cmd.Parameters.Add("@Apellido", SqlDbType.VarChar, 200).Value = dato[2].ToString();
                cmd.Parameters.Add("@Cedula", SqlDbType.VarChar, 200).Value = dato[3].ToString();
                cmd.Parameters.Add("@Direccion", SqlDbType.VarChar, 200).Value = dato[4].ToString();
                cmd.Parameters.Add("@Telefono", SqlDbType.VarChar, 200).Value = dato[5].ToString();
                cmd.Parameters.Add("@Correo", SqlDbType.VarChar, 50).Value = dato[6].ToString();
                cmd.Parameters.Add("@Evento", SqlDbType.VarChar, 50).Value = dato[7].ToString();
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

        public bool DeleteParticipante(string[] dato)
        {
            int ok;
            try
            {
                SqlConnection conec = new SqlConnection(con.conec());
                conec.Open();
                SqlCommand cmd = new SqlCommand("spDeleteParticipantes", conec);
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
