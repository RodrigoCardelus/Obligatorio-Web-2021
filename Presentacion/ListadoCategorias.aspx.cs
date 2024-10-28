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
    public partial class ListadoCategorias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                  
                    Session["Lista"] = Logica.LogicaCategoria.ListadoCategorias();
                    GVCategorias.DataSource = Session["Lista"];
                    GVCategorias.DataBind();

                }
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }

        }
 


        

        protected void GVCategorias_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {


                string codigo_Interno = GVCategorias.SelectedRow.Cells[1].Text;
                List<AvisoClasificado> listaAvisoClasificado = new List<AvisoClasificado>();
                listaAvisoClasificado = LogicaComun.ListadoAvisosPorCategoria(codigo_Interno);
                if (listaAvisoClasificado.Count > 0)
                {

                    GVAvisoClasificado.DataSource = listaAvisoClasificado;
                    GVAvisoClasificado.DataBind();
                    lblError.Text = " ";


                }
                else
                {
                    GVAvisoClasificado.DataSource = null;
                    GVAvisoClasificado.DataBind();
                    lblError.Text = "No hay Aviso Clasificado para esa Categoria";

                }

            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }

        }


        protected void GVAvisoClasificado_SelectedIndexChanged(object sender, EventArgs e)
        {
          


        }
    }
}