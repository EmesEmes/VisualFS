using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;

namespace DATOS
{
    class Conexion
    {
        public string conec() 
        {
            return @"Data Source=DESKTOP-4LHEUHR\ANDRU;Initial Catalog=EmiEvent;Integrated Security=True";
        }
    }
}
