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
    public partial class Eventos : System.Web.UI.Page
    {
        ManageEvento ce = new ManageEvento();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                //var fec = "2020-08-08";
                string[] dato = {
                                txtNombre.Text,
                                txtDescripcion.Text,
                                txtFecha.Text,
                                txtHora.Text,
                                ddpRemu.Text,
                                txtNombre.Text="",
                                txtDescripcion.Text="",
                                txtFecha.Text="",
                                txtHora.Text="",
                                ddpRemu.Text=""
                                };
                ce.SaveorUpdateEvento(dato);

            }
            catch (Exception ex)
            {

                ex.Message.ToString();
            }
            Response.Redirect("~/Views/Eventos.aspx");
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                string[] dato = {
                                txtNombre.Text,
                                txtDescripcion.Text,
                                txtFecha.Text,
                                txtHora.Text,
                                ddpRemu.Text,
                                txtNombre.Text="",
                                txtDescripcion.Text="",
                                txtFecha.Text="",
                                txtHora.Text="",
                                ddpRemu.Text=""
                                };
                ce.DeleteEvento(dato);

            }
            catch (Exception ex)
            {

                ex.Message.ToString();
            }
            Response.Redirect("~/Views/Eventos.aspx");
        }
    }
}