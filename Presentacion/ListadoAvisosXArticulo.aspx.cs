using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using EntidadesCompartidas;
using Logica;


namespace Presentacion
{
    public partial class ListadoAvisosXArticulo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                if (!IsPostBack)
                {
                    string codigo = "";

                    ddlArticulo.DataSource = LogicaArticulo.BuscarArticulo(codigo);
                    ddlArticulo.DataTextField = "codigo";
                    ddlArticulo.DataValueField = "numero_Interno";
                    ddlArticulo.DataBind();
                   
                }
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }

        }

        protected void ddlArticulo_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string codigo = ddlArticulo.SelectedValue;
                ddlArticulo.DataSource = Logica.LogicaDestacado.ListadoDestacado();
                GVAvisosXArticulo.DataSource = LogicaDestacado.ListadoDestacado();
                GVAvisosXArticulo.DataBind();
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }



        }

        protected void GVAvisosXArticulo_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {

                string codigo = GVAvisosXArticulo.SelectedRow.Cells[4].Text;
                List<Destacado> ListaAvisosXArticulo = new List<Destacado>();
                ListaAvisosXArticulo = Logica.LogicaArticulo.ListadoAvisosporArticulo(codigo);
                if (ListaAvisosXArticulo.Count > 0)
                {

                    GVAvisosXArticulo.DataSource = ListaAvisosXArticulo;
                    GVAvisosXArticulo.DataBind();
                    lblError.Text = " ";


                }
                else
                {
                    GVAvisosXArticulo.DataSource = null;
                    GVAvisosXArticulo.DataBind();
                    lblError.Text = "No hay Articulo para ese Aviso";

                }

            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }


        }
    }
}