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
                                txtDescripcion.Text,
                                txtFecha.Text,
                                txtHora.Text,
                                ddpRemu.Text,
                                ddpCapacitador.Text,
                                id="",
                                txtNombre.Text="",
                                txtDescripcion.Text="",
                                txtFecha.Text="",
                                txtHora.Text="",
                                ddpRemu.Text="",
                                ddpCapacitador.Text=""
                                };
                ce.SaveorUpdateEvento(dato);

            }
            catch (Exception ex)
            {

                ex.Message.ToString();
            }
            Response.Redirect("~/Views/Eventos.aspx");
        }

        protected void GVbtnEditar(object sender, EventArgs e)
        {
            btnGuardar.Text = "Actualizar";
            btnGuardar.CssClass = "btn btn-warning";
            int rowid = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            hiddenId.Value = GVEventos.Rows[rowid].Cells[0].Text;
            txtNombre.Text = GVEventos.Rows[rowid].Cells[1].Text;
            txtDescripcion.Text = GVEventos.Rows[rowid].Cells[2].Text;
            txtFecha.Text = GVEventos.Rows[rowid].Cells[3].Text;
            txtHora.Text = GVEventos.Rows[rowid].Cells[4].Text;
            ddpRemu.SelectedValue = GVEventos.Rows[rowid].Cells[5].Text;
            ddpCapacitador.SelectedValue = GVEventos.Rows[rowid].Cells[6].Text;
        }

        protected void GVbtnEliminar(object sender, EventArgs e)
        {
            int rowid = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            var id = GVEventos.Rows[rowid].Cells[0].Text;
            try
            {
                string[] dato = {
                                id,                               
                                id=""                                
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