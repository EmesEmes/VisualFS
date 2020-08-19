using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using DATOS;

namespace NEGOCIOS
{
    public class ManageParticipantes
    {
        CrudParticipantes crudpar = new CrudParticipantes();

        public bool SaveorUpdateParticipante(string[] dato)
        {
            return crudpar.SaveorUpdateParticipante(dato);
        }

        public bool DeleteParticipante(string[] dato)
        {
            return crudpar.DeleteParticipante(dato);
        }
    }
}
