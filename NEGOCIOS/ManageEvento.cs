using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using DATOS;

namespace NEGOCIOS
{
    public class ManageEvento
    {
        CrudEvento crudeve = new CrudEvento();

        public bool SaveorUpdateEvento(string[] dato)
        {
            return crudeve.SaveorUpdateEvento(dato);
        }

        public bool DeleteEvento(string[] dato)
        {
            return crudeve.DeleteEvento(dato);
        }
    }
}
