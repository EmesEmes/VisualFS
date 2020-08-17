using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using DATOS;

namespace NEGOCIOS
{
    public class ManageConferencista
    {
        CrudConferencista crudcon = new CrudConferencista();

        public bool SaveorUpdateConferencista(string[] dato)
        {
            return crudcon.SaveorUpdateConferencista(dato);
        }

        public bool DeleteConferencista(string[] dato)
        {
            return crudcon.DeleteConferencista(dato);
        }
    }
}
