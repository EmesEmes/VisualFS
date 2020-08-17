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
    public partial class Conferencistas : System.Web.UI.Page
    {
        ManageConferencista mc = new ManageConferencista();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GVbtnEditar_Click(object sender, EventArgs e)
        {
            btnGuardar.Text = "Actualizar";
            btnGuardar.CssClass = "btn btn-warning";
            int rowid = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            hiddenId.Value = CVConferencista.Rows[rowid].Cells[0].Text;
            txtNombre.Text = CVConferencista.Rows[rowid].Cells[1].Text;
            txtTipo.Text = CVConferencista.Rows[rowid].Cells[2].Text;
            txtReferencia.Text = CVConferencista.Rows[rowid].Cells[3].Text;
        }

        protected void GVbtnEliminar_Click(object sender, EventArgs e)
        {
            int rowid = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            var id = CVConferencista.Rows[rowid].Cells[0].Text;
            try
            {
                string[] dato = {
                                id,
                                id=""
                                };
                mc.DeleteConferencista(dato);

            }
            catch (Exception ex)
            {

                ex.Message.ToString();
            }
            Response.Redirect("~/Views/Conferencistas.aspx");
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
                                txtTipo.Text,
                                txtReferencia.Text,                                
                                id="",
                                txtNombre.Text="",
                                txtTipo.Text="",
                                txtReferencia.Text=""
                                };
                mc.SaveorUpdateConferencista(dato);

            }
            catch (Exception ex)
            {

                ex.Message.ToString();
            }
            Response.Redirect("~/Views/Conferencistas.aspx");
        }
    }
}