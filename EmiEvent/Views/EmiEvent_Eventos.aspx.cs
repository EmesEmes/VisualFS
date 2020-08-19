using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using DATOS;
using NEGOCIOS;

namespace EmiEvent.Views
{
    public partial class EmiEvent_Eventos : System.Web.UI.Page
    {
        ManageParticipantes mp = new ManageParticipantes();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            try
            {
                var id = "";
                if (hiddenId.Value != "")
                {
                    id = hiddenId.Value;
                }
                else
                {
                    id = null;
                }

                string[] dato = {
                                id,
                                txtNombre.Text,
                                txtApellido.Text,
                                txtCedula.Text,
                                txtDireccion.Text,
                                txtTelefono.Text,
                                txtCorreo.Text,
                                ddlEvento.SelectedValue,
                                id="",
                                txtNombre.Text ="",
                                txtApellido.Text ="",
                                txtCedula.Text ="",
                                txtDireccion.Text ="",
                                txtTelefono.Text ="",
                                txtCorreo.Text ="",
                                ddlEvento.SelectedValue ="",
                                };
                mp.SaveorUpdateParticipante(dato);

            }
            catch (Exception ex)
            {

                ex.Message.ToString();
            }
            Response.Redirect("~/Views/EmiEvent_Eventos.aspx");
        }
    }
}